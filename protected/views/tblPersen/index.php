<?php
/* @var $this TblPersenController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tbl Persens',
);

$this->menu=array(
	array('label'=>'Create TblPersen', 'url'=>array('create')),
	array('label'=>'Manage TblPersen', 'url'=>array('admin')),
);
?>

<h1>Tbl Persens</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
