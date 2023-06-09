<?php
try
{// Souvent on identifie cet objet par la variable $conn ou $db
    //loggin
    $mysqlConnection = new PDO(
        'mysql:host=127.0.0.1;dbname=we_love_food;charset=utf8',
        'root',
        '',
        [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION],
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
echo "---------------------------------------------------------------------";
$sqlQuery3 = 'SELECT * FROM recipes WHERE is_enabled = TRUE';
$recipeStatement3 = $mysqlConnection->prepare($sqlQuery3);
$recipeStatement3->execute();
$recipes3 = $recipeStatement3->fetchAll();
var_dump($recipes3);
foreach ($recipes3 as $recipe3=>$value1)                //No double foreach because $recipes3 as the field twice
{
    $cvalue1 = count($value1);
    var_dump($cvalue1);
    for ($i = 1; $i < $cvalue1/2; $i++)
    {
        echo $value1[$i];
    }
}

// proper sql request

$sqlQuery4 = 'SELECT * FROM recipes WHERE author = :author AND is_enabled = :is_enabled';

$recipesStatement4 = $db->prepare($sqlQuery);
$recipesStatement4->execute([
'author' => 'celine.ching@gmail.com',
'is_enabled' => false,
]);
$recipes4 = $recipesStatemen4t->fetchAll();
// ]); ?????? WHy ]); ?