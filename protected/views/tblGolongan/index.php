<?php
/* @var $this TblGolonganController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tbl Golongans',
);

$this->menu=array(
	array('label'=>'Create TblGolongan', 'url'=>array('create')),
	array('label'=>'Manage TblGolongan', 'url'=>array('admin')),
);
?>

<h1>Tbl Golongans</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
