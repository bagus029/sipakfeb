<?php
/* @var $this TblGajiController */
/* @var $model TblGaji */

$this->breadcrumbs=array(
	'Tbl Gajis'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List TblGaji', 'url'=>array('index')),
	array('label'=>'Manage TblGaji', 'url'=>array('admin')),
);
?>

<h1>Create TblGaji</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>