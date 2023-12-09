<?php
// Start or resume the existing session
session_start();

// Check if the user is authenticated and is in "Group H"
if (!isset($_SESSION["username"]) || $_SESSION["role"] !== "group H") {
    // Redirect unauthorized users to a different page or show an error message
    header("Location: unauthorized.php");
    exit;
}

// Include your database connection code here
// For example:
$db = new mysqli("localhost", "root", "", "secure_db");
// Ensure the database connection code is properly included

// Fetch user data from the database
if ($db) {
    $stmt = $db->prepare("SELECT * FROM healthcare_info");
    $stmt->execute();
    $result = $stmt->get_result();
    $stmt->close();
}

// Add a new record to the database
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Validate and sanitize user inputs
    $first_name = htmlspecialchars($_POST["first_name"]);
    $last_name = htmlspecialchars($_POST["last_name"]);
    $gender = htmlspecialchars($_POST["gender"]);
    $age = intval($_POST["age"]);
    $weight = floatval($_POST["weight"]);
    $height = floatval($_POST["height"]);
    $health_story = htmlspecialchars($_POST["health_story"]);

    // Prepare and execute the SQL statement to insert a new record
    $stmt = $db->prepare("INSERT INTO healthcare_info (first_name, last_name, gender, age, weight, height, health_story) VALUES (?, ?, ?, ?, ?, ?, ?)");
    
    // Check for errors in the prepared statement
    if ($stmt === false) {
        die('Error in preparing statement: ' . $db->error);
    }

    // Bind parameters with their respective types
    $stmt->bind_param("sssiidd", $first_name, $last_name, $gender, $age, $weight, $height, $health_story);
    
    // Execute the statement
    if ($stmt->execute()) {
        // Record added successfully
        header("Location: groupH.php"); // Redirect to the Group H page or wherever you want
        exit;
    } else {
        // Handle the error appropriately (e.g., display an error message)
        echo "Error adding record: " . $stmt->error;
    }

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

    <!-- for the form -->
    <style>
        form {
            margin: 1rem 0;
            padding: 1rem;
            border: 1px solid #ccc;
        }

        label {
            display: inline-block;
            width: 10rem;
            margin-bottom: 0.5rem;
        }

        input,
        textarea,
        select {
            font: inherit;
            padding: 0.25rem;
            border-radius: 0.25rem;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            padding: 0.5rem 1rem;
            border-radius: 0.25rem;
            border: none;
            background: #ccc;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background: #aaa;
        }
    </style>
</head>

<body>
    <!-- Bootstrap Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="index.php">Secure Database</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.php">Home</a>
                </li>
                <!-- if not logged in, show register and login links -->
                <?php if (!isset($_SESSION["username"])): ?>
                    <li class="nav-item">
                        <a class="nav-link" href="register.php">Register</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.php">Login</a>
                    </li>
                <?php endif; ?>
                <?php if (isset($_SESSION["username"])): ?>
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

    <!-- Display the user's data in a table -->
    <?php if ($result->num_rows > 0): ?>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Gender</th>
                    <th>Age</th>
                    <!-- Add other table headers for fields -->
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $result->fetch_assoc()): ?>
                    <tr>
                        <td>
                            <?php echo $row['id']; ?>
                        </td>
                        <td>
                            <?php echo $row['first_name']; ?>
                        </td>
                        <td>
                            <?php echo $row['last_name']; ?>
                        </td>
                        <td>
                            <?php echo $row['gender']; ?>
                        </td>
                        <td>
                            <?php echo $row['age']; ?>
                        </td>
                        <!-- Add other table cells for fields -->
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    <?php else: ?>
        <p>No data found.</p>
    <?php endif; ?>
    <!--  add a new record form -->
    <h2>Healthcare Info Form</h2>

    <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
        <label for="first_name">First Name:</label>
        <input type="text" name="first_name" id="first_name" required>

        <!-- Last Name -->
        <label for="last_name">Last Name:</label>
        <input type="text" name="last_name" id="last_name" required>

        <!-- Gender -->
        <label for="gender">Gender:</label>
        <select name="gender" id="gender" required>
            <option value="male">Male</option>
            <option value="female">Female</option>
        </select>

        <!-- Age -->
        <label for="age">Age:</label>
        <input type="number" name="age" id="age" required>

        <!-- Weight -->
        <label for="weight">Weight (kg):</label>
        <input type="number" name="weight" id="weight" step="0.1" required>

        <!-- Height -->
        <label for="height">Height (cm):</label>
        <input type="number" name="height" id="height" step="0.1" required>

        <!-- Health Story -->
        <label for="health_story">Health Story:</label>
        <textarea name="health_story" id="health_story" rows="4" required></textarea>

        <!-- Submit Button -->
        <button type="submit">Submit</button>
    </form>


</body>

</html>