<?php
/* @var $this AkUnsurController */
/* @var $model AkUnsur */

$this->breadcrumbs=array(
	'Ak Unsurs'=>array('index'),
	$model->ID_AK_UNSUR,
);

$this->menu=array(
	array('label'=>'List AkUnsur', 'url'=>array('index')),
	array('label'=>'Create AkUnsur', 'url'=>array('create')),
	array('label'=>'Update AkUnsur', 'url'=>array('update', 'id'=>$model->ID_AK_UNSUR)),
	array('label'=>'Delete AkUnsur', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->ID_AK_UNSUR),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage AkUnsur', 'url'=>array('admin')),
);
?>

<h1>View AkUnsur #<?php echo $model->ID_AK_UNSUR; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'AK_UNSUR',
		'ID_AK_UNSUR',
	),
)); ?>
