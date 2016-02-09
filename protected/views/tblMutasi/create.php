<?php
/* @var $this TblMutasiController */
/* @var $model TblMutasi */

$this->breadcrumbs=array(
	'Tbl Mutasis'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List TblMutasi', 'url'=>array('index')),
	array('label'=>'Manage TblMutasi', 'url'=>array('admin')),
);
?>

<h1>Create TblMutasi</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>