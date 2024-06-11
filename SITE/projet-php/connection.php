<?php
session_start(); 


if(isset($_SESSION['saved_prenom'])) {
    unset($_SESSION['saved_prenom']);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Connexion</title>
    <link rel="stylesheet" href="css/connection.css">
</head>
<body>
    <header></header>
    <div class="logo">
        <img src="images/logo.jpg" alt="Logo" width="150" height="150">
    </div>

    <div class="connection">
        <ul>
            <form method="post" action="login.php">
                <li><input type="text" name="prenom" placeholder="Identifiant" value="<?php echo isset($_SESSION['saved_prenom']) ? $_SESSION['saved_prenom'] : ''; ?>" required></li>
                <li><input type="password" name="mdp" placeholder="Mot de passe" required></li>
                <li><button type="submit">Connexion</button></li>
            </form>
            <div id="google">
                <li><img src="images/logo_google.png" alt="Logo Google" width="40" height="40">Se connecter avec Google</li>
            </div>
        </ul>
    </div>
</body>
</html>
