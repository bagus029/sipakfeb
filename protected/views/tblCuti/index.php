<?php
/* @var $this TblCutiController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tbl Cutis',
);

$this->menu=array(
	array('label'=>'Create TblCuti', 'url'=>array('create')),
	array('label'=>'Manage TblCuti', 'url'=>array('admin')),
);
?>

<h1>Tbl Cutis</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
