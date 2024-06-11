<?php
session_start();
include 'connexion_bd.php'; 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $prenom = $_POST['prenom'];
    $mdp = $_POST['mdp'];

    $stmt = $conn->prepare("SELECT * FROM membres WHERE prenom = :prenom AND mdp = :mdp");
    $stmt->bindParam(':prenom', $prenom);
    $stmt->bindParam(':mdp', $mdp);
    $stmt->execute();

    $user = $stmt->fetch();

    if ($user) {
        header("Location: html/dashboard.php");
        exit();
    } else {
        header("Location: connection.php");
        $_SESSION['error_message'] = "Identifiant ou mot de passe incorrect.";
        $_SESSION['saved_prenom'] = $prenom; 
        exit();
    }
}
?>
