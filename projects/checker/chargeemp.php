<?php

if(isset($_POST['charge'] )) {

	include ('dbconfig.php');
	$varempinfo = $_POST['empinfo']; 
	$varquantity = $_POST['quantity']; 
	$varorderprice = $_POST['varprice'];
	$varordertprice = $_POST['vartprice'];
	$varoldquantity = $_POST['varoldquantity'];
	$varid = $_POST['orderid'];

	if($varquantity < $varoldquantity){ // 50 - 49
		$qty = $varoldquantity - $varquantity; 
	}else{
		$qty = 0;

	}

	$price = $varquantity * $varorderprice;

	list($empid, $empchargedamount) = explode("-", $varempinfo, 2);

	$chargedprice = $price + $empchargedamount;

	

	$query = "UPDATE EMPLOYEE SET CHARGE_AMOUNT = '$chargedprice'  WHERE EMP_ID = $empid";

		$result = mysqli_query( $connection , $query );

		if ($connection->query($query) == TRUE) {
		   //echo '<script> window.top.location.reload(); </script>';

			if($qty >= 1){
		$newservedprice = $qty * $varorderprice;

		$query = "UPDATE SERVED_DB SET SERVED_QUANTITY = '$qty' , SERVED_TPRICE = '$newservedprice' WHERE SERVED_ID = $varid;";

		$result = mysqli_query( $connection , $query );
		
		if ($result == TRUE ) {
				echo '<script> window.top.location.reload(); </script>';
		}else{
				    echo "Error updating record: " . $connection->error;
		}

	}else{	
		$query = "DELETE FROM SERVED_DB WHERE SERVED_ID= $varid";

		$result = mysqli_query( $connection , $query );
		if ($result == TRUE ) {

				echo '<script> window.top.location.reload(); </script>';
		}else{
				    echo "Error updating record: " . $connection->error;
		}				
	}																	
	
		} else {
		    echo "Error updating record: " . $connection->error;
		}
	

mysqli_close($connection);

}else{
	echo "asdsadsa";
	//header("Location: item category/appetizzer.php");
}

?>