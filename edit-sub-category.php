<?php 

	require_once 'functions.php';
	require_once 'config.php';
	define ("title", "Edit Sub Category");
	define ("page_name", "Sub Category");
	if(empty($_SESSION['admin'])){
	    header('location:index.php');
	    exit();
	}
	$msg=null;
	$id=$_GET['cid'];
	$select = $conn->query("SELECT * FROM sub_category WHERE id='".$id."'");
	$row = $select->fetch_array();
	if(isset($_POST['submit'])){
	        $category_id = $_POST['category_id'];
	         $sub_category_name = $_POST['sub_category_name'];
	     // ==========================================================url
	        if(empty($_POST['url_key'])){
                $url_key = str_replace("---","-",preg_replace("/[^-a-zA-Z0-9s]/", "-", strtolower(trim($sub_category_name))));
                }
                else{
                $url_key = str_replace("---","-",preg_replace("/[^-a-zA-Z0-9s]/", "-", strtolower(trim($_POST['url_key']))));
                }
	   //url end ===========================================================
	    $insert = $conn->prepare("UPDATE sub_category SET category_id=?, sub_category_name=?,url_key=? WHERE id='".$id."'");
	    
	    $insert->bind_param("iss",$category_id, $sub_category_name,$url_key);
	    
	    $insert->execute();
	    if($conn->affected_rows==1){
    $msg = "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button>Record has been Updated successfully</div>";
     echo "<script> setTimeout(function () { window.location.href = 'edit-sub-category.php?cid=$id'; }, 1000); </script>";
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
									<div class="card card-primary">
										<div class="card-header">
											<h3 class="card-title">Add Category</h3>
										</div>
										<!-- /.card-header -->
										<!-- form start -->

										<form role="form" method="POST" enctype="multipart/form-data">
											<div class="card-body">
												<div class="row">
													<div class="col-3">
														<div class="form-group">
															<label for="product_name">Category Name</label>
														</div>
													</div>
													<div class="col-6">
														<div class="form-group">
														<select class="form-control" name="category_id">
														    <option>-Select-</option>
														    <?php 
														    $cat = $conn->query("SELECT * FROM category ORDER By id DESC");
														    while($cat_data = $cat->fetch_array()){
														    ?>
														    <option value="<?php echo $cat_data['id'];?>" <?php if($cat_data['id']==$row['category_id']){ echo "selected"; }?>><?php echo $cat_data['category_name'];?></option>
														    <?php } ?>
														</select>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-3">
														<div class="form-group">
															<label for="product_name">Sub Category Name</label>
														</div>
													</div>
													<div class="col-6">
														<div class="form-group">
															<input type="text" class="form-control" id="" name="sub_category_name" value="<?php echo $row['sub_category_name'];?>">
														</div>
													</div>
												</div>
												
											</div>
												<div class="card-footer">
													<div class="col-3 form-group">
														<button type="submit" name="submit" class="btn btn-block btn-secondary">Submit</button>
													</div>
												</div>
											<!-- /.card-body -->
										</form>
									</div>
									<!-- /.card -->

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
