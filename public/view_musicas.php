<?php include '../includes/header.php'; ?>
<h2>Lista de Músicas</h2>

<?php
include '../includes/db.php';

$sql = "SELECT musicas.id, musicas.titulo AS musica_titulo, musicas.duracao, albuns.titulo AS album_titulo 
        FROM musicas
        JOIN albuns ON musicas.id_album = albuns.id
        ORDER BY musicas.titulo";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table border='1'>
          <tr>
            <th>Música</th>
            <th>Duração</th>
            <th>Álbum</th>
            <th>Ações</th>
          </tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . $row["musica_titulo"]. "</td>
                <td>" . $row["duracao"]. "</td>
                <td>" . $row["album_titulo"]. "</td>
                <td>
                    <a href='edit_musica.php?id=" . $row["id"] . "'>Editar</a> | 
                    <a href='delete_musica.php?id=" . $row["id"] . "' onclick=\"return confirm('Tem certeza que deseja excluir esta música?');\">Excluir</a>
                </td>
              </tr>";
    }
    echo "</table>";
} else {
    echo "Nenhuma música encontrada.";
}
?>

</body>
</html>
