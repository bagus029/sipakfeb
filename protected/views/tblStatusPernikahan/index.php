<?php
/* @var $this TblStatusPernikahanController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tbl Status Pernikahans',
);

$this->menu=array(
	array('label'=>'Create TblStatusPernikahan', 'url'=>array('create')),
	array('label'=>'Manage TblStatusPernikahan', 'url'=>array('admin')),
);
?>

<h1>Tbl Status Pernikahans</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
