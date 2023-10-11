<?php

class moviesModel
{
    private $pdo;

    public function __construct()
    {
        $this->pdo = new PDO('mysql:host=localhost;' . 'dbname=db_movies;charset=utf8', 'root', '');
    }

    public function getMoviesByGenre($genre)
    {
        $db = $this->pdo;
        $query = $db->prepare('SELECT * FROM movies WHERE genre = ?');
        $query->execute([$genre]);
        $movies = $query->fetchAll(PDO::FETCH_OBJ);
        return $movies;
    }
    public function getMoviesByStudio($studio)
    {
        $db = $this->pdo;
        $query = $db->prepare('SELECT * FROM movies WHERE studio = ?');
        $query->execute([$studio]);
        $movies = $query->fetchAll(PDO::FETCH_OBJ);
        return $movies;
    }

    public function getParam($param)
    {
        $this->errorHandler($param);
        // obtiene el genero enviado por GET 
        $action = $_GET[$param];
        return $action;
    }

    public function errorHandler($param)
    {
        // verifica datos obligatorios
        if (!isset($_GET[$param]) || empty($_GET[$param])) {
            echo "<h2>Error! $param no especificado.</h2>";
            die();
        }
    }
}

?>