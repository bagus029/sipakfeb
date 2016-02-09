<?php
/* @var $this UserController */
/* @var $model User */

$this->breadcrumbs=array(
	'Users'=>array('index'),
	$model->ID_USER=>array('view','id'=>$model->ID_USER),
	'Update',
);

$this->menu=array(
	array('label'=>'List User', 'url'=>array('index')),
	array('label'=>'Create User', 'url'=>array('create')),
	array('label'=>'View User', 'url'=>array('view', 'id'=>$model->ID_USER)),
	array('label'=>'Manage User', 'url'=>array('admin')),
);
?>
<div class="portlet box blue ">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-reorder"></i> Update Pengguna <?php echo $model->ID_USER; ?>
		</div>
		<div class="tools">
			
		</div>
	</div>
    <div class="portlet-body form">
        <?php echo $this->renderPartial('_form', array('model'=>$model)); ?>    </div>
</div>