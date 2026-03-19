<?php
include('connect.php'); // Include the database connection

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Hash the password before storing it
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Prepare SQL query to insert user data into the users table
    $sql = "INSERT INTO regist (username, email, password) VALUES (?, ?, ?)";

    // Prepare statement
    if ($stmt = $conn->prepare($sql)) {
        // Bind parameters (s = string, s = string, s = string)
        $stmt->bind_param("sss", $username, $email, $hashed_password);

        // Execute the query
        if ($stmt->execute()) {
            echo "Account created successfully. You can <a href='login.php'>login</a> now.";
        } else {
            echo "Error: " . $stmt->error;
        }

        // Close statement
        $stmt->close();
    } else {
        echo "Error preparing statement: " . $conn->error;
    }

    // Close connection
    $conn->close();
}
?>
