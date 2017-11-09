<?php
include 'conexion.php';

$q=$_POST['q'];
$con=conexion();

$res=mysql_query("select * from lista_ubicaciones where id_vias=".$q."",$con);
// print_r($res);
?>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen"> 
    <link href="css/estilo.css" rel="stylesheet" media="screen"> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
    <script src="js/bootstrap.min.js"></script>
	<title></title>
</head>
<body>
<form action="enviar/index.php" method="post" >
<select name="ubicacion" class="form-control input-lg">
	<option value="0 ">Seleccione</option>
	<?php 
	while($fila=mysql_fetch_array($res)){?>
	<option value="<?php echo utf8_encode($fila["ubicacion"]); ?>"><?php echo utf8_encode($fila["ubicacion"]); ?></option>
	<?php } ?>
</select>
</form>
</body>
</html>
