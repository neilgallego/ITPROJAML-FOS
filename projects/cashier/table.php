<?php
include 'db.php';
	$dbhost = 'localhost';
	$dbuser = 'root';
	$dbpass = '';
	$connection = mysqli_connect($dbhost,$dbuser,$dbpass,'aml_db');

	if(! $connection){
		die('Could not Connect to Database' . mysql_error());
	}

	$query = "SELECT table_name FROM table_db where table_name LIKE 'A%'";
	$result = mysqli_query( $connection , $query );

	if(! $result){
		die('Could not get data from database : ' . mysql_error() );
	}

	$query2 = "Select served_table from served_db where served_table LIKE 'A%' group by served_table";
	$result2 = mysqli_query( $conn , $query2 );
	
	if(! $result2){
		die('Could not get data from database : ' . mysql_error() );
	}
	
	$array  = array();
	$i = 0;

	$varcolumn = '';
	
	$color = 'btn-danger';
	$vartable = '';
	

	$row_cnt = mysqli_num_rows($result2);

	
	while($row = mysqli_fetch_array($result)){
		if($vartable == $varcolumn){
				$color = 'btn-default';
			} 
		$row2 = mysqli_fetch_array($result2);
		$vartable = $row2[0];
		//echo ''.$vartable.'';
		 $varhash = '#';
		 $varmodal = 'myModal';
		 $varcolumn = $row[0];
		$color = 'btn-danger';
		
			
		 
		echo'<td><input id="'. $varcolumn .' " type="button" class="btn '.$color.' btn-lg" data-toggle="modal" data-target="#myModal'.$varcolumn .'"  style="margin-right:1%;margin-top:1%;"  onclick="showDiv()" value="'. $varcolumn .'"></td>';
 	
	
	}
		

?>