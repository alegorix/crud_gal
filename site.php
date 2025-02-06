<?php
// On démarre une session
session_start();

// On inclut la connexion à la base
require_once('connect.php');

// On selectionne tous les enregistrements dont la colonne "Actif" est sur 1
$sql = 'SELECT * FROM `liste` WHERE `actif`=1 ORDER BY id DESC';

// On prépare la requête
$query = $db->prepare($sql);

// On exécute la requête
$query->execute();

// On stocke le résultat dans un tableau associatif
$result = $query->fetchAll(PDO::FETCH_ASSOC);

require_once('close.php');
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ma boutique</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css" integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Outfit:wght@100..900&display=swap" rel="stylesheet">
    <link href="styles.css" rel="stylesheet">

</head>
<body>
    <main class="container">
        <div class="row">
            <section class="col-12">
            
                <h1><i class="fa-solid fa-shop"></i> Ma boutique</h1>
                <div class="row row-cols-1 row-cols-md-3 g-4">
 
                        <?php
                        // On boucle sur la variable result
                        foreach($result as $produit){
                        ?>
<div class="col">
<div class="card" >
  <img src="images/<?= $produit['image_produit'] ?>" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text"><h2><?= $produit['produit'] ?></h2><h3><i class="fa-solid fa-angles-right"></i> <span class="prix"><?= $produit['prix'] ?> €</span></h3><p><span class="badge rounded-pill text-bg-light">Reste <?= $produit['nombre'] ?> produits</span>
    </p>
  </div>
</div>
                        </div>
                            
                        <?php
                        }
                        ?>
                </div>
                    </section>
        </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>