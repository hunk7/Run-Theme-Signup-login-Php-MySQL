<?php
session_start();
include_once 'dbh.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>change user name using sql</title>
</head>
<body>

<form action="change.php" method="POST">
	<input type="text" name="name" placeholder="name">
	<button type="submit" value="submit">change-name</button>
</form>
	<?php
	

	if (isset($_POST['submit'])){
		$sql = "INSERT INTO users(USER_name) VALUES ('$name');";
		$result = mysqli_query($conn, $sql);
		header("Location: ../run/change.php?update=success");
		exit();
	} else {
		echo "Unable to update name";
	}
	?>

</body>
</html>