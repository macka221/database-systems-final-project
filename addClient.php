<?php
  $f_name = $_POST['f_name'];
  $l_name = $_POST['l_name'];
  $u_name = $_POST['u_name'];
  $p_word = $_POST['p_word'];
  $address = $_POST['address'];
  $gender = $_POST['gender'];
  $phone = $_POST['phone'];
  $DOB = $_POSt['DOB'];
  $POB = $_POST['POB'];
  $email = $_POST['email'];

  if (!$f_name) { echo "1." .$f_name. " "; }  
  if (!$l_name) {echo "2.". $l_name. " "; } 
  if (!$u_name) {echo "3.". $u_name. " "; }
  if (!$p_word) {echo "4.". $p_word. " "; }
  if (!$address) {echo "5.". $address. " "; } 
  if (!$gender) {echo "6.". $gender. " "; }
  if (!$phone) {echo "7.". $phone. " "; }
  if (!$DOB) {echo "8.". $DOB. " "; } 
  if (!$POB) {echo "9.". $POB. " "; } 
  @ $db = new mysqli('localhost', 'final_proj', 'M3tr0$t3m', 'Final_Project');

  if (mysqli_connect_errno()) {
    echo "Failed to connect to Final_Project database. Please check credentials";
        exit;
 }
  /*
   * INSERT INTO `clients` (`user_id`, `f_name`, `l_name`, `u_name`, `pass`, `DateOfBirth`, `PlaceOfBirth`, `Gender`, `address`, `phone_number`) VALUES (NULL, 'Jane', 'Doe', 'janeD1234', 'password', '2023-05-02', 'United States', 'Prefer Not To Say', 'Temp Adddress', '000-000-0000');
   */
  $query = "INSERT INTO `clients`(`user_id`, `f_name`, `l_name`, `u_name`, `pass`, `DateOfBirth`, `PlaceOfBirth`, `Gender`, `address`, `phone_number`) VALUES (NULL, '".$f_name."', '".$l_name."', '".$u_name."', '".$p_word."', '".$DOB."', '".$POB."', '".$gender."', '".$address."', '".$phone."');";
 
  $statement = $db->query($query);
 
  if ($statement) {
     if ($statement->affected_rows() == 1) {
	?>
	<html>
	 <body>
	    <h3>Successfully added</h3>
	 </body>
	</html>
	<?php
     	} else {
	    echo "Failed to add user";
	    exit;
	}
     } else {
	     echo "Failed to send query. Check query and try again! ";
   	exit;
  }

$db.close();
?>
