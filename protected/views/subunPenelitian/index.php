<?php
/* @var $this SubunPenelitianController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Subun Penelitians',
);

$this->menu=array(
	array('label'=>'Create SubunPenelitian', 'url'=>array('create')),
	array('label'=>'Manage SubunPenelitian', 'url'=>array('admin')),
);
?>

<h1>Subun Penelitians</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
