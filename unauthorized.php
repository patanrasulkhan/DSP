<!DOCTYPE html>
<html>

<head>
    <title>Unauthorized Access</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Add Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <!-- Add Custom CSS -->
    <link rel="stylesheet" href="styles.css">
</head>

<body>
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
    <h1>Unauthorized Access</h1>
    <p>You do not have permission to access this page.</p>
    <a href="login.php">Login</a> | <a href="index.php">Home</a>
    <!-- Include additional links or content as needed -->
</body>

</html>