<?php

error_reporting(0);

//Se define zona horaria
date_default_timezone_set('America/Bogota');

//Se carga el archivo de funciones
// include '../../funciones.php';

//Se carga la libreria
include 'tmhOAuth.php';
include '../conexion.php';

/*
 * Aqui se reciben todos los datos enviados del formulario, sean de los combos o del check
 */
$via = $_POST['via'];

$con=conexion();
$query = mysql_query("SELECT via FROM lista_vias WHERE id = '$via'", $con);
$resultado = mysql_fetch_array($query);
$resultado['via'];

$estado = $_POST['estado'];
$ubicacion = $_POST['ubicacion'];
$km = $_POST['km'];
$causa = $_POST['causa'];
$predefinido = $_POST['tweet'];
$twitter_obras = "@ANI_Colombia";
//$msg = " Estamos Trabajando!";

//Valida que se hayan seleccionado los dos selects obligatorios o un mensaje predefinido
if($predefinido == "" && ($via == "" ||  $estado == "")){ ?>
	<script type="text/javascript">alert("Debe seleccionar una via y un estado o un mensaje");</script>
	<!--Se redirecciona la pagina-->
    <meta http-equiv="Refresh" content="0; url=../twitter.php"/><?php
}else{
	//Se verifica si el mensaje es predefinido o es armado con los selects
	if($predefinido){
		//El mensaje sera el predefinido
    	$mensaje = $predefinido.". ";
    	// $mensaje = $predefinido." (".date('H:i').")";
	}else{
		//Se verifica si tiene causa
	    if(strlen($causa) > 1){$causa = " por ".$causa;}else{$causa = NULL;}

	    // Se verifica que tenga ubicación
	    if(strlen($ubicacion) > 3){$ubicacion = " a la altura de ".$ubicacion." ";}else{$ubicacion = "";}
		
		


	    // Se verifica que tenga km
	    if(strlen($km) > 1){$km = " km ".$km." ";}else{$km = NULL;}
	    
	    //El mensaje sera el que traiga en los selects
	    // $mensaje = $via." ".$fila['opcion']." ".$ubicacion.",".$estado.$causa.",".$km.$msg;
	    $mensaje = "Via ".utf8_encode($resultado['via'])." ".$ubicacion.", ".$estado.$causa.".".$km.$msg;
	    // $mensaje = $resultado['via']." ".$ubicacion.",".$estado.$causa.",".$km.$msg;
	    // $mensaje = $via." ".$ubicacion.$estado.$causa.". (".date('H:i').")";
	}
}

$mensaje .= "(".date('H:i').")";

print_r($mensaje);

//Se hace el conteo de los caracteres
echo $caracteres = strlen($mensaje)." ";


 
if($caracteres <= 123){
	$mensaje .= $twitter_obras;
}

//Se muestra un mensaje con la cantidad de caracteres
// echo "Este mensaje contiene ".$caracteres." caracteres. El mensaje es ".$mensaje;

//Se almacena un arreglo con las llaves de la cuenta @cafa1525 para pruebas
$twitter_carlosflorez = array(
	'consumer_key' => 'INUntQQpkJfhxb23S8CBEYyyN',
	'consumer_secret' => 's7X2a0klsZPaRaHaYav0FB2YRFnTBp6haiVzfKGbb1MWm5wqtd',
	'token' => '2709539160-ICz0aXAbTfH23Tu9X0Yp9P7XHrPAQ8GmKbpPSa7',
	'secret' => 'TdclxKuzRchXoLPmNTWQynYZMZRMKOOdtxS0GmaUDsxlE'
);

//Se almacena un arreglo con las llaves de la cuenta @devimed
$twitter_devimed = array(
	'consumer_key' => 'hAgaBo7atcb3PcxX1y2Rptorq',
	'consumer_secret' => 'XDgi2AnylXbHBj27KUoFV0sH98LzrjddG787HNOKdnj5wViIuC',
	'token' => '216724312-LHlkGFVVtemb2QBuZ37JtqsLbs2GQBaecfStWSNG',
	'secret' => 'siSiXXKqAql9Met5rIwZiedXuOpQaXZMqJCY0PzLzgnzY'
);

//Se inicializa para pruebas de comenta
$tmhOAuth = new tmhOAuth($twitter_devimed);


// Se envia el mensaje
$enviar = $tmhOAuth->request('POST', $tmhOAuth->url('1.1/statuses/update'), array(
	'status' => $mensaje
));
// echo $enviar;

if ($enviar != 200) {
	?>
	<script type="text/javascript">alert("El mensaje no se puede enviar. Contiene " + <?php echo $caracteres; ?> + " caracteres. Por favor diseñe de nuevo el mensaje.");</script>

	<!--Se redirecciona la pagina-->
	<meta http-equiv="Refresh" content="0; url=../twitter.php"/>
	<?php

	die();
} else {
	//Se envio bien el twit	
    // echo 'Mensaje enviado correctamente con '.$caracteres.' caracteres PASO<br/>';
    ?>	
    <script type="text/javascript">alert(" El mensaje Se publico con Exito. ");</script>

	<meta http-equiv="Refresh" content="0; url=../twitter.php"/>
	<?php
    //Se inserta el registro en la bitacora
	$bitacora_twitter = "insert into tbl_bitacora values ('', '', '".date('Y-m-d H:i:s')."', '', 'Twitter', '', '', '', '', '', '', 'Mensaje publicado en Twitter: ".$mensaje."','".$_SESSION["ced"]."')";
	mysql_query($bitacora_twitter,Conectarse());

	?>
	<!--Se redirecciona la pagina-->
	<meta http-equiv="Refresh" content="0; url=../twitter.php"/>
	<?php
}
?>