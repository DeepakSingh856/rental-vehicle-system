<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 400px;
            margin: 100px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        .logo {
            text-align: center;
            margin-bottom: 20px;
        }
        .logo img {
            width: 80px;
            height: 80px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            font-size: 14px;
            font-weight: bold;
            color: #333;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .form-group input:focus {
            border-color: #007BFF;
            outline: none;
        }
        .form-group button {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .form-group button:hover {
            background-color: #0056b3;
        }
        .forgot-password {
            text-align: center;
            margin-top: 10px;
        }
        .forgot-password a {
            text-decoration: none;
            color: #007BFF;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="logo">
            <img src="images/logo.png" alt="Logo">
        </div>
        <h2 style="text-align: center;">Login</h2>
        <form action="login-process.php" method="POST" onsubmit="return validateLoginForm()">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
            </div>
            <div class="form-group">
                <button type="submit">Login</button>
            </div>
        </form>
        <div class="forgot-password">
            <a href="#">Forgot Password?</a>
        </div>
        <div class="signup-link">
            <p>Don't have an account? <a href="signup.php">Sign Up</a></p>
        </div>
    </div>
    <script>
        // JavaScript function to validate form inputs
        function validateLoginForm() {
            var email = document.getElementById('email').value;
            var password = document.getElementById('password').value;

            // Check if email is empty
            if (email === "") {
                alert("Please enter your email.");
                return false;
            }

            // Check if email format is valid
            var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            // Check if password is empty
            
            if (password === "") {
        alert("Please enter your password.");
        return false;
    }

    // Check if password is at least 8 characters long
    if (password.length < 8) {
        alert("Password must be at least 8 characters long.");
        return false;
    }
            // If all validations pass, submit the form
            return true;
        }
    </script>
</body>
</html>
