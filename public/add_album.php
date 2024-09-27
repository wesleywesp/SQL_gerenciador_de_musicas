<?php include '../includes/header.php'; ?>
<h2>Adicionar Álbum</h2>

<form method="POST" action="add_album.php">
    Nome do Álbum: <input type="text" name="titulo" required><br>
    Ano de Lançamento: <input type="number" name="ano_lancamento" required><br>
    Artista: <input type="text" name="artista" required><br>
    <input type="submit" value="Adicionar Álbum">
</form>

<?php
include '../includes/db.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $titulo = $_POST["titulo"];
    $ano_lancamento = $_POST["ano_lancamento"];
    $artista = $_POST["artista"];

    // Verificar se o artista já existe, se não, adicioná-lo
    $sql_artista = "SELECT id FROM artistas WHERE nome = '$artista'";
    $result = $conn->query($sql_artista);
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $id_artista = $row['id'];
    } else {
        $sql_add_artista = "INSERT INTO artistas (nome, tipo_artista) VALUES ('$artista', 'Solo')";
        if ($conn->query($sql_add_artista) === TRUE) {
            $id_artista = $conn->insert_id;
        }
    }

    // Inserir o álbum
    $sql_album = "INSERT INTO albuns (titulo, ano_lancamento, id_artista) VALUES ('$titulo', '$ano_lancamento', '$id_artista')";
    if ($conn->query($sql_album) === TRUE) {
        echo "Álbum adicionado com sucesso!";
    } else {
        echo "Erro: " . $sql_album . "<br>" . $conn->error;
    }
}
?>
</body>
</html>
