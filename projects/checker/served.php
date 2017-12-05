<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title>SERVED ORDERS</title>
	<link rel="stylesheet" href="../bootstrap-3.3.7/dist/css/bootstrap.min.css">
	<script src="../bootstrap-3.3.7/dist/js/jquery-3.2.1.min.js"></script>
	<script src="../bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>

</head>

<body style="background-color: #f5fffa;">
<script>
	$( ".wbutton").click(function(){
			 $.post('test.php', 'val=' + $(this).val());
	})
</script>

	<div name="table_list">
		<table  class="table table-hover table-condensed table-striped" align="center" border="0">
				
		<center>
			<B>
				<h1>SERVED ORDERS</h1>
			</B>
		</center>
				
		<tr>	
			<th>TABLE</th>
			<th>QTY</th>
			<th>ORDER</th>
			<th>TYPE</th>
			<th>WAITER</th>
			<th>TIME</th>
		</tr>

		<?php
		
		include ('dbconfig.php');

		$query = "SELECT served_id, served_table, served_waiter,served_quantity, served_name, served_price, served_type,served_time, served_code, served_tprice FROM served_db";

		$result = mysqli_query( $connection , $query );

		if(! $result){
			die('Could not get served orders from database : ' . mysql_error() );
		}

			$varid = '';
			$vartable = '';
			$varwaiter = '';
			$varquantity ='';
			$varname = '';
			$varprice = '';
			$varcode = '';	
			$vartype = '';
			$vartime = '';
			$vartprice = '';
			$scode = '';
	
	 	while($row = mysqli_fetch_array($result , MYSQL_NUM)){

			$varid    = $row[0];
			$vartable = $row[1];
			$varwaiter = $row[2];
			$varoldquantity = $row[3];
			$varname = $row[4];
			$varprice = $row[5];
			$vartype = $row[6];	
		    $vartime = $row[7];
			$varcode = $row[8];
			$vartprice = $row[9];

			//dbnames for order_db
		    $vardb = 'order_db';
		    $vardbid = 'order_id';
		    $vardbtable = 'order_table';
		    $vardbquantity ='order_quantity';
		    $vardbname = 'order_name';
			$vardbtype = 'order_type';
			$vardbcode = 'order_code';
			$vardbprice = 'order_price';
			$vardbwaiter = 'order_waiter';
			$vardbtime = 'order_time';
			$vardbdate = 'order_date';
			$vardbtotalprice = 'order_tprice';
			$vardbpriority = 'order_priority';
			$varchange = 'served';

		   echo "
		   	<tr>
			  	<td>
			   		<center>$vartable</center>
			   	</td>
			   	<td>
			   		<center>$varoldquantity</center>
			  	</td>
			   	<td>
			   		<center>$varname</center>
			   	</td>

				<td>
					<center>$vartype
						<form method='POST' action='cancelorderauth.php' target='iframe_c'>";

						include ('variables.php');
		
						echo "<input type='submit' class='btn btn-danger btn-sm'  name ='cancel' value='Cancel' >
			    		</form>
					</center>
				</td>

				<td>
					<center>$varwaiter
						<form method='POST' action='changeauth.php' target ='iframe_c'>";

						include ('variables.php'); 
				   		
						echo "<input type='submit' class='btn btn-warning btn-sm'  name = 'change' value='Change'>
				   		</form>
			   		</center>
			   	</td>

				<td>
					<center>$vartime<br>
						<form method='POST' action='chargeauth.php' target ='iframe_c'>";

						include ('variables.php'); 
				   		
						echo "<input type='submit' class='btn btn-success btn-sm'  name = 'charge' value='Charge'>
				   		</form>
			   			
			   		</center>
		   		</td>";


     	}   
	mysqli_close($connection);
    ?>
    </tr>
			</table>
 </div>
<script>
	$( ".wbutton1").click(function(){
			 $.post('item category/test.php', 'val=' + $(this).val());
	})
</script>




</body>

</html>