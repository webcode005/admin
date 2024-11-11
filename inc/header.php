<?php function head() { ?>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title><?php echo title; ?></title>
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
	
<?php } function header2(){ ?>

  

<?php } function sidebar(){ ?>


	<!-- Main Sidebar Container -->
	<aside class="main-sidebar sidebar-light-primary elevation-4">
    <!-- Brand Logo -->
		
		<!-- Sidebar -->
		<div class="sidebar">
			<!-- Sidebar user (optional) -->
			<div class="user-panel mt-3 pb-3 mb-3 d-flex">
				<div class="image">
					<img src="Ayan-Exim-India-logo.png" class="img-circle elevation-2" alt="User Image">
				</div>
				
			</div>
			<style>
			.image
			{
			    background-color:#fff;
			    padding:10px;
			}
			    .user-panel img
			    {
			            width: 205px!important;
			            height: auto!important;
			    }
			    .img-circle{
			        border-radius :0px!important;
			    }
			    .elevation-2
			    {
			        box-shadow:none!important;
			    }
			</style>

			<!-- Sidebar Menu -->
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
				<!-- Add icons to the links using the .nav-icon class
					with font-awesome or any other icon font library -->
					
					<li class="nav-item">
						<a href="index.php" class="nav-link">
							<i class="nav-icon fas fa-th"></i>
							<p>Dashboard</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="manage-category.php" class="nav-link">
							<i class="nav-icon fas fa-th"></i>
							<p>All Category</p>
						</a>
					</li>
					<!--<li class="nav-item">-->
					<!--	<a href="manage-sub-category.php" class="nav-link">-->
					<!--		<i class="nav-icon fas fa-th"></i>-->
					<!--		<p>All Sub Category</p>-->
					<!--	</a>-->
					<!--</li>-->
					<li class="nav-item">
						<a href="manage-product.php" class="nav-link">
							<i class="nav-icon fas fa-th"></i>
							<p>All Products</p>
						</a>
					</li>
				
					
				    <li class="nav-item">
						<a href="https://webexpertindia.online/ayan/" target="_blank" class="nav-link">
							<i class="nav-icon fas fa-th"></i>
							<p>Visit Website</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="create-new-password.php" class="nav-link">
							<i class="nav-icon fas fa-th"></i>
							<p>Change Password</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="logout.php" class="nav-link">
							<i class="nav-icon fas fa-th"></i>
							<p>Logout</p>
						</a>
					</li>
					
				</ul>
			</nav>
			<!-- /.sidebar-menu -->
		</div>
		<!-- /.sidebar -->
	</aside>

<?php } function breadcumb(){ ?>
		<!-- Content Header (Page header) -->
		<section class="content-header">
		  <div class="container-fluid">
			<div class="row mb-2">
			  <div class="col-sm-6">
				<h1><?php echo page_name; ?></h1>
			  </div>
			  <div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
				  <li class="breadcrumb-item"><a href="https://webexpertindia.online/premierbag-2/new-admin/dashboard.php">Home</a></li>
				  <li class="breadcrumb-item active"><?php echo page_name; ?></li>
				</ol>
			  </div>
			</div>
		  </div><!-- /.container-fluid -->
		</section>
		
<?php } function mobile_menu(){ ?>

<?php } ?>