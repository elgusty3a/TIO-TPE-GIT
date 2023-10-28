<?php

require_once('app/controllers/movies_controller.php');
$MoviesController = new moviesController;

if (isset($_GET['studio'])&&!empty(isset($_GET['studio']))) {
    $MoviesController->showMoviesByStudio();
} 

else if (isset($_GET['genre'])&&!empty(isset($_GET['genre']))) {
    $MoviesController->showMoviesByGenre();
} 
else if (isset($_GET)&&(!empty(isset($_GET['nombre'])))){
    $MoviesController->showSearchMovies();
} 

else {
    $MoviesController->showIndex();
}

?>