<!DOCTYPE html>
<html>
<head>
    <link rel="Website Icon" href="css/images/logo2.png" type="png" >
	<meta charset="utf-8">
	<title>QR Generator</title>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/qr.css">
    <!-- Latest compiled and minified CSS -->
</head>
<body>
<header>
        <div class="logo_image"> <img src="css/images/logo2.png" alt="HIS Logo" width="80" height="80"> </div>
        <a href="#" class="logo">Hospital Information System</a>
        <nav class="navigation">
            <a href="#map">The Map</a>
            <a href="#Patient-Search">Patient Search</a>
            <a href="#Staff-Search">Staff Search</a>
            <a href="#contact">Contact</a>
            <a href="Policies.html">Policies</a>
            <a href="qr.php">QR Generator</a>
            <a href="logout.php">Logout</a>
        </nav>
    </header>


<div class="main">
	
	<div class="row">
		<div class="">
			<form method="POST">
				<div class="form-group">
					<label for="">PID</label>
					<input type="text" class="form-control" name="PID">
				</div>
				<button type="submit" class="btn " btn-primary  name="generate">Generate QRCode</button>
			</form>
		</div>
		<div class="">
			<?php
            include "connect2.php";
            session_start();
				if(isset($_POST['generate'])){

					$code = $_POST['PID'];
                    $Result = mysqli_query($conn, "SELECT patient.* , payment_details.BillAmount FROM patient INNER JOIN payment_details  on patient.PID=payment_details.p_id WHERE PID='$code'");
                if (mysqli_num_rows($Result) > 0) {
                    while ($row = mysqli_fetch_assoc($Result)) {
					// echo 
                    // "<a href='patient-information.php'>"."<?php
                    //     $_SESSION['patient-case'] = $row['case'];
                    //     $_SESSION['patient-name'] = $row['firstname'];
                    //     $_SESSION['patient-gender'] = $row['gender'];
                    //     $_SESSION['patient-age'] = $row['age'];
                    //     $_SESSION['patient-address'] = $row['address'];
                    //     $_SESSION['patient-phone'] = $row['phone'];
                    //     $_SESSION['patient-email'] = $row['email'];
                        // $_SESSION['patient-Bill'] = $row['BillAmount']; <img src='https://chart.googleapis.com/chart?chs=300x300&cht=qr&chl=$code&choe=UTF-8'></a>";
		// 		 }
        //     }
        // } 
		// 	?>
		</div>
	</div>
</div>
<div class="position">
<h1 class="page-header text-center">Get patient Qr code</h1>
<a href='patient-information.php'><?php
                        $_SESSION['patient-case'] = $row['case'];
                        $_SESSION['patient-name'] = $row['firstname'];
                        $_SESSION['patient-gender'] = $row['gender'];
                        $_SESSION['patient-age'] = $row['age'];
                        $_SESSION['patient-address'] = $row['address'];
                        $_SESSION['patient-phone'] = $row['phone'];
                        $_SESSION['patient-email'] = $row['email'];
                        $_SESSION['patient-Bill'] = $row['BillAmount']; ?>  <img class="QRIMG" src='https://chart.googleapis.com/chart?chs=300x300&cht=qr&chl=<?php echo "http://localhost/him/him/patient-information.php"?>&choe=UTF-8'></a>
				<?php
                    }}else {
                        echo "ID doesn't exist";
                    }
                }
                    ?>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>