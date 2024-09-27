<?php include '../includes/header.php'; ?>
<h2>Lista de Álbuns</h2>

<?php
include '../includes/db.php';

$sql = "SELECT albuns.titulo, albuns.ano_lancamento, artistas.nome AS artista FROM albuns
        JOIN artistas ON albuns.id_artista = artistas.id ORDER BY albuns.titulo";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table border='1'>
          <tr><th>Álbum</th><th>Ano</th><th>Artista</th></tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["titulo"]. "</td><td>" . $row["ano_lancamento"]. "</td><td>" . $row["artista"]. "</td></tr>";
    }
    echo "</table>";
} else {
    echo "Nenhum álbum encontrado.";
}
?>

</body>
</html>
