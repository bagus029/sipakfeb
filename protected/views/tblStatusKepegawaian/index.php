<?php
/* @var $this TblStatusKepegawaianController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tbl Status Kepegawaians',
);

$this->menu=array(
	array('label'=>'Create TblStatusKepegawaian', 'url'=>array('create')),
	array('label'=>'Manage TblStatusKepegawaian', 'url'=>array('admin')),
);
?>

<h1>Tbl Status Kepegawaians</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
