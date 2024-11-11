<?php 
	require_once 'functions.php';
	require_once 'config.php';
	define ("title", "Manage Catalog");
	define ("page_name", "Catalog");
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
				<div class="card-header">
				  <h3 class="card-title"><?php echo page_name; ?></h3>
				  <a href="add-catalog.php">
						<button type="button" class="btn bg-gradient-secondary pull-right">Add New Catalog</button></a>
				</div>
				<!-- /.card-header -->
				<?php 
				$msg = null;
				
				if(isset($_GET['did'])){
					if($sql = $conn->prepare("DELETE FROM catalog WHERE id='".$_GET['did']."'")){
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
					  <th>Name</th>
					  <th>File</th>
					  
					  <th>Action</th>
					</tr>
					</thead>
					<tbody>
						<?php 
						$i=0;
						$category = $conn->query("SELECT * FROM catalog ORDER BY id DESC");
							while($row = $category->fetch_assoc()){
							    $i++;
								?> 
					<tr>
						<td><?php 
						  	echo $i ?></td>
					  <td><?= $row['name']?></td>
					  <td><a href="uploads/<?= $row['image']?>" target="_blank"><?= $row['image']?></a></td>
					  
						<td>
							<a href="edit-catalog.php?cid=<?php echo $row['id']?>" class="btn btn-sm btn-primary mbr-5">
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

</body>
</html>