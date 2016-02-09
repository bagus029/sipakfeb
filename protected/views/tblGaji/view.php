<?php
/* @var $this TblGajiController */
/* @var $model TblGaji */

$this->breadcrumbs=array(
	'Tbl Gajis'=>array('index'),
	$model->ID_GAJI,
);

$this->menu=array(
	array('label'=>'List TblGaji', 'url'=>array('index')),
	array('label'=>'Create TblGaji', 'url'=>array('create')),
	array('label'=>'Update TblGaji', 'url'=>array('update', 'id'=>$model->ID_GAJI)),
	array('label'=>'Delete TblGaji', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->ID_GAJI),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage TblGaji', 'url'=>array('admin')),
);
?>

<h1>View TblGaji #<?php echo $model->ID_GAJI; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'ID_GAJI',
		'ID_DOSEN',
		'TGL_GAJIAN',
		'GAJI_POKOK',
	),
)); ?>
