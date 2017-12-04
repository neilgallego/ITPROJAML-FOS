	<?php
		include 'db.php';	
		include 's.php';	
				
		$query = "SELECT * FROM billing where bill_id = 0";
		$change = 0;
		$sc = 0;
		$pax = 0;
		$bill = 0;
		$discount = 0;
		$newbill = 0;
		$cash = 0;
		
		$result = mysqli_query($conn, $query);									
		
		if($result){									
			$row = mysqli_fetch_array($result);
			$change = number_format($row['change'],2) ;	
			$bill = number_format($row['total_bill'],2) ;	
			$discount = number_format($row['total_discounts'],2) ;	
			$newbill = number_format($row['new_bill'],2) ;	
			$cash = number_format($row['cash_rcvd'],2) ;	
			$pax = $row['no_pax'];	
			$sc = $row['no_sc'];	
		}else{
			printf("Errormessage: %s\n", mysqli_error($conn));
		}
				
		echo
			("<SCRIPT LANGUAGE='JavaScript'>
				alert ('TOTAL BILL: ₱ $bill' + '\\n' + 'Less senior discount: ₱ $discount' + '\\n \\n' + 'Discounted Total: ₱ $newbill' + '\\n' + 'Cash Received: ₱ $cash' + '\\n \\n' + 'TOTAL CHANGE IS: ₱ $change');
				window.location.href='insertTransS.php';
			</SCRIPT>");
	?>
			
			
									
													
												
														
														
												
													
												
														
														
												