<?php
$username = $_POST['username'];
$password = $_POST['password'];

if (!$username || !$password) {
	echo "Invalid username or password. <br />"
		."Please try again!";
	exit;
}

@ $db = new mysqli('localhost', 'final_proj', 'M3tr0$t3m', 'Final_Project');

if (mysqli_connect_errno()){
	echo "Failed to connect to Final_Project database. Please check credentials";
	exit;
}

$query = "select u_name, pass from clients where u_name = '".$username."' AND pass = '".$password."'";

$result = $db->query($query);

if ($result) {
	if ($result->num_rows == 1) {
		session_start();
		$row = $result->fetch_assoc();
		$_SESSION['f_name'] = $row['f_name'];
		$_SESSION['l_name'] = $row['l_name'];
		?>
	<html>
	  <head>
                <title> Welcome to 4 Hope and 4 Services </title>
	  </head>
	  <body>
	    <main>
	      <h1>Welcome To 4 Hope And 4 Services</h1>
	    </main>
	  </body>
	</html>
	
	<?php
	}
	else {
		echo $result->rows;
	}
}
else {
	echo "Failed to login. An unkown error occured!";
}
$db->close();

