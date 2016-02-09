<?php
/* @var $this SubunPengabdianController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Subun Pengabdians',
);

$this->menu=array(
	array('label'=>'Create SubunPengabdian', 'url'=>array('create')),
	array('label'=>'Manage SubunPengabdian', 'url'=>array('admin')),
);
?>

<h1>Subun Pengabdians</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
