<?php
/* @var $this TblDownloadController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tbl Downloads',
);

$this->menu=array(
	array('label'=>'Create TblDownload', 'url'=>array('create')),
	array('label'=>'Manage TblDownload', 'url'=>array('admin')),
);
?>

<h1>Tbl Downloads</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
