<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<title>Forget Password</title>
    	<!-- Tell the browser to be responsive to screen width -->
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    
    	<!-- Font Awesome -->
    	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    	<!-- Ionicons -->
    	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    	<!-- DataTables -->
    	<link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap4.css">
    	<!-- Theme style -->
    	<link rel="stylesheet" href="dist/css/adminlte.min.css">
    	<link rel="stylesheet" href="dist/css/custom.css">
    	<!-- Google Font: Source Sans Pro -->
    	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    	<link rel="stylesheet" href="plugins/select2/css/select2.min.css">
    </head>
    <body style="background:grey">
    	<div class="container">
    	    <div class="row">
    	        <div class="col-md-3"></div>
    	        <div class="col-md-5 mt-5">
    	            <div class="card login-box-main">
    	                <div class="card-header box-title">
    	                    <h3>FORGET PASSWORD</h3>
    	                </div>
    	                
    	                <div class="card-body">
    	                    <form method="POST" action="crer.php">
    	                        <lable class="field-title">Enter Your Email</lable>
    	                            <input type="email" class="form-control" name="email" required placeholder="Enter You Email"><br>
    	                        
    	                            <button name="crer" type="submit" class="btn btn-primary login-btn" name="submit">Submit</button>
    	                    </form>
    	                </div>
    	            </div>
    	        </div>
    	        <div class="col-md-3"></div>
    	    </div>
    	</div>
            <div class="float-right d-none d-sm-block forget-footer">
               <p><a href="http://www.webxpertindia.com/">  Designed and Promoted by  Web Expert India <img src="dist/img/wxi logo.png" style="width:210px;"></a></p>
            </div>
    </body>
</html>