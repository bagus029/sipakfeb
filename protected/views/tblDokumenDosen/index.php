<?php
/* @var $this TblDokumenDosenController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tbl Dokumen Dosens',
);

$this->menu=array(
	array('label'=>'Create TblDokumenDosen', 'url'=>array('create')),
	array('label'=>'Manage TblDokumenDosen', 'url'=>array('admin')),
);
?>

<h1>Tbl Dokumen Dosens</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
