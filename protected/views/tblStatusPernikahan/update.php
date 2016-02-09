<?php
/* @var $this TblStatusPernikahanController */
/* @var $model TblStatusPernikahan */

$this->breadcrumbs=array(
	'Tbl Status Pernikahans'=>array('index'),
	$model->ID_STATUS=>array('view','id'=>$model->ID_STATUS),
	'Update',
);

$this->menu=array(
	array('label'=>'List TblStatusPernikahan', 'url'=>array('index')),
	array('label'=>'Create TblStatusPernikahan', 'url'=>array('create')),
	array('label'=>'View TblStatusPernikahan', 'url'=>array('view', 'id'=>$model->ID_STATUS)),
	array('label'=>'Manage TblStatusPernikahan', 'url'=>array('admin')),
);
?>

<h1>Update TblStatusPernikahan <?php echo $model->ID_STATUS; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>