<?php
/* @var $this TblStatusPernikahanController */
/* @var $model TblStatusPernikahan */

$this->breadcrumbs=array(
	'Tbl Status Pernikahans'=>array('index'),
	$model->ID_STATUS,
);

$this->menu=array(
	array('label'=>'List TblStatusPernikahan', 'url'=>array('index')),
	array('label'=>'Create TblStatusPernikahan', 'url'=>array('create')),
	array('label'=>'Update TblStatusPernikahan', 'url'=>array('update', 'id'=>$model->ID_STATUS)),
	array('label'=>'Delete TblStatusPernikahan', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->ID_STATUS),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage TblStatusPernikahan', 'url'=>array('admin')),
);
?>

<h1>View TblStatusPernikahan #<?php echo $model->ID_STATUS; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'ID_STATUS',
		'STATUS',
	),
)); ?>
