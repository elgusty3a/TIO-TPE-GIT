<?php

require_once('movies_controller.php');
$MoviesController = new moviesController;
// Linea 3 : estamos incluyendo al archivo "movies_controller.php" en este script.
// Linea 4 : Instanciamos moviesController, y creamos una variable para almanece sus metodos.

if (isset($_GET['studio'])&&!empty(isset($_GET['studio']))) {
    $MoviesController->showMoviesByStudio();
} 
// Linea 8 : preguntamos si el parametro 'studio' esta presente en la url, y si no esta vacio 
// Linea 9 : si entra al If : se llama al metodo 'showMoviesByStudio', de la instancia moviesController (Hace algo).


?>