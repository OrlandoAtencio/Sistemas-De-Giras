<?php
// require "../security.php";
// requireRole("ADMIN");

// Ejemplo: lista de usuarios (simulación, reemplazar con DB si quieres)
$users = [
    ["id" => 1, "usuario" => "admin", "correo" => "admin@example.com", "cedula" => "0000001"],
    ["id" => 2, "usuario" => "user1", "correo" => "user1@example.com", "cedula" => "0000002"],
];
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Página Admin - Usuarios</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
      body { font-family: Arial, sans-serif; margin: 20px; }
      table { border-collapse: collapse; width: 100%; }
      th, td { border: 1px solid #ddd; padding: 8px; }
      th { background: #f2f2f2; }
      .logout { float: right; }
    </style>
</head>
<body>
    <h1>Panel de Administración</h1>
    <a class="logout" href="/giras_tecnicas/pages/login.html">Cerrar sesión</a>
    
    <h2>Lista de usuarios</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Usuario</th>
                <th>Correo</th>
                <th>Cédula</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($users as $u): ?>
            <tr>
                <td><?php echo $u["id"]; ?></td>
                <td><?php echo $u["usuario"]; ?></td>
                <td><?php echo $u["correo"]; ?></td>
                <td><?php echo $u["cedula"]; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>
</html>