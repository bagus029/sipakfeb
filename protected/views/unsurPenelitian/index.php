<?php
/* @var $this UnsurPenelitianController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Unsur Penelitians',
);

$this->menu=array(
	array('label'=>'Create UnsurPenelitian', 'url'=>array('create')),
	array('label'=>'Manage UnsurPenelitian', 'url'=>array('admin')),
);
?>

<h1>Unsur Penelitians</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
