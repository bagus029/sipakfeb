<?php
/* @var $this AkUnsurController */
/* @var $model AkUnsur */

$this->breadcrumbs=array(
	'Ak Unsurs'=>array('index'),
	$model->ID_AK_UNSUR=>array('view','id'=>$model->ID_AK_UNSUR),
	'Update',
);

$this->menu=array(
	array('label'=>'List AkUnsur', 'url'=>array('index')),
	array('label'=>'Create AkUnsur', 'url'=>array('create')),
	array('label'=>'View AkUnsur', 'url'=>array('view', 'id'=>$model->ID_AK_UNSUR)),
	array('label'=>'Manage AkUnsur', 'url'=>array('admin')),
);
?>

<h1>Update AkUnsur <?php echo $model->ID_AK_UNSUR; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>