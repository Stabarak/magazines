<?php
$con=mysqli_connect('localhost','root','') or die("Failde to connect to DataBase" . mysqli_connect_error());
$db=mysqli_select_db($con,'magazine') or die("Failed to connect to DataBase" . mysqli_connect_error());


if(isset($_POST['resubmit']))
{
	session_start();
	$uname=$_POST['euname'];
	$fname=$_POST['efname'];
	$lname=$_POST['elname'];
	$phone=$_POST['ephone'];
	$email=$_POST['eemail'];
	$password=$_POST['epass'];
	$gender=$_POST['egender'];
	$id=$_SESSION['id'];
	//echo $id;
	if($uname!='')
	{
		$res=mysqli_query($con,"UPDATE `users` SET `uname`='$uname',`fname`='$fname',`lname`='$lname',`phone`='$phone',`email`='$email',`pass`='$password',`gender`='$gender' WHERE `id`='$id'") or die(mysqli_connect_error());
			if(!$res)
			{
				echo "Updated Unsuccessful";
			}
			else
			{
			echo "<center></br></br><span>Updated Successfully<br><br><a href=\"home.html\" vspace=\"20\">Click Here to Log-In Now</a><br>
					<a href=\"edit.html\" vspace=\"10\">Go Back</a></span></center>";
			}
	}
	else
	{
		echo "<p>Insertion Failed<br/>Some Fields are Blank</p>";
	}
}

?>