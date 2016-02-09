<?php
/* @var $this TblGajiController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tbl Gajis',
);

$this->menu=array(
	array('label'=>'Create TblGaji', 'url'=>array('create')),
	array('label'=>'Manage TblGaji', 'url'=>array('admin')),
);
?>

<h1>Tbl Gajis</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
