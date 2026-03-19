<?php
include('connect.php'); // Include the database connection

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Prepare SQL query to select the user with the entered email
    $sql = "SELECT id, username, password FROM regist WHERE email = ?";

    // Prepare statement
    if ($stmt = $conn->prepare($sql)) {
        // Bind the parameter (s = string)
        $stmt->bind_param("s", $email);

        // Execute the query
        $stmt->execute();

        // Store result
        $stmt->store_result();

        // Check if user exists
        if ($stmt->num_rows > 0) {
            // Bind result variables
            $stmt->bind_result($id, $username, $hashed_password);

            // Fetch the result
            $stmt->fetch();

            // Verify password
            if (password_verify($password, $hashed_password)) {
                // Start session and log user in
                session_start();
                $_SESSION['user_id'] = $id;
                $_SESSION['username'] = $username;

                echo "Login successful! Welcome " . $username;
                // Redirect to user dashboard or home page
                header("Location: index.php");
                exit();
            } else {
                echo "Invalid credentials. Please try again.";
            }
        } else {
            echo "No account found with this email.";
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
