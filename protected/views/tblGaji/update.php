<?php
/* @var $this TblGajiController */
/* @var $model TblGaji */

$this->breadcrumbs=array(
	'Tbl Gajis'=>array('index'),
	$model->ID_GAJI=>array('view','id'=>$model->ID_GAJI),
	'Update',
);

$this->menu=array(
	array('label'=>'List TblGaji', 'url'=>array('index')),
	array('label'=>'Create TblGaji', 'url'=>array('create')),
	array('label'=>'View TblGaji', 'url'=>array('view', 'id'=>$model->ID_GAJI)),
	array('label'=>'Manage TblGaji', 'url'=>array('admin')),
);
?>

<h1>Update TblGaji <?php echo $model->ID_GAJI; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>