<?php
session_start();
require_once("manipulation.php");

// condition pour verifie si ya quelq'un qui a vote 
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['playlist'], $_POST['vote'])) {
    $playlist_id = $_POST['playlist'];
    $vote = $_POST['vote'];
    $user_id = null;
    try {
        // Preparation de la requête d'insertions
        $stmt = $pdo_conn->prepare("INSERT INTO tj_vote_vt (Id_prsn, Id_playlist, vote) VALUES (?, ?, ?)");
        $stmt->execute([$user_id, $playlist_id, $vote]);
        header("Location: page3.php");
        exit;
    } catch (PDOException $e) {
        //afficher un message d'erreur si ya un probleme dans l'enregistrement des votes
        echo "Erreur lors de l'enregistrement du vote : " . $e->getMessage();
    }
} else {
    // Si aucune  vote n'a été soumise repar vers la page d'affichage 
    header("Location: page3.php");
    exit;
}
?>