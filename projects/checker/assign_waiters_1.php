<link rel="stylesheet" href="..//bootstrap-3.3.7/dist/css/bootstrap.min.css">
<script src="..//bootstrap-3.3.7/dist/js/jquery-3.2.1.min.js"></script>
<script src="..//bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="bootstrap-select-1.12.4/dist/css/bootstrap-select.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="bootstrap-select-1.12.4/dist/js/bootstrap-select.min.js"></script>

<!-- (Optional) Latest compiled and minified JavaScript translation files -->
<script src="bootstrap-select-1.12.4/dist/js/i18n/defaults-*.min.js"></script>


<?php
        $connection=mysqli_connect("localhost","root","","aml_db");
    // Check connection
    if (mysqli_connect_errno())
      {
      echo "Failed to connect to MySQL: " . mysqli_connect_error();
      }
	   $result = mysqli_query($connection,"SELECT id, firstname FROM waiter_db ORDER BY firstname ASC");
	   $result2= mysqli_query($connection,"SELECT id, firstname FROM waiter_db ORDER BY firstname ASC");
	   $result3 = mysqli_query($connection,"SELECT id, firstname FROM waiter_db ORDER BY firstname ASC");
	   $result4 = mysqli_query($connection,"SELECT id, firstname FROM waiter_db ORDER BY firstname ASC");

?>

<style>
body{
  background: #31302b;
  color: white;
}
</style>
<!DOCTYPE html>
<html>
<center>
<h1>ASSIGN WAITERS</h1>
	<div>
					<form action="" name="assigned" method="POST">
					<!--1-->
	Waiter 1: <select class="selectpicker show-tick" data-style="btn-primary" name="waiter1">
				<option value=""></option>
<?php
	while($row = mysqli_fetch_array($result))
    {
						?>		

						<option value="<?php echo $row['firstname']; ?>"> <?php echo $row['firstname']; ?></option>
					
	<?php
}
    ?>
</select>

<br>
<br>
<!--2-->
				Waiter 2: <select class="selectpicker show-tick" name="waiter2">
				<option value=""></option>
<?php
	while($row2 = mysqli_fetch_array($result2))
    {
						?>		

						<option value="<?php echo $row2['firstname']; ?>"> <?php echo $row2['firstname']; ?></option>
					
	<?php
}
    ?>
</select>
<br>
<br>
<!--3-->
				Waiter 3: <select class="selectpicker show-tick" name="waiter3">
				<option value=""></option>
<?php
	while($row3 = mysqli_fetch_array($result3))
    {
						?>		

						<option value="<?php echo $row3['firstname']; ?>"> <?php echo $row3['firstname']; ?></option>
					
	<?php
}
    ?>
</select>
<br>
<br>
<!--4-->
				Waiter 4: <select class="selectpicker show-tick" name="waiter4">
				<option value=""></option>
<?php
	while($row4 = mysqli_fetch_array($result4))
    {
						?>		

						<option value="<?php echo $row4['firstname']; ?>"> <?php echo $row4['firstname']; ?></option>
					
	<?php
}
    ?>

</select>
<script>
$('.selectpicker').selectpicker({
  style: 'btn-info',
  size: 4
});
</script>
<br>
<br>
<br>
<br>


<form action="handler.php" method="post">
	<input  id="conf" type="submit" name="submit" value="Apply" class="btn btn-success btn-lg " 
	style="width: 13%;" >
</form>

 <button  id="myBtn" class="btn btn-warning btn-lg" style="width: 13%;">Next</button>
  <script>
    var btn = document.getElementById('myBtn');
    btn.addEventListener('click', function() {
      document.location.href = 'main.php';
    });
  </script>

</form>
		<br><br>	
<script>	
	$(document).ready(function()
 {
     $("#conf").button().click(function()
     {
         $.modal.close();
     }); 
 });			
</script>				
</html>

<?php
if(isset($_POST["submit"])){

$uid = 0;
$waiter1 = $_POST['waiter1'];
$waiter2 = $_POST['waiter2'];
$waiter3 = $_POST['waiter3'];
$waiter4 = $_POST['waiter4'];
//1
$sql = "UPDATE assigned_waiters 
SET waiter='".$waiter1."',time=NOW(), date=NOW() where d_id=0;";
//2
$sql .= "UPDATE assigned_waiters 
SET waiter='".$waiter2."' ,time=NOW(), date=NOW() where d_id=1;";
//3
$sql .= "UPDATE assigned_waiters 
SET waiter='".$waiter3."' ,time=NOW(), date=NOW() where d_id=2;";
//4
$sql .= "UPDATE assigned_waiters 
SET waiter='".$waiter4."' ,time=NOW(), date=NOW() where d_id=3";
$chk = NULL;
if(empty($waiter1)){
			$errMSG = "error!";
		}
		else if(empty($waiter2)){
			$errMSG = "error!";
			
		}
		else if(empty($waiter3) && empty($waiter4)){
			$sql = "UPDATE assigned_waiters 
SET waiter='".$waiter1."',time=NOW(), date=NOW() where d_id=0;";
//2
$sql .= "UPDATE assigned_waiters 
SET waiter='".$waiter2."' ,time=NOW(), date=NOW() where d_id=1;";
//3
$sql .= "UPDATE assigned_waiters 
SET waiter=NULL ,time=NULL, date=NULL where d_id=2;";
//4
$sql .= "UPDATE assigned_waiters 
SET waiter=NULL ,time=NULL, date=NULL where d_id=3";
		}else if(empty($waiter3)){
			$sql = "UPDATE assigned_waiters 
SET waiter='".$waiter1."',time=NOW(), date=NOW() where d_id=0;";
//2
$sql .= "UPDATE assigned_waiters 
SET waiter='".$waiter2."' ,time=NOW(), date=NOW() where d_id=1;";
//3
$sql .= "UPDATE assigned_waiters 
SET waiter=NULL ,time=NULL, date=NULL where d_id=2;";
//4
$sql .= "UPDATE assigned_waiters 
SET waiter='".$waiter4."' ,time=NOW(), date=NOW() where d_id=3";
		}else if(empty($waiter4)){
			$sql = "UPDATE assigned_waiters 
SET waiter='".$waiter1."',time=NOW(), date=NOW() where d_id=0;";
//2
$sql .= "UPDATE assigned_waiters 
SET waiter='".$waiter2."' ,time=NOW(), date=NOW() where d_id=1;";
//3
$sql .= "UPDATE assigned_waiters 
SET waiter='".$waiter3."' ,time=NOW(), date=NOW() where d_id=2;";

//4
$sql .= "UPDATE assigned_waiters 
SET waiter=NULL ,time=NULL, date=NULL where d_id=3";
		}
		
// if no error occured, continue ....
		   if(!isset($errMSG))
		{
			
			if (mysqli_multi_query($connection, $sql)) {
    echo "New records created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($connection);
}
			
		}		


}

?>