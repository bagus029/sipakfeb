<?php
/* @var $this TblDosenController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tbl Dosens',
);

$this->menu=array(
	array('label'=>'Create TblDosen', 'url'=>array('create')),
	array('label'=>'Manage TblDosen', 'url'=>array('admin')),
);
?>

<h1>Tbl Dosens</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
