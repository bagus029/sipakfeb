<?php
/* @var $this TblJabatanController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tbl Jabatans',
);

$this->menu=array(
	array('label'=>'Create TblJabatan', 'url'=>array('create')),
	array('label'=>'Manage TblJabatan', 'url'=>array('admin')),
);
?>

<h1>Tbl Jabatans</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
