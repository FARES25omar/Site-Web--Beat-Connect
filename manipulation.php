<?php

$host = 'localhost';
$user = 'root';
$password = '';
$dbname = 'basesite';
$charset = 'utf8mb4';
$dsn = "mysql:host=$host;dbname=$dbname;charset=$charset";
$options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES => false,
];

try {
    // Cnx BDD
    $pdo_conn = new PDO($dsn, $user, $password, $options);

    // Requete SQL pour recupere les playlistes et les music associer 
    $sql = "SELECT p.Id_play, p.nom_playlist, m.Id_misc, m.nom_musique, p.photo_src AS playlist_photo, m.photo_path AS musique_photo, m.duree_SC
    FROM T_playlist_play p
    JOIN Tj_liason l ON p.Id_play = l.Id_play
    JOIN T_musique_misc m ON l.Id_misc = m.Id_misc";

    // recuperation des playlistes apartir de la requete sql 
    $stmt = $pdo_conn->query($sql);

    // Requete SQL pour compter les likes 
    $sql_likes = "SELECT Id_playlist, COUNT(*) AS like_count FROM tj_vote_vt WHERE vote = 'like' GROUP BY Id_playlist ORDER BY like_count DESC 
    LIMIT 1;";

    // Execution 
    $stmt_likes = $pdo_conn->query($sql_likes);

    // declaration et initialisation de tableaux pour stocke les vote 
    $playlist_likes = [];

    // Parcourir les résultats de la requête et stocker les likes dans tableau
    while ($row_likes = $stmt_likes->fetch()) {
        $playlist_likes[$row_likes['Id_playlist']] = $row_likes['like_count'];
    }
    $current_playlist = null;
    $current_playlist_id = null;

    $sqlpro = "SELECT *, (SELECT MAX(vote) FROM tj_vote_vt) AS vote_max
    FROM t_user
    JOIN t_ambiance_amb ON t_user.Id_amb = t_ambiance_amb.Id_amb;";













    $stmtpro = $pdo_conn->query($sqlpro);
    $resultat = $pdo_conn->query($sql);


    $current_pro = null;
    // Affichage des informations




    
    
    $resultat = $pdo_conn->query($sql);


    function getAllAmbiances() {
        global $pdo_conn;
    
        // Requête SQL pour récupérer toutes les ambiances
        $sql = "SELECT Id_amb, nom_ambiance FROM t_ambiance_amb";
        $stmt = $pdo_conn->query($sql);
        
    
        return $stmt;
    }
    
    // Fonction pour récupérer les playlists associées à une ambiance spécifique
    function getPlaylistsByAmbiance($ambiance_id) {
        global $pdo_conn;
    
        // Requête SQL pour récupérer les playlists associées à l'ambiance spécifiée
        $sql = "SELECT p.nom_playlist, p.photo_src
                FROM T_playlist_play p
                JOIN TJ_jouer l ON p.Id_play = l.Id_play
                WHERE l.Id_amb = :ambiance_id";
    
        $stmt = $pdo_conn->prepare($sql);
        $stmt->execute(['ambiance_id' => $ambiance_id]);
    
        return $stmt;
    }


    $current_pro = null;
} catch (PDOException $e) {
    echo "Erreur: " . $e->getMessage();
}
?>

<script>
    function toggleMusic(playlistId) {
        var x = document.getElementById(playlistId);
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    }
</script>