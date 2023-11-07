<?php
require_once('./app/views/movies_view.php');
require_once('./app/models/movies_model.php');

class moviesController
{
    private $model;
    private $view;

    public function __construct()
    {
        $this->model = new moviesModel;
        $this->view = new moviesView;
    }

    public function showMoviesByGenre(){
        $genre=$this->model->getParam('genre');
        $movies=$this->model->getMoviesByGenre($genre);
        $this->view->showMovies($movies,$genre);
    }

    public function showMoviesByStudio(){
        $studio=$this->model->getParam('studio');
        $movies=$this->model->getMoviesByStudio($studio);
        $this->view->showMovies($movies,$studio);
    }
    public function showSearchMovies(){
        $search=$this->model->getSearch();
        if (!empty($search)) {
        $movies=$this->model->getMoviesByStudio($search);
        $this->view->showSearch($movies);
        }else{
        $this->view->errorSearch();
        }
    }

    public function showIndex(){
        $this->view->showIndex();
    }
}
?>