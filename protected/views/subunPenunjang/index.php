<?php
/* @var $this SubunPenunjangController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Subun Penunjangs',
);

$this->menu=array(
	array('label'=>'Create SubunPenunjang', 'url'=>array('create')),
	array('label'=>'Manage SubunPenunjang', 'url'=>array('admin')),
);
?>

<h1>Subun Penunjangs</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
