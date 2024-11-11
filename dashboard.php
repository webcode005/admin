<?php 
	require_once 'functions.php';
	require_once 'config.php';
	define ("title", "Dashboard");
	define ("page_name", "Dashboard");
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
                <div class="container-fluid">
                    <!-- Small boxes (Stat box) -->
                    <div class="row">
                        <div class="col-lg-3 col-6 d-none">
                            <!-- small box -->
                            <div class="small-box bg-warning">
                                <div class="inner">
                                    <?php 
                                    $sql1=$conn->query("SELECT COUNT(id) as subcat FROM sub_category");
                                    $c1 = $sql1->fetch_array();
                                    ?>
                                    <h3><?php echo $c1['subcat'];?></h3>

                                    <p>Sub Category</p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-bag"></i>
                                </div>
                                <a href="manage-sub-category.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        
                        <!-- ./col -->
                        
                          <div class="col-lg-3 col-6">
                            <!-- small box -->
                            <div class="small-box bg-info">
                                <div class="inner">
                                    <?php 
                                    $sql1=$conn->query("SELECT COUNT(id)as cat FROM category");
                                    $c1 = $sql1->fetch_array();
                                    ?>
                                    <h3><?php echo $c1['cat'];?></h3>

                                    <p>Category</p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-bag"></i>
                                </div>
                                <a href="manage-category.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        
                        <div class="col-lg-3 col-6">
                            <!-- small box -->
                            <div class="small-box bg-success">
                                <div class="inner">
                                    <?php 
                                    $sql2=$conn->query("SELECT COUNT(id)as pro FROM product");
                                    $c2 = $sql2->fetch_array();
                                    ?>
                                   <h3><?php echo $c2['pro'];?></h3>

                                    <p>Product</p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-stats-bars"></i>
                                </div>
                                <a href="manage-product.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- ./col -->
                        <div class="col-lg-3 col-6 d-none">
                            <!-- small box -->
                            <div class="small-box bg-danger">
                                <div class="inner">
                                     <?php 
                                    $sql3=$conn->query("SELECT COUNT(id)as test FROM testimonial");
                                    $c3 = $sql3->fetch_array();
                                    ?>
                                   <h3><?php echo $c3['test'];?></h3>
                                    <p>Testimonial</p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-pie-graph"></i>
                                </div>
                                <a href="manage-testimonial.php" class="small-box-footer">More info<i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- ./col -->
                        <div class="col-lg-3 col-6 d-none">
                            <!-- small box -->
                            <div class="small-box bg-warning">
                                <div class="inner">
                                    <?php 
                                    $sql4=$conn->query("SELECT COUNT(id)as vid FROM video");
                                    $c4 = $sql4->fetch_array();
                                    ?>
                                   <h3><?php echo $c4['vid'];?></h3>

                                    <p>Video</p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-person-add"></i>
                                </div>
                                <a href="manage-video.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- ./col -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </section>
            <!-- /.content -->
		</div>
		
		
		<?php footer2();?>
		
	</div>
	
	<?php js();?>
	
</body>
</html>