<?php
// Caminho completo para o mysqldump
$mysqldump_path = '/Applications/MAMP/Library/bin/mysql57/bin/mysqldump';

// Define o caminho do arquivo de backup
$backup_file = '../backup/musica_backup_' . date("Y-m-d_H-i-s") . '.sql';

// Comando mysqldump com usuário e senha
$username = 'root';  // Usuário MySQL
$password = 'root';  // Coloque a senha correta aqui
$dbname = 'musica';  // Nome do banco de dados

// Comando completo
$command = "$mysqldump_path -u $username -p$password $dbname > $backup_file";

// Executa o comando
system($command, $output);

// Verifica o resultado
if ($output === 0) {
    echo "Backup realizado com sucesso: " . $backup_file;
} else {
    echo "Erro ao realizar o backup.";
}
?>

