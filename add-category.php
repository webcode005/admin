<?php 

	require_once 'functions.php';
	require_once 'config.php';
	define ("title", "Add Category");
	define ("page_name", "Category");
	if(empty($_SESSION['admin'])){
	    header('location:index.php');
	    exit();
	}
	$msg=null;
	if(isset($_POST['submit'])){
	     $category_name = $_POST['category_name'];
	     
	        $seo_title = $_POST['seo_title'];
            $seo_keyword = $_POST['seo_keyword'];
            $seo_description = $_POST['seo_description'];
	     
	         if(empty($_POST['category_name'])){
                $url_key = str_replace("---","-",preg_replace("/[^-a-zA-Z0-9s]/", "-", strtolower(trim($category_name))));
                }
                else{
                $url_key = str_replace("---","-",preg_replace("/[^-a-zA-Z0-9s]/", "-", strtolower(trim($_POST['category_name']))));
                }
	    
	    $insert = $conn->prepare("INSERT INTO category SET category_name=?,url_key=?, seo_title=?, seo_keyword=?, seo_description=?");
	    
	    $insert->bind_param("sssss",$category_name,$url_key, $seo_title, $seo_keyword, $seo_description);
	    
	    $insert->execute();
	    if($conn->affected_rows==1){
    $msg = "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button>Record has been Inserted successfully</div>";
}
	    
	}
?>

<!DOCTYPE html>
<html>
<head>

	<?php head();?>
	
		<!-- summernote -->
		<link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
		<link rel="stylesheet" href="plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
	
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<?php header2();?>
		<?php sidebar();?>
		
		<div class="content-wrapper">
			<?php breadcumb();?>
					
					<section class="content">
						<div class="container-fluid">
							<div class="row">
								<!-- left column -->
								<div class="col-md-12">
									<!-- general form elements -->
									<?php echo $msg;?>
									
									<form role="form" method="POST" enctype="multipart/form-data">
									
									<div class="card card-primary">
										<div class="card-header">
											<h3 class="card-title">Add Category</h3>
										</div>
										<!-- /.card-header -->
										<!-- form start -->

										
											<div class="card-body">
												
												<div class="row">
													<div class="col-3">
														<div class="form-group">
															<label for="product_name">Category Name</label>
														</div>
													</div>
													<div class="col-6">
														<div class="form-group">
															<input type="text" class="form-control" id="" required name="category_name" placeholder="Enter Category Name">
														</div>
													</div>
												</div>
												
											</div>
												<!--<div class="card-footer">-->
												<!--	<div class="col-3 form-group">-->
												<!--		<button type="submit" name="submit" class="btn btn-block btn-secondary">Submit</button>-->
												<!--	</div>-->
												<!--</div>-->
											<!-- /.card-body -->
										
									</div>
									<!-- /.card -->
									
									
<div class="card card-primary">
<div class="card-header">
<h3 class="card-title">SEO</h3>
</div>

<div class="card-body">

<div class="row">
	<div class="col-3">
		<div class="form-group">
			<label for="product_name">SEO Title</label>
		</div>
	</div>
	<div class="col-9">
		<div class="form-group">
			<input type="text" class="form-control" name="seo_title">
		</div>
	</div>
</div>
<div class="row">
	<div class="col-3">
		<div class="form-group">
			<label for="product_name">SEO Description</label>
		</div>
	</div>
	<div class="col-9">
		<div class="form-group">
			<textarea class="form-control" name="seo_description" id="" placeholder="Place some text here" required></textarea>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-3">
		<div class="form-group">
			<label for="product_name">SEO Keyword</label>
		</div>
	</div>
	<div class="col-9">
		<div class="form-group">
			<input type="text" class="form-control" name="seo_keyword">
		</div>
	</div>
</div>
</div>

</div>

	<div class="card-footer">
		<div class="col-3 form-group">
			<button type="submit" name="submit" class="btn btn-block btn-secondary">Submit</button>
		</div>
	</div>
	
	</form>


								</div>
								<!--/.col (left) -->
							</div>
							<!-- /.row -->
						</div>
						<!-- /.container-fluid -->
					</section>
	
		</div>
		
		
		<?php footer2();?>
		
	</div>
	
	<?php js();?>
	<script src="plugins/summernote/summernote-bs4.min.js"></script>
	<script src="plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<script>
  $(function () {
    // Summernote
    $('.textarea').summernote()
    $('.my-colorpicker2').colorpicker()
  })
</script>
</body>
</html>
