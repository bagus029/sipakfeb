<?php
/* @var $this UnsurPengabdianController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Unsur Pengabdians',
);

$this->menu=array(
	array('label'=>'Create UnsurPengabdian', 'url'=>array('create')),
	array('label'=>'Manage UnsurPengabdian', 'url'=>array('admin')),
);
?>

<h1>Unsur Pengabdians</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
