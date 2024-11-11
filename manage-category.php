<?php 
	require_once 'functions.php';
	require_once 'config.php';
	define ("title", "Manage Category");
	define ("page_name", "Category");
	if(empty($_SESSION['admin'])){
	    header('location:index.php');
	    exit();
	}
?>
<!DOCTYPE html>
<html>
<head>

	<?php head();?>
	
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<?php header2();?>
		<?php sidebar();?>
		
		<div class="content-wrapper">
			<?php breadcumb();?>
		
		<!-- Main content -->
		<section class="content">
		  <div class="row">
			<div class="col-12">
			  <div class="card">
				<div class="card-header upper-sec">
				  <h3 class="card-title"><?php echo page_name; ?></h3>
				  <a href="add-category.php">
						<button type="button" class="btn bg-gradient-secondary pull-right">Add New Category</button></a>
				</div>
				<!-- /.card-header -->
				<?php 
				$msg = null;
				
				if(isset($_GET['did'])){
					if($sql = $conn->prepare("DELETE FROM category WHERE id='".$_GET['did']."'")){
						$sql->execute();
						$msg = "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button>Record Deleted Successfully.</div>";
					}
				}
				echo $msg;
				?>
				<div class="card-body">
				  <table id="example1" class="table table-bordered table-hover">
					<thead>
					<tr>
					  <th>S.No.</th>
					  <th>Category Name</th>
					  
					  <th>Status</th>
					  <th>Action</th>
					</tr>
					</thead>
					<tbody>
						<?php 
						$i=0;
						$category = $conn->query("SELECT * FROM category ORDER BY id DESC");
							while($row = $category->fetch_assoc()){
							    $i++;
								?> 
					<tr>
						<td><?php 
						  	echo $i ?></td>
					  <td><?= $row['category_name']?></td>
					 
					  <td><?php if($row['status']==1) {echo "<div class='mb-xs mt-xs mr-xs btn btn-sm btn-success mbr-5'>Active</div>";} else{ echo "<div class='mb-xs mt-xs mr-xs btn btn-sm btn-warning mbr-5'>InActive</div>";} ?></td>
						<td>
							<a href="edit-category.php?cid=<?php echo $row['id']?>" class="btn btn-sm btn-primary mbr-5">
							<i class="fa fa-eye">&nbsp;</i>Edit
							</a>
							<a href="?did=<?php echo $row['id']; ?>" onclick="return confirm('Are you sure ?')" class="btn btn-sm btn-danger mbr-5">
							<i class="fa fa-trash">&nbsp;</i>Delete
							</a>
							
						</td>
					</tr>
				<?php } ?>
					</tbody>
					
				  </table>
				  
				</div>
				<!-- /.card-body -->
			  </div>
			  <!-- /.card -->
			</div>
			<!-- /.col -->
		  </div>
		  <!-- /.row -->
		</section>
		<!-- /.content -->
	
		</div>
		
		
		<?php footer2();?>
		
	</div>
	
	<?php js();?>


<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
    //   "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>


</body>
</html>