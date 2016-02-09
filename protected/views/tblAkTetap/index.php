<?php
/* @var $this TblAkTetapController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tbl Ak Tetaps',
);

$this->menu=array(
	array('label'=>'Create TblAkTetap', 'url'=>array('create')),
	array('label'=>'Manage TblAkTetap', 'url'=>array('admin')),
);
?>

<h1>Tbl Ak Tetaps</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
