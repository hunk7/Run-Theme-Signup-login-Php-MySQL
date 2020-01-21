<?php
session_start();
if (isset($_SESSION['u_id'])){
	session_unset();
	session_destroy();
	header("Location: ../run/index.php?logout=success");
	exit();
}else{
	header("Location: ../run/index.php?logout=error");
	exit();
}