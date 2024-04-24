<?php
$f_name = $_POST['f_name'];
$l_name = $_POST['l_name'];
$address = $_POST['address'];
$phone = $_POST['phone'];

if (!$f_name || !$l_name) {echo "Name is empty"; }
if (!$address) {echo "Address is empty"; }
if (!$phone) {echo "phone number is empty"; }

@ $db = new mysqli('localhost', 'final_proj', 'M3tr0$t3m', 'Final_Project');

  if (mysqli_connect_errno()) {
    echo "Failed to connect to Final_Project database. Please check credentials";
        exit;
  
  }
  $query = "INSERT INTO `MH_Table` (`MH_ID`, `f_name`, `l_name`, `phone`, `address`) VALUES (NULL, '".$f_name."', '".$l_name."', '".$phone."', '".$address"')";
  $resp = $db->query($query);
  $if ($resp->affected_rows() > 0) {
		?>
		<html>
		 <body>
		  <h3> Successfully added Mental Health Coach Information </h3>
		 </body>
		</html>
	<?php
  	} else {
  	echo "Failed to send query. Check query and trya again!";
	exit;
  }

  $db.close()
?>
