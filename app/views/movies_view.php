<?php
class moviesView
{

    public function showMovies($movies, $param)
    {
        echo "<h1>Lista por género: $param</h2>";
        echo "<a href='router.php'> Volver </a>";


        // imprime la tabla de peliculas
        echo "<table>
                <thead>
                    <tr>
                        <th>Título</th>
                        <th>Año</th>
                        <th>Estudio</th>
                    </tr>
                <thead>
                <tbody>";
        foreach ($movies as $movie) {
            echo "  <tr>
                        <td>$movie->title</td>
                        <td>$movie->year</td>
                        <td>$movie->studio</td>
                    </tr>";
        }
        echo "  </tbody>    
            </table>";
    }

    public function showIndex()
    {
        echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/style.css" rel="stylesheet">
    <title>Movies</title>
</head>
<body>

    <h1>Peliculas por género</h1>
    
    <ul>
        <li><a href="router.php?genre=Comedy">Comedias</a></li>
        <li><a href="router.php?genre=Drama">Drama</a></li>
        <li><a href="router.php?genre=Romance">Románticas</a></li>
        <li><a href="router.php?genre=Animation">Animación</a></li>
        <li><a href="router.php?genre=Action">Acción</a></li>
    </ul>
    <h1>Peliculas por estudio</h1>
    <ul>
        <li><a href="router.php?studio=Disney">Disney</a></li>
        <li><a href="router.php?studio=Independent">Independent</a></li>
        <li><a href="router.php?studio=The Weinstein Company">The Weinstein Company</a></li>
        <li><a href="router.php?studio=Warner Bros.">Warner Bros.</a></li>
        <li><a href="router.php?studio=Summit">Summit</a></li>
        <li><a href="router.php?studio=Paramount">Paramount</a></li>
        <li><a href="router.php?studio=20th Century Fox">20th Century Fox</a></li>
        <li><a href="router.php?studio=Fox">Fox</a></li>
    </ul>

</body>
</html>';
    }
}

?>