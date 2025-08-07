<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MoneyLink - Home Page</title>
<link href="images/techlink.jpg" rel="icon">
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        color: #333;
    }
    .header {
        background-color: #0070ba; /* PayPal blue */
        color: white;
        padding: 10px 0;
        text-align: center;
    }
    .header img {
        height: 40px; /* Adjust as needed for logo */
        vertical-align: middle;
    }
    .nav {
        display: flex;
        justify-content: center;
        background-color: #005ea6; /* Darker PayPal blue */
        padding: 10px 0;
    }
    .nav a {
        color: white;
        text-decoration: none;
        padding: 0 15px;
        font-weight: bold;
    }
    .nav a:hover {
        text-decoration: underline;
    }
    .container {
        padding: 20px;
        text-align: center;
    }
    .hero-image {
        margin: 40px 0;
    }
    .hero-image img {
        max-width: 80%;
        height: auto;
        border: 2px solid #ddd;
        border-radius: 8px;
    }
    .footer {
        background-color: #f5f5f5;
        padding: 20px;
        text-align: center;
        border-top: 1px solid #eee;
        margin-top: 30px;
    }
    .footer a {
        color: #0070ba;
        text-decoration: none;
    }
</style>
</head>
<body>

<div class="header">
    <img src="images/moneyLink.png" alt="MoneyLink">
</div>

<div class="nav">
    <a href="/login.jsp">Login</a>
    <a href="/signup.jsp">Signup</a>
    <a href="/exchange.jsp">Exchange</a>
</div>

<div class="container">
    <h1 align="center">Welcome to MoneyLink Web Dashboard.</h1>
    <h2 align="center">We deliver innovative, high-quality software solutions that empower financial ecosystems across the globe.
      Our mission is to cultivate a new generation of elite IT professionals—visionary leaders destined to become billionaires—who are driving digital transformation in every corner of the world.
        <br>We offer expert-led training programs in DevOps, featuring Linux, Kubernetes, AI, and Cloud technologies.
      Our goal is to equip IT engineers with cutting-edge skills and tools for peak performance in today's dynamic digital landscape.
.
        <br>TechLink - Your Link To A Bold New World of Technology.
        <br>Our Next Session will start on August 1st, 2025.
        <br>We encourage you to extend this opportunity by inviting your friends and professional contacts to participate in this transformative program..
    </h2>
    <hr>
    <h1 align="center">Demo Project Sample (07/08/2025)</h1>

    <div class="hero-image">
        <img src="images/moneyLink.png" alt="MoneyLink">
    </div>

    <h1><h3> Server Side IP Address </h3><br>
    <%
    String ip = "";
    InetAddress inetAddress = InetAddress.getLocalHost();
    ip = inetAddress.getHostAddress();
    out.println("Server Host Name :: "+inetAddress.getHostName());
    %>
    <br>
    <%out.println("Server IP Address :: "+ip);%>
    </h1>

    <hr>
    <div style="text-align: center;">
        <span>
            <img src="images/techlink.jpg" alt="" width="150">
        </span>
        <span style="font-weight: bold;">
            TechLink Academy,
            Douala, Cameroon
            +237 674 040 761,
            info@zenith-africa.net
            <br>
            <a href="mailto:info@zenith-africa.com">Mail to TechLinkLink Academy</a>
        </span>
    </div>
    <hr>
    <p> Service : <a href="services/employee/getEmployeeDetails">Get Employee Details </a></p>
    <hr>
</div>

<div class="footer">
    <p> TechLink Academy - Consultant, Training and Software Development</p>
    <p><small>Copyrights 2025 by <a href="https://zenith-africa.com/">TechLink Academy</a> </small></p>
</div>

</body>
</html>



