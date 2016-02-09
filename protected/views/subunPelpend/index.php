<?php
/* @var $this SubunPelpendController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Subun Pelpends',
);

$this->menu=array(
	array('label'=>'Create SubunPelpend', 'url'=>array('create')),
	array('label'=>'Manage SubunPelpend', 'url'=>array('admin')),
);
?>

<h1>Subun Pelpends</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
