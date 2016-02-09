<?php
/* @var $this TblInfoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tbl Infos',
);

$this->menu=array(
	array('label'=>'Create TblInfo', 'url'=>array('create')),
	array('label'=>'Manage TblInfo', 'url'=>array('admin')),
);
?>

<h1>Tbl Infos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
