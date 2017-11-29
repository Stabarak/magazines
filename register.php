<?php
$con=mysqli_connect('localhost','root','','magazine') or die("Failde to connect to DataBase" . mysqli_connect_error());



if(isset($_POST['submit1']))
{
	$uname=$_POST['huname'];
	$fname=$_POST['hfname'];
		$lname=$_POST['hlname'];
			$phone=$_POST['hphone'];
				$email=$_POST['hemail'];
	$pass=$_POST['hpass'];
		$gender=$_POST['hgender'];
	if($uname!='' && $pass!='')
	{
		mysqli_query($con,"insert into `users`(`uname`,`fname`,`lname`,`phone`,`email`,`pass`,`gender`) values('$uname','$fname','$lname','$phone','$email','$pass','$gender')");
			echo "<center></br></br><span>Registerd Successfully<br><br><a href=\"home.html\" vspace=\"20\">Click Here to Log-In Now</a><br>
					<a href=\"register.html\" vspace=\"10\">Go Back</a></span></center>";
	}
	else
	{
		echo "<p>Insertion Failder<br/>Some Fields are Blank</p>";
	}
}
else
{
	echo "Problem";
}

?>