<?php
/* @var $this UnsurPelPendidikanController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Unsur Pel Pendidikans',
);

$this->menu=array(
	array('label'=>'Create UnsurPelPendidikan', 'url'=>array('create')),
	array('label'=>'Manage UnsurPelPendidikan', 'url'=>array('admin')),
);
?>

<h1>Unsur Pel Pendidikans</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
