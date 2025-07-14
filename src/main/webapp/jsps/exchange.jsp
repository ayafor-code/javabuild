<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MoneyLink - Exchange</title>
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
        .exchange-container {
            background-color: #ffffff; /* White background for the content */
            padding: 30px;
            border-radius: 12px; /* More rounded corners */
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); /* Soft shadow */
            max-width: 700px; /* Max width for the content */
            width: 90%; /* Responsive width */
            margin: 40px auto; /* Center the container with vertical margin */
            text-align: center;
            flex-grow: 1; /* Allow container to grow and push footer down */
        }
        .exchange-container h2 {
            color: #0070ba; /* PayPal blue for heading */
            margin-bottom: 25px;
            font-size: 2rem; /* Larger heading */
            font-weight: bold;
        }
        .exchange-form {
            display: grid;
            grid-template-columns: 1fr;
            gap: 20px;
            margin-bottom: 30px;
        }
        @media (min-width: 640px) { /* Tailwind's sm breakpoint */
            .exchange-form {
                grid-template-columns: 1fr 1fr;
            }
        }
        .form-group {
            text-align: left;
        }
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }
        .form-group input[type="number"],
        .form-group select {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 1rem;
            transition: border-color 0.3s ease;
        }
        .form-group input[type="number"]:focus,
        .form-group select:focus {
            border-color: #0070ba;
            outline: none;
        }
        .exchange-button {
            background-color: #0070ba;
            color: white;
            padding: 14px 25px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 1.1rem;
            font-weight: bold;
            width: 100%;
            transition: background-color 0.3s ease, transform 0.2s ease;
            grid-column: 1 / -1; /* Span across all columns in grid */
            margin-top: 10px;
        }
        .exchange-button:hover {
            background-color: #005ea6;
            transform: translateY(-2px);
        }
        .external-link-section {
            margin-top: 30px;
            padding-top: 20px;
            border-top: 1px solid #eee;
        }
        .external-link-section p {
            font-size: 1.1rem;
            color: #666;
            margin-bottom: 15px;
        }
        .external-link-section a {
            display: inline-block;
            background-color: #28a745; /* Green for external link button */
            color: white;
            padding: 12px 25px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        .external-link-section a:hover {
            background-color: #218838;
            transform: translateY(-2px);
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
        <a href="wallets.jsp">Wallets</a>
        <a href="exchange.jsp">Exchange</a> <%-- Added Exchange link --%>
    </div>

    <!-- Main Exchange Content -->
    <div class="exchange-container">
        <h2>Currency Exchange</h2>

        <form action="exchange_process.jsp" method="post" class="exchange-form">
            <div class="form-group">
                <label for="amount">Amount to Exchange:</label>
                <input type="number" id="amount" name="amount" step="0.01" min="0" required>
            </div>
            <div class="form-group">
                <label for="fromCurrency">From Currency:</label>
                <select id="fromCurrency" name="fromCurrency" required>
                    <option value="USD">USD - US Dollar</option>
                    <option value="EUR">EUR - Euro</option>
                    <option value="GBP">GBP - British Pound</option>
                    <option value="XAF">XAF - Central African CFA franc</option>
                    <option value="NGN">NGN - Nigerian Naira</option>
                    <!-- Add more currencies as needed -->
                </select>
            </div>
            <div class="form-group">
                <label for="toCurrency">To Currency:</label>
                <select id="toCurrency" name="toCurrency" required>
                    <option value="EUR">EUR - Euro</option>
                    <option value="USD">USD - US Dollar</option>
                    <option value="GBP">GBP - British Pound</option>
                    <option value="XAF">XAF - Central African CFA franc</option>
                    <option value="NGN">NGN - Nigerian Naira</option>
                    <!-- Add more currencies as needed -->
                </select>
            </div>
            <div class="form-group">
                <label for="exchangeRate">Current Exchange Rate (Approx.):</label>
                <input type="text" id="exchangeRate" name="exchangeRate" value="1 USD = 0.92 EUR" readonly>
                <small class="text-gray-500">Rates are indicative and subject to change.</small>
            </div>
            <button type="submit" class="exchange-button">Get Conversion</button>
        </form>

        <div class="external-link-section">
            <p>For the most up-to-date and comprehensive exchange rates, visit our trusted partner:</p>
            <a href="https://www.xe.com" target="_blank" rel="noopener noreferrer">
                Visit XE.com for Live Rates
            </a>
        </div>

    </div>

    <!-- Footer Section -->
    <div class="footer">
        <p>TechLink Academy - Consultant, Training and Software Development</p>
        <p><small>Copyrights 2025 by <a href="https://zenith-africa.com/">TechLink Academy</a></small></p>
    </div>

</body>
</html>
