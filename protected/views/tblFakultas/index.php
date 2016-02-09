<?php
/* @var $this TblFakultasController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tbl Fakultases',
);

$this->menu=array(
	array('label'=>'Create TblFakultas', 'url'=>array('create')),
	array('label'=>'Manage TblFakultas', 'url'=>array('admin')),
);
?>

<h1>Tbl Fakultases</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
