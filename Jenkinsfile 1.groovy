node{
def mavenHome = tool name: 'maven3.9.6'
 stage('1. cloneCode'){
  git branch: 'main', credentialsId: 'gitJenkinsCred', url: 'https://github.com/ayafor-code/javaWebApp.git'
 }
 stage('2. mavenBuild') {
  //sh /var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/maven3.9.6/bin/mvn package
  sh "${mavenHome}/bin/mvn package"
}
 stage('3. codeQualityAnalysis'){
  sh "${mavenHome}/bin/mvn sonar:sonar"
  //edit the pom.xml file with SonarQube server credentils(propertiesTAG)
}
 stage('4. uploadArtifacts'){
  sh "${mavenHome}/bin/mvn deploy"
  //modify the distributionManagement tag in pom.xml
} 
 stage('5. deployToUAT'){
  deploy adapters: [tomcat9(credentialsId: 'tomcatUATPipeline', path: '', url: 'http://3.128.168.57:8080/')], contextPath: null, war: 'target/*war'
 }
 stage('6. manualApproval'){
  sh "echo 'Please review and give us feedback' "
  timeout(time: 360 , unit: 'MINUTES')
  {
    input message: 'Application Ready for Deployment, please review'
  }
 }
 stage('7. deployToprod'){
  deploy adapters: [tomcat9(credentialsId: 'tomcatProdPipeline', path: '', url: 'http://3.12.107.38:8080/')], contextPath: null, war: 'target/*war'
 }
 stage('8. notification'){
  slackSend channel: 'devops101', message: 'LINKTOURS DEPLOYMENT SUCCESSFUL. CONGRATS!!!'
 }
}

