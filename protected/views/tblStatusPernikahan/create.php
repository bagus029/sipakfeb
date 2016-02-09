<?php
/* @var $this TblStatusPernikahanController */
/* @var $model TblStatusPernikahan */

$this->breadcrumbs=array(
	'Tbl Status Pernikahans'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List TblStatusPernikahan', 'url'=>array('index')),
	array('label'=>'Manage TblStatusPernikahan', 'url'=>array('admin')),
);
?>

<h1>Create TblStatusPernikahan</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>