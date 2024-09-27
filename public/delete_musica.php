<?php
include '../includes/db.php';

if (isset($_GET['id'])) {
    $id_musica = $_GET['id'];

    // Excluir a música do banco de dados
    $sql_delete = "DELETE FROM musicas WHERE id = $id_musica";

    if ($conn->query($sql_delete) === TRUE) {
        echo "Música excluída com sucesso!";
    } else {
        echo "Erro ao excluir a música: " . $conn->error;
    }
} else {
    echo "ID da música não fornecido.";
}

echo "<br><a href='view_musicas.php'>Voltar para a lista de músicas</a>";
?>
