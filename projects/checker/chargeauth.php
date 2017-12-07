<!DOCTYPE html>
<html>
<head>
	<title>Charge Authentication</title>
	<link rel="stylesheet" href="../bootstrap-3.3.7/dist/css/bootstrap.min.css">
<script src="../bootstrap-3.3.7/dist/js/jquery-3.2.1.min.js"></script>
<script src="../bootstrap/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #f5fffa;">
<?php

if(isset($_POST['charge'] )) {

	echo "<h2>CHARGE ORDERS</h2>";


	include ('dbconfig.php');

	$query = "SELECT * FROM employee";

	$result = mysqli_query( $connection , $query );

	if(! $result){
		die('Could not get served orders from database : ' . mysql_error() );
	}

	$varempid = '';
	$varempfname = '';
	$varemposition = '';
	$varemplname ='';
	$varempcharges = '';
	$varid = '';
	$varoldquantity = '';
	$varordername = '';
	$varorderprice = '';

	$varid = $_POST['orderid'];
	$varoldquantity = $_POST['oldorderquantity']; 
	$varordername = $_POST['ordername']; 
	$varorderprice = $_POST['orderprice'];
	$varordertprice = $_POST['vartprice'];

	echo "
	<form method='POST' action='chargeemp.php' target='iframe_c'>
	<h3>Order : $varordername</h3>
	<p>Choose Employee :
		<select name ='empinfo' >";
			while($row = mysqli_fetch_array($result , MYSQL_NUM)){

				$varempid    = $row[0];
				$varempfname = $row[1];
				$varempposition = $row[2];
				$varemplname = $row[3];
				$varempcharges= $row[4];

				$varempname = $varemplname.", ".$varempfname;
				$var = $varempid."-".$varempcharges;

				echo "
				<option value='$var'>$varempname</option>
				";
			}

		echo "
		</select>
	</p>
	<p>Choose Quantity to charge : 
	<input class= textbox type='number' style='width:80px;' class='form-control input-xs' name='quantity' min='1' max='$varoldquantity' value=$varoldquantity>
	
	<input type='hidden' name ='varempcharges' value='$varempcharges'>
	<input type='hidden' name ='varprice' value='$varorderprice'>
	<input type='hidden' name ='vartprice' value='$vartprice'>
	<input type='hidden' name ='varoldquantity' value='$varoldquantity'>
	<input type='hidden' name ='orderid' value='$varid'>
	<input type='hidden' name ='orderid' value='$varid'>
	<br>
	<input type='submit' class='btn btn-danger btn-sm'  name ='no' value='Cancel'>
	<input type='submit' class='btn btn-success btn-sm'  name ='charge' value='Charge' >
	</form>
	</p>
	";

}else{
	header("Location: item category/appetizzer.php");
}

	?>
	
	

</body>
</html>