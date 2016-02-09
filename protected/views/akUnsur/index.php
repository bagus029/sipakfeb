<?php
/* @var $this AkUnsurController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Ak Unsurs',
);

$this->menu=array(
	array('label'=>'Create AkUnsur', 'url'=>array('create')),
	array('label'=>'Manage AkUnsur', 'url'=>array('admin')),
);
?>

<h1>Ak Unsurs</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
