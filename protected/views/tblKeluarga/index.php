<?php
/* @var $this TblKeluargaController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tbl Keluargas',
);

$this->menu=array(
	array('label'=>'Create TblKeluarga', 'url'=>array('create')),
	array('label'=>'Manage TblKeluarga', 'url'=>array('admin')),
);
?>

<h1>Tbl Keluargas</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
