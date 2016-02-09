<?php
/* @var $this TblCutiController */
/* @var $model TblCuti */

$this->breadcrumbs=array(
	'Tbl Cutis'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List TblCuti', 'url'=>array('index')),
	array('label'=>'Manage TblCuti', 'url'=>array('admin')),
);
?>

<h1>Create TblCuti</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>