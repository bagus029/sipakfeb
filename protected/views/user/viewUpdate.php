<?php
/* @var $this UserController */
/* @var $model User */

$this->breadcrumbs=array(
	'Users'=>array('index'),
	$model->ID_USER,
);

$this->menu=array(
	//array('label'=>'List User', 'url'=>array('index')),
	//array('label'=>'Create User', 'url'=>array('create')),
	//array('label'=>'Update User', 'url'=>array('update', 'id'=>$model->ID_USER)),
	//array('label'=>'Delete User', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->ID_USER),'confirm'=>'Are you sure you want to delete this item?')),
	//array('label'=>'Manage User', 'url'=>array('admin')),
);
?>
<div class="portlet box yellow">
<div class="portlet-title">
    <div class="caption">
	<i class="fa fa-pencil-square-o"></i> Data Pengguna #<?php echo $model->NIP_USER; ?>  </div>
    </div>
    <div class="portlet-body">
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'NAMA_USER',
		'USERNAME',
		'PASSWORD',
               
	),
)); ?>
    </div>
</div>