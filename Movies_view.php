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
