<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MoneyLink - Signup</title>
    <link href="images/techlink.jpg" rel="icon">
    <!-- Tailwind CSS CDN for modern styling -->
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Custom styles to match MoneyLink theme */
        body {
            font-family: 'Inter', sans-serif; /* Using Inter font as per instructions */
            background-color: #f0f2f5; /* Light grey background for the page */
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh; /* Ensure full viewport height */
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
            flex-wrap: wrap; /* Allow navigation items to wrap on smaller screens */
        }
        .nav a {
            color: white;
            text-decoration: none;
            padding: 8px 15px; /* Adjusted padding for better touch targets */
            font-weight: bold;
            border-radius: 8px; /* Rounded corners for nav links */
            transition: background-color 0.3s ease; /* Smooth hover effect */
        }
        .nav a:hover {
            background-color: #004a8c; /* Slightly darker on hover */
            text-decoration: none; /* Remove underline on hover for cleaner look */
        }
        .signup-container {
            background-color: #ffffff; /* White background for the form */
            padding: 30px;
            border-radius: 12px; /* More rounded corners */
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); /* Soft shadow */
            max-width: 450px; /* Max width for the form */
            width: 90%; /* Responsive width */
            margin: 40px auto; /* Center the container with vertical margin */
            text-align: center;
        }
        .signup-container h2 {
            color: #0070ba; /* PayPal blue for heading */
            margin-bottom: 25px;
            font-size: 1.8rem; /* Larger heading */
        }
        .form-group {
            margin-bottom: 20px;
            text-align: left; /* Align labels to the left */
        }
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }
        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group input[type="password"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 8px; /* Rounded input fields */
            box-sizing: border-box; /* Include padding in width */
            font-size: 1rem;
            transition: border-color 0.3s ease;
        }
        .form-group input[type="text"]:focus,
        .form-group input[type="email"]:focus,
        .form-group input[type="password"]:focus {
            border-color: #0070ba; /* Highlight on focus */
            outline: none;
        }
        .signup-button {
            background-color: #0070ba; /* PayPal blue button */
            color: white;
            padding: 14px 25px;
            border: none;
            border-radius: 8px; /* Rounded button */
            cursor: pointer;
            font-size: 1.1rem;
            font-weight: bold;
            width: 100%; /* Full width button */
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        .signup-button:hover {
            background-color: #005ea6; /* Darker on hover */
            transform: translateY(-2px); /* Slight lift effect */
        }
        .footer {
            background-color: #f5f5f5;
            padding: 20px;
            text-align: center;
            border-top: 1px solid #eee;
            margin-top: auto; /* Push footer to the bottom */
        }
        .footer a {
            color: #0070ba;
            text-decoration: none;
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <div class="header">
        <img src="images/moneyLink.png" alt="MoneyLink">
    </div>

    <!-- Navigation Bar -->
    <div class="nav">
        <a href="login.jsp">Login</a>
        <a href="signup.jsp">Signup</a>
        <a href="accountdetails.jsp">Account Details</a>
    </div>

    <!-- Main Signup Content -->
    <div class="signup-container">
        <h2>Create Your MoneyLink Account</h2>
        <!-- The form action should point to your backend processing JSP or servlet -->
        <form action="signup_process.jsp" method="post">
            <div class="form-group">
                <label for="fullName">Full Name:</label>
                <input type="text" id="fullName" name="fullName" required>
            </div>
            <div class="form-group">
                <label for="email">Email Address:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="username">Choose a Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="confirmPassword">Confirm Password:</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>
            </div>
            <button type="submit" class="signup-button">Sign Up</button>
        </form>
        <p class="mt-5 text-sm text-gray-600">
            Already have an account? <a href="login.jsp" class="text-blue-600 hover:underline font-bold">Log In Here</a>
        </p>
    </div>

    <!-- Footer Section -->
    <div class="footer">
        <p>TechLink Academy - Consultant, Training and Software Development</p>
        <p><small>Copyrights 2025 by <a href="https://zenith-africa.com/">TechLink Academy</a></small></p>
    </div>

</body>
</html>
