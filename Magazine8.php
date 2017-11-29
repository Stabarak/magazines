<!DOCTYPE HTML>
<html>
	<head>
		<title>E-Magazine</title>
	</head>
	<style>
	 h5
	 { 
	 text-align:center;
	 display:inline-block;
	 }
	 
	 </style>
	<body style="background-image:url('sports.jpg');background-position:center;padding-top:150px;background-repeat:no-repeat;background-size:cover;text-shadow:3px 2px 4px grey;">
		<h1 align="center">Welcome to E - Magazine</h1>
		<h4 align="center">The World of Magazines</h4>
		<div align="right">
			<form method="post" action="http://localhost/magazine/logout.php">
				<input style="align:right;" type="submit" name="logout" value="Log Out"/>
			</form>
		</div>

		<hr>
				<center>
					<a href="Category2.html" style="text-decoration:none"><h5>Back |</h5></a>
					<a href="menu.html" style="text-decoration:none"><h5> Home</h5></a>
				</center>
		<center>
		<div style="width:60%;" align="center">
		<fieldset style="width:100%;padding:10px;text-align:center" align="center"><legend>Match of the Day</legend>
			<form action="http://localhost/magazine/Magazine8.php" method="get">
			<div align="center">
				<input type="submit" name="magazine" value="Details of Magazine" hspace="5" vspace="5"/>
				<input type="submit" name="publisher" value="Details of Publisher" hspace="5" vspace="5"/>
				<input type="submit" name="editor" value="Details of Editor" hspace="5" vspace="5"/>
				<input type="submit" name="download" value="Download Magazine" hspace="5" vspace="5"/><br>
				<!--input type ='text' value ='<?php echo "$row[1]"?>'/-->
			</div>
		</form>
		</fieldset>
		</div>
		
		<center>
			<a href="Category2.html" style="text-decoration:none"><h5 align="left">Back |</h5></a>
			<a href="menu.html" style="text-decoration:none"><h5 align="right"> Home</h5></a>
		</center>

<?php
$con=mysqli_connect('localhost','root','') or die("Failde to connect to DataBase" . mysqli_connect_error());
$db=mysqli_select_db($con,'magazine') or die("Failed to connect to DataBase" . mysqli_connect_error());

if(!$con)
{
	echo "not foud";
}


if(isset($_GET['magazine']))
{
	$query="select * from magz where mid=14";
	$result=mysqli_query($con,$query);
	while($row=mysqli_fetch_array($result))
	{	
		//$mname=$row[1];
		echo "MagazineName:<input type ='text' value ='$row[1]'>ReleasedDate:<input type ='text' value ='$row[2]'></br>No. of Pages:<input type ='text' value ='$row[3]'>Language:<input type ='text' value ='$row[4]'><br/>Frequncy:<input type ='text' value ='$row[5]'>";
		//header("Location:Magazine1.html");
		//echo "<script>alert(' | Magazine Name:$row[1] || Released Date:$row[2] || No of Pages:$row[3] || Language:$row[4] |');</script>";
		//echo "<script>document.location.href='Magazine1.html'</script>";
	}
}
elseif(isset($_GET['editor']))
{
		$query="select * from editors where magid=14";
	$result=mysqli_query($con,$query);
	while($row=mysqli_fetch_array($result))
	{	
		//echo "<script>alert(' | Editor Name:$row[1] |');</script>";
echo "EditorName:<input type ='text' value ='$row[1]'>";		
		//echo "<script>document.location.href='Magazine1.html'</script>";
	}
}

elseif(isset($_GET['download']))
{
	header('Content-type:application/pdf');
	header('Content-Disposition:attachment; filename="downloaded.pdf"');
	readfile('C:/xampp/htdocs/magazine/magazines/Match of the Day.pdf');
}
elseif(isset($_GET['publisher']))
{
		$query="select * from publisher where magid=14";
	$result=mysqli_query($con,$query);
	while($row=mysqli_fetch_array($result))
	{	
		//echo "<script>alert(' | Publisher Name:$row[1] || Founded:$row[2] || Address:$row[3] |');</script>";
		//echo "<script>document.location.href='Magazine1.html'</script>";
		echo "PublisherName:<input type ='text' value ='$row[1]'>Founded:<input type ='text' value ='$row[2]'></br>Address:<input type ='text' value ='$row[3]'>";
	}
}
?>
	</body>
</html>