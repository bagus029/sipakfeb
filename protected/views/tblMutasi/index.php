<?php
/* @var $this TblMutasiController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tbl Mutasis',
);

$this->menu=array(
	array('label'=>'Create TblMutasi', 'url'=>array('create')),
	array('label'=>'Manage TblMutasi', 'url'=>array('admin')),
);
?>

<h1>Tbl Mutasis</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
