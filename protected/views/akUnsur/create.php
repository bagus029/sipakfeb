<?php
/* @var $this AkUnsurController */
/* @var $model AkUnsur */

$this->breadcrumbs=array(
	'Ak Unsurs'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List AkUnsur', 'url'=>array('index')),
	array('label'=>'Manage AkUnsur', 'url'=>array('admin')),
);
?>

<h1>Create AkUnsur</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>