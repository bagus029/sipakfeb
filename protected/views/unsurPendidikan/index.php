<?php
/* @var $this UnsurPendidikanController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Unsur Pendidikans',
);

$this->menu=array(
	array('label'=>'Create UnsurPendidikan', 'url'=>array('create')),
	array('label'=>'Manage UnsurPendidikan', 'url'=>array('admin')),
);
?>

<h1>Unsur Pendidikans</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
