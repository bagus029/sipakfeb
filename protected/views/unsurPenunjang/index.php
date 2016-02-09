<?php
/* @var $this UnsurPenunjangController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Unsur Penunjangs',
);

$this->menu=array(
	array('label'=>'Create UnsurPenunjang', 'url'=>array('create')),
	array('label'=>'Manage UnsurPenunjang', 'url'=>array('admin')),
);
?>

<h1>Unsur Penunjangs</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
