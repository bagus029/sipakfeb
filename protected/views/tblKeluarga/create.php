<?php
/* @var $this TblKeluargaController */
/* @var $model TblKeluarga */

$this->breadcrumbs=array(
	'Tbl Keluargas'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List TblKeluarga', 'url'=>array('index')),
	array('label'=>'Manage TblKeluarga', 'url'=>array('admin')),
);
?>

<h1>Create TblKeluarga</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>