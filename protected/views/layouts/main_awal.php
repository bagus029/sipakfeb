<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>SIANGKER</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	
</head>
<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
					<i class="icon-reorder shaded"></i>
				</a>

			  	<a class="brand" href="index.php">
			  		SIANGKER
			  	</a>

				<div class="nav-collapse collapse navbar-inverse-collapse">
					<ul class="nav nav-icons">
						<li class="active"><a href="#">
							<i class="icon-envelope"></i>
						</a></li>
						<li><a href="#">
							<i class="icon-eye-open"></i>
						</a></li>
						<li><a href="#">
							<i class="icon-bar-chart"></i>
						</a></li>
					</ul>

					<form class="navbar-search pull-left input-append" action="#">
						<input type="text" class="span3">
						<button class="btn" type="button">
							<i class="icon-search"></i>
						</button>
					</form>
				
					<ul class="nav pull-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">Item No. 1</a></li>
								
								<li><a href="#">Don't Click</a></li>
								<li class="divider"></li>
								<li class="nav-header">Example Header</li>
								<li><a href="#">A Separated link</a></li>
															</ul>
						</li>
						
						<li><a href="#">
							Support
						</a></li>
						<li class="nav-user dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<img src="images/user.png" class="nav-avatar" />
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li><a href="#">Your Profile</a></li>
								<li><a href="#">Edit Profile</a></li>
								<li><a href="#">Account Settings</a></li>
								<li class="divider"></li>
								<li><?php echo CHtml::link('<span class="glyphicon glyphicon-log-out"></span> Logout ',array('/site/logout'));?></li>
							</ul>
						</li>
					</ul>
				</div><!-- /.nav-collapse -->
			</div>
		</div><!-- /navbar-inner -->
	</div><!-- /navbar -->



	<div class="wrapper">
		<div class="container">
			<div class="row">
				<div class="span3">
					<div class="sidebar">
										
						<ul class="widget widget-menu unstyled">
                                                        <li><?php if(Yii::app()->user->LEVEL==1)echo CHtml::link('<i class="menu-icon icon-dashboard"></i> Beranda ',array('site/index'));?></li>
                                                        <li><?php if(Yii::app()->user->LEVEL==1)echo CHtml::link('<i class="menu-icon icon-group"></i> Data Dosen',array('tblDosen/admin'));?></li>
                                                        <li><?php if(Yii::app()->user->LEVEL==1)echo CHtml::link('<i class="menu-icon icon-inbox"></i> Angka Kredit Tetap',array('tblDosen/aktetap'));?></li>
                                                        <li><?php if(Yii::app()->user->LEVEL==1)echo CHtml::link('<i class="menu-icon icon-user"></i> Pengajuan Angka Kredit',array('tblDosen/pengajuanak'));?></li>
                                                        <li><?php if(Yii::app()->user->LEVEL==1)echo CHtml::link('<i class="menu-icon icon-tasks"></i> Fakultas',array('tblFakultas/admin'));?></li>
                                                        <li><?php if(Yii::app()->user->LEVEL==1)echo CHtml::link('<i class="menu-icon icon-tasks"></i> Jurusan',array('tblJurusan/admin'));?></li>
                                                        <li><?php if(Yii::app()->user->LEVEL==1)echo CHtml::link('<i class="menu-icon icon-tasks"></i> Golongan Dosen',array('tblGolongan/admin'));?></li>
                                                        <li><?php if(Yii::app()->user->LEVEL==1)echo CHtml::link('<i class="menu-icon icon-tasks"></i> Jabatan Dosen',array('tblJabatan/admin'));?></li>
                                                        <li><?php if(Yii::app()->user->LEVEL==1)echo CHtml::link('<i class="menu-icon icon-tasks"></i> Status Kepegawaian',array('tblStatusKepegawaian/admin'));?></li>
                                                        <li><?php if(Yii::app()->user->LEVEL==1)echo CHtml::link('<i class="menu-icon icon-inbox"></i> Sub Unsur',array('site/subun'));?></li>
                                                        <li><?php if(Yii::app()->user->LEVEL==1)echo CHtml::link('<i class="menu-icon icon-inbox"></i> Pengguna',array('user/admin'));?></li>
                                                        <li><?php if(Yii::app()->user->LEVEL==2)echo CHtml::link('<i class="menu-icon icon-dashboard"></i> Beranda ',array('site/index'));?></li>
                                                        <li><?php if(Yii::app()->user->LEVEL==2)echo CHtml::link('<i class="menu-icon icon-dashboard"></i> Info Angka Kredit',array('site/indexdosen'));?></li>
                                                        <li><?php if(Yii::app()->user->LEVEL==2)echo CHtml::link('<i class="menu-icon icon-dashboard"></i> Dokumen Saya',array('tblDokumenDosen/indexDosen'));?></li>
                                                        <li><?php echo CHtml::link('<i class="menu-icon icon-signout"></i> Logout ',array('/site/logout'));?></li>
                                                </ul>
                                                
					</div><!--/.sidebar-->
				</div><!--/.span3-->


				<div class="span9">
					<div class="content">
                                            <?php //if(isset($this->breadcrumbs)):?>
                                            <?php //$this->widget('zii.widgets.CBreadcrumbs', array(
                                                //'links'=>$this->breadcrumbs,
                                            //)); ?><!-- breadcrumbs -->
                                            <?php //endif?>

                                            <?php echo $content; ?>
					</div><!--/.content-->
				</div><!--/.span9-->
			</div>
		</div><!--/.container-->
	</div><!--/.wrapper-->

	<div class="footer">
		<div class="container">
			<b class="copyright">&copy; 2015 PSI-FEB </b> All rights reserved.
		</div>
	</div>

	
	<script src="bootstrap/js/bootstrap.min.js"></script>
	
</body>
</html>