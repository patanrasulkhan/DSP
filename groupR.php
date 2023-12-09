<?php
// Start or resume the existing session
session_start();

// Check if the user is authenticated and is in "Group H"
if (!isset($_SESSION["username"]) || $_SESSION["role"] !== "group B") {
    // Redirect unauthorized users to a different page or show an error message
    header("Location: unauthorized.php");
    exit;
}

// Include your database connection code here
// For example:
$db = new mysqli("localhost", "root", "", "secure_db");
// Ensure the database connection code is properly included

// Fetch user data from the database while excluding "first name" and "last name"
if ($db) {
    $stmt = $db->prepare("SELECT id, gender, age FROM healthcare_info");
    $stmt->execute();
    $result = $stmt->get_result();
    $stmt->close();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Group H Page</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Add Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <!-- Add Custom CSS -->
    <link rel="stylesheet" href="styles.css">
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th,
        td {
            padding: 0.5rem;
            text-align: left;
            border: 1px solid #ccc;
        }

        th {
            background: #eee;
        }
    </style>
</head>
<body>
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
    <h1>Welcome to Group H</h1>
    <!-- Add content and functionality specific to "Group H" here -->
    <p>This page is accessible to Group H members and has access to all fields.</p>
    <!-- Display the user's data in a table, excluding "first name" and "last name" -->
    <?php if ($result->num_rows > 0) : ?>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Gender</th>
                    <th>Age</th>
                    <!-- Add other table headers for fields as needed -->
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $result->fetch_assoc()) : ?>
                    <tr>
                        <td><?php echo $row['id']; ?></td>
                        <td><?php echo $row['gender']; ?></td>
                        <td><?php echo $row['age']; ?></td>
                        <!-- Add other table cells for fields as needed -->
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    <?php else : ?>
        <p>No data found.</p>
    <?php endif; ?>
</body>
</html>
