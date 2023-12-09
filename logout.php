<?php
// Start or resume the existing session
session_start();

// Function to log the user out
function logout() {
    // Unset all session variables
    $_SESSION = array();

    // Destroy the session
    session_destroy();

    // Redirect to the login page or any other appropriate page
    header("Location: login.php");
    exit;
}

// Check if the user is already logged in
if (isset($_SESSION["username"])) {
    // Call the logout function
    logout();
} else {
    // If the user is not logged in, redirect them to the login page
    header("Location: login.php");
    exit;
}
?>
