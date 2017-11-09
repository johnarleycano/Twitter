<?php
  session_start();
   
  // Obtengo los datos cargados en el formulario de login.
 $user = $_POST['login'];
 $pass = $_POST['clave'];
 $password=($pass);
   
  // Datos para conectar a la base de datos.
  $nombreServidor = "localhost";
  $nombreUsuario = "root";
  $passwordBaseDeDatos = "";
  $nombreBaseDeDatos = "devimed_twitter";
  
  // Crear conexión con la base de datos.
  $conn = new mysqli($nombreServidor, $nombreUsuario, $passwordBaseDeDatos, $nombreBaseDeDatos);
   
  // Validar la conexión de base de datos.
  if ($conn ->connect_error) {
    die("Connection failed: " . $conn ->connect_error);
  }
   
  // Consulta segura para evitar inyecciones SQL.
  $sql = sprintf("SELECT * FROM dvm_usuarios WHERE login='%s' AND clave = '%s'", mysql_real_escape_string($user), mysql_real_escape_string($password)); 
 $result = mysqli_query($conn,$sql);
  // $resultado = $conn->query($sql);
 $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
$active = $row['active'];
$count = mysqli_num_rows($result);

   
  // Verificando si el usuario existe en la base de datos.
  if($count ==1){
    // Guardo en la sesión el email del usuario.
   $_SESSION['user'] = $user;
    // Redirecciono al usuario a la página principal del sitio.
    header("HTTP/1.1 302 Moved Temporarily");
    header("Location: twitter.php");
  }else{
    echo 'El Usuario  o password es incorrecto, <a href="index.php">vuelva a intenarlo</a>.<br/>';
  }
 
?>