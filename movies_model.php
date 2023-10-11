<?php

class moviesModel
{
    private $pdo;

    public function __construct()
    {
        $this->pdo = new PDO('mysql:host=localhost;' . 'dbname=db_movies;charset=utf8', 'root', '');
    }

}


 ?>

