<?php
/* @var $this SubunPendController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Subun Pends',
);

$this->menu=array(
	array('label'=>'Create SubunPend', 'url'=>array('create')),
	array('label'=>'Manage SubunPend', 'url'=>array('admin')),
);
?>

<h1>Subun Pends</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
