<?php

function dbConnect (){
 	$conn =	null;
 	$host = '127.0.0.1';
 	$db = 	'proyecto2';
 	$user = 'root';
 	$pwd = 	'1234';
 	mysql_connect($host, $user, $pwd) or die ("mierda");
 	mysql_select_db($db);
 	return $conn;
 }

 ?>