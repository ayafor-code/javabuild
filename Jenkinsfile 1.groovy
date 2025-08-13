node {
    def mavenHome = tool name: 'maven3.9.11'
    stage('1. stage1-Git') {
        git url: 'https://github.com/ayafor-code/javabuild.git', branch: 'main'
    }

    stage('2. Build-Maven') {
        sh "/var/jenkins_home/tools/hudson.tasks.Maven_MavenInstallation/maven3.9.11/bin/mvn package"
    }
    stage('3. Code Quality - SonarQube') {
        sh "${mavenHome}/bin/mvn sonar:sonar"
}
    }
    stage('4. Code Quality - SonarQube') {
        sh "${mavenHome}/bin/mvn deploy"
}

}
