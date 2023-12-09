<?php
// Start or resume the existing session
session_start();

// if user is already logged in, redirect to appropriate page
if (isset($_SESSION["username"])) {
    if ($_SESSION["role"] == "group H") {
        header("Location: groupH.php");
    } elseif ($_SESSION["role"] == "group B") {
        header("Location: groupR.php");
    }
}

// Connect to the database (replace with your database credentials)
$db = new mysqli("localhost", "root", "", "secure_db");

if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
}

// Handle login form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    // Retrieve the hashed password and role from the database
    $stmt = $db->prepare("SELECT password, role FROM users WHERE username = ?");
    $stmt->bind_param("s", $username);

    if ($stmt->execute()) {
        $stmt->bind_result($hashedPassword, $role);
        $stmt->fetch();

        if (password_verify($password, $hashedPassword)) {
            // Store user's role and username in the session
            $_SESSION["role"] = $role;
            $_SESSION["username"] = $username;
            echo "Login successful.";
            // Redirect to the appropriate page based on the user's role
            if ($role == "group H") {
                header("Location: groupH.php");
            } elseif ($role == "group B") {
                header("Location: groupR.php");
            }
        } else {
            echo "Login failed.";
        }
    } else {
        echo "Login failed.";
    }

    $stmt->close();
}

$db->close();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Add Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <!-- Add Custom CSS -->
    <link rel="stylesheet" href="styles.css">

    <style>
        form {
            width: 50%;
            margin: 0 auto;
        }

        form label {
            display: inline-block;
            width: 100px;
        }

        form input[type="text"],
        form input[type="password"] {
            width: 200px;
        }

        form input[type="submit"] {
            margin-left: 105px;
        }
    </style>
</head>
<body>
    <!-- Bootstrap Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="index.php">Secure Database</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.php">Home</a>
                </li>
                <!-- if not logged in, show register and login links -->
                <?php if (!isset($_SESSION["username"])) : ?>
                    <li class="nav-item">
                        <a class="nav-link" href="register.php">Register</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.php">Login</a>
                    </li>
                <?php endif; ?>
                <?php if (isset($_SESSION["username"])) : ?>
                    <li class="nav-item">
                        <a class="nav-link" href="groupH.php">Group H</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="groupR.php">Group B</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout.php">Logout</a>
                    </li>
                <?php endif; ?>
            </ul>
        </div>
    </nav>  
    <h2>Login</h2>
    <form method="post" action="login.php" class="form" onsubmit="return validateForm()">
        <label for="username">Username:</label>
        <input type="text" name="username" required><br>
        <label for="password">Password:</label>
        <input type="password" name="password" required><br>
        <input type="submit" value="Login">
    </form>
    <script>
        function validateForm() {
            var username = document.forms[0]["username"].value;
            var password = document.forms[0]["password"].value;

            if (username == "" || password == "") {
                alert("Please fill in all fields.");
                return false;
            }
        }
    </script>
    <!-- Bootstrap JavaScript -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
