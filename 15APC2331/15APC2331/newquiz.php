<?php
  
  $conn_error="could not connected";
  $host='localhost';
  $user='root';
  $pass='';
  $db='assingment';

  $conn=mysqli_connect($host,$user,$pass) or die ($conn_error);
  //echo "connected";
  mysqli_select_db($conn,$db) or die ($conn_error);
 // echo "connected";
  ?> 
<html>
<head><title></title>
<link rel="stylesheet" type="text/css" href="quizstyle.css"></head>
<body>
	<p><center><b><div class=topic>WELCOME TO ONLINE QUIZ</div></b></center></p>
    <p><center><div class=header>You have to select only one out of 4.Best of luck.</div></center></p>
   

</body></html>




<form action="result.php" method="POST">
  <?php
 
	$q = "SELECT * FROM bud ORDER BY rand() limit 5"; 
	$x=1;
	$query = mysqli_query($conn,$q);
	while ($rows = mysqli_fetch_array($query)) {
		?>
<div class="current"><?php echo $x;
?></div>
	
	
<h4 class="card-header"><?php echo $rows['question'] ?></h4>
	
	<?php
	$q = "SELECT * FROM main WHERE ans_id='{$rows['qid']}' order by rand()"; 
	$query1 = mysqli_query($conn, $q);
	$x++;
	while ($rows = mysqli_fetch_array($query1)) { 
		?>
		<div class="card-body">
			<input type="radio" name="quizcheck[<?php echo $rows['ans_id']; ?>]" value="<?php echo $rows['aid']; ?>">
			<?php echo $rows['answer']; 
			
			?>
		</div>

	<?php  
} 
}
 ?>
 </div>

 <div class="butten">
 <input  type="submit" name="submit" value="Submit" >
 <a href="result.php">

</div>

 
 </form>
 