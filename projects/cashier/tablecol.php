<?php
	$dbhost = 'localhost';
	$dbuser = 'root';
	$dbpass = '';
	$connection = mysqli_connect($dbhost,$dbuser,$dbpass,'aml_db');

	if(! $connection){
		die('Could not Connect to Database' . mysql_error());
	}

	$query = "Select served_table from served_db where served_table LIKE 'A%' group by served_table;";
	$result = mysqli_query( $connection , $query );

	if(! $result){
		die('Could not get data from database : ' . mysql_error() );
	}

	$varletter = '';
	$varcolumn = '';
	$index = 0;
	$result_array = array();

	$array  = array();
	$count = 0;
	$color = 'btn-danger';
	$vartable = '';
	
	while($row = mysqli_fetch_array($result)){
		
		 $varhash = '#';
		 $varmodal = 'myModal';
		 $varcolumn = $row[0];
	$vartable = $row[0];
		 
		 $tablemodal = $varmodal.$varcolumn;
		 
  
	}


	mysqli_close($connection);
?>