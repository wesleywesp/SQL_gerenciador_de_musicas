<?php include '../includes/header.php'; ?>
<h2>Adicionar Música</h2>

<form method="POST" action="add_musica.php">
    Título da Música: <input type="text" name="titulo" required><br>
    Duração (hh:mm:ss): <input type="text" name="duracao" required><br>
    Álbum:
    <select name="id_album" required>
        <option value="">Selecione o Álbum</option>
        <?php
        include '../includes/db.php';
        $sql = "SELECT id, titulo FROM albuns ORDER BY titulo";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "<option value='" . $row["id"] . "'>" . $row["titulo"] . "</option>";
            }
        } else {
            echo "<option value=''>Nenhum álbum encontrado</option>";
        }
        ?>
    </select><br>
    Letra da Música: <textarea name="letra"></textarea><br>
    <input type="submit" value="Adicionar Música">
</form>

<?php
include '../includes/db.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Receber os dados do formulário
    $titulo = $_POST["titulo"];
    $duracao = $_POST["duracao"];
    $id_album = $_POST["id_album"];
    $letra = $_POST["letra"];

    // Preparar a consulta SQL para evitar injeção de SQL
    $stmt = $conn->prepare("INSERT INTO musicas (titulo, duracao, id_album, letra) VALUES (?, ?, ?, ?)");
    
    if ($stmt) {
        // Associar os parâmetros
        $stmt->bind_param("ssis", $titulo, $duracao, $id_album, $letra);

        // Executar a consulta
        if ($stmt->execute()) {
            echo "Música adicionada com sucesso!";
        } else {
            echo "Erro ao adicionar música: " . $stmt->error;
        }

        // Fechar a declaração
        $stmt->close();
    } else {
        echo "Erro ao preparar a consulta: " . $conn->error;
    }

    // Fechar a conexão com o banco de dados
    $conn->close();
}
?>


</body>
</html>
