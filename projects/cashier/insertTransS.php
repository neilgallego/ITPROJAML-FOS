
	<?php
		include 'db.php';


	$query = "insert into transaction (transac_time, transac_date, transac_table, transac_sc, transac_pax, transac_discounts, transac_cash, transac_card, transac_total, transac_newbill) 
										select now(), curdate(), table_no, no_sc, no_pax, total_discounts, cash_rcvd, transac_no, total_bill, new_bill
						from billing where table_no like 'S%';";

		$query .= "update `transaction` set `transac_discounts` = (((`transac_total`/`transac_pax`)*.20)*`transac_sc`) where transac_sc != 0;";		
		$query .= "update `transaction` set `transac_newbill` = `transac_total` - `transac_discounts` where transac_sc != 0;";																								
		$query .= "update `transaction` set `transac_change` = `transac_cash` - `transac_newbill` where transac_sc != 0;";					
		$query .= "update `transaction` set `transac_change` = `transac_cash` - `transac_total` where transac_sc = 0;";
		
		$query .= "Delete from billing where table_no like 'S%'";	
				
		$result = mysqli_multi_query($conn, $query) or die (mysql_error());
		
		if($result){												
			echo
				("<SCRIPT LANGUAGE='JavaScript'>
				 window.alert('Transaction Complete!')
				 window.location.href='s.php';
				</SCRIPT>");
		}
	?>