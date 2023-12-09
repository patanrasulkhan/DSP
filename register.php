<?php
// create a new session, or resume the existing session
session_start();
// Connect to the database (replace with your database credentials)
$db = new mysqli("localhost", "root", "", "secure_db");

if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
}

// Handle registration form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = password_hash($_POST["password"], PASSWORD_BCRYPT);
    $role = $_POST["role"];

    // if username already exists, display error message
    $stmt = $db->prepare("SELECT * FROM users WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($result->num_rows > 0) {
        echo "Username already exists.";
        // redirect to login page
        header("Location: login.php");
    } 
    // Store username and hashed password in the database
    $stmt = $db->prepare("INSERT INTO users (username, password, role) VALUES (?, ?, ?)");
    $stmt->bind_param("sss", $username, $password, $role);

    if ($stmt->execute()) {
        echo "Registration successful.";
        // redirect to login page
        // store the user's role in the session
        $_SESSION["role"] = $role;
        $_SESSION["username"] = $username;
        header("Location: login.php");
    } else {
        echo "Registration failed.";
    }
    $stmt->close();
}

$db->close();
?>

<!DOCTYPE html>
<html>
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

    #groupH,
    #groupR {
        display: none;
    }
</style>

<head>
    <title>User Registration</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Add Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <!-- Add Custom CSS -->
    <link rel="stylesheet" href="styles.css">
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
    <h2>Register</h2>
    <form method="post" action="register.php" class="form" onsubmit="return validateForm()">
        <label for="username">Username:</label>
        <input type="text" name="username" required><br>
        <label for="password">Password:</label>
        <input type="password" name="password" required><br>
        <label for="role">Role:</label>
        <select name="role" required>
            <option value="group H">Group H</option>
            <option value="group B">Group B</option>
        </select><br>
        <input type="submit" value="Register">
    </form>
</body>
<script>
    function validateForm() {
        var x = document.forms["myForm"]["username"].value;
        if (x == "") {
            alert("Name must be filled out");
            return false;
        }
    }

    // onchange event handler for role dropdown
    function roleChanged() {
        var role = document.getElementById("role").value;
        var groupH = document.getElementById("groupH");
        var groupR = document.getElementById("groupR");

        if (role == "group H") {
            groupH.style.display = "block";
            groupR.style.display = "none";
        } else if (role == "group B") {
            groupH.style.display = "none";
            groupR.style.display = "block";
        } else {
            groupH.style.display = "none";
            groupR.style.display = "none";
        }
    }

    // onload event handler for role dropdown
    window.onload = roleChanged;
</script>
<!-- Bootstrap JavaScript -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</html>