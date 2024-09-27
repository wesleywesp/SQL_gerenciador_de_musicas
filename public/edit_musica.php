<?php include '../includes/header.php'; ?>
<h2>Editar Música</h2>

<?php
include '../includes/db.php';

if (isset($_GET['id'])) {
    $id_musica = $_GET['id'];

    // Buscar dados atuais da música
    $sql = "SELECT * FROM musicas WHERE id = $id_musica";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $musica = $result->fetch_assoc();

        // Buscar lista de álbuns para o dropdown
        $sql_albums = "SELECT id, titulo FROM albuns ORDER BY titulo";
        $result_albums = $conn->query($sql_albums);
        ?>

        <form method="POST" action="edit_musica.php">
            <input type="hidden" name="id" value="<?php echo $musica['id']; ?>">
            Título da Música: <input type="text" name="titulo" value="<?php echo $musica['titulo']; ?>" required><br>
            Duração (hh:mm:ss): <input type="text" name="duracao" value="<?php echo $musica['duracao']; ?>" required><br>
            Álbum:
            <select name="id_album" required>
                <?php
                if ($result_albums->num_rows > 0) {
                    while($album = $result_albums->fetch_assoc()) {
                        $selected = ($album['id'] == $musica['id_album']) ? 'selected' : '';
                        echo "<option value='" . $album["id"] . "' $selected>" . $album["titulo"] . "</option>";
                    }
                } else {
                    echo "<option value=''>Nenhum álbum encontrado</option>";
                }
                ?>
            </select><br>
            Letra da Música: <textarea name="letra"><?php echo $musica['letra']; ?></textarea><br>
            <input type="submit" value="Salvar Alterações">
        </form>

        <?php
    } else {
        echo "Música não encontrada.";
    }
} elseif ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Processar submissão do formulário
    $id_musica = $_POST['id'];
    $titulo = $_POST['titulo'];
    $duracao = $_POST['duracao'];
    $id_album = $_POST['id_album'];
    $letra = $_POST['letra'];

    // Atualizar a música no banco de dados
    $sql_update = "UPDATE musicas SET titulo = '$titulo', duracao = '$duracao', id_album = '$id_album', letra = '$letra' WHERE id = $id_musica";

    if ($conn->query($sql_update) === TRUE) {
        echo "Música atualizada com sucesso!";
        echo "<br><a href='view_musicas.php'>Voltar para a lista de músicas</a>";
    } else {
        echo "Erro ao atualizar a música: " . $conn->error;
    }
} else {
    echo "Ação inválida.";
}

?>

</body>
</html>
