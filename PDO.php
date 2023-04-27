<?php
try
{// Souvent on identifie cet objet par la variable $conn ou $db
    //loggin
    $mysqlConnection = new PDO(
        'mysql:host=127.0.0.1;dbname=we_love_food;charset=utf8',
        'root',
        '',
    );    
}
    catch (Exception $e) //catching errors
{
        die('Erreur : ' . $e->getMessage());
}
    //if everything is fine sql request 
    $sqlQuery = ('SELECT * FROM recipes');
    $recipeStatment = $mysqlConnection->prepare($sqlQuery);
    $recipeStatment->execute();
    $recipes = $recipeStatment->fetchAll();
    //display the requests
    foreach($recipes as $recipe) 
    {
        echo '<p>'.$recipe["author"].'</p>';
    }
?>
    <?php

$sqlQuery2 = 'SELECT title, author FROM recipes';
$recipeStatment2 = $mysqlConnection->prepare($sqlQuery2);
$recipeStatment2->execute();
$recipes2 = $recipeStatment2->fetchAll();
foreach ($recipes2 as $recipe2)
{
    var_dump($recipe2);
    echo    "<br/>
            <br/>".$recipe2['title']."
            <br/>".$recipe2['author']."
    </br>";    
}
