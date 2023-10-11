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

?>