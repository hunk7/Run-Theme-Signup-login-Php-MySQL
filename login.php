<?php

session_start();

if (isset($_POST['submit'])){
	include 'dbh.php';

	$uid = mysqli_real_escape_string($conn, $_POST['uid']);
	$pwd = mysqli_real_escape_string($conn, $_POST['pwd']);

	// error handlers
	// check if inputs are empty
	if (empty($uid) || empty($pwd)){
		header("Location: ../run/index.php?login=empty");
		exit();
	}else{
		$sql = "SELECT * FROM users WHERE USER_uid = '$uid' or USER_email='$uid'";
		$result = mysqli_query($conn, $sql);
		$resultCheck = mysqli_num_rows($result);
		if ($resultCheck < 1){
			header("Location: ../run/index.php?login=error");
		    exit();
		}else{
			if ($row = mysqli_fetch_assoc($result)){
				// dehashing password
				$hashedPwdChecked = password_verify($pwd, $row['USER_pwd']);
				if ($hashedPwdChecked == false){
					header("Location: ../run/index.php?login=error");
		            exit();
				}elseif ($hashedPwdChecked == true){
					// log in the user here
					$_SESSION['u_id']= $row['USER_id'];
					$_SESSION['u_name']= $row['USER_name'];
					$_SESSION['u_email']= $row['USER_email'];
					$_SESSION['u_uid']= $row['USER_uid'];
					$_SESSION['u_num']= $row['USER_num'];
					header("Location: ../run/index.php?login=success");
					exit();
				}
			}
		}
    }
} else{
	header("Location: ../run/index.php?login=error");
	exit();
}