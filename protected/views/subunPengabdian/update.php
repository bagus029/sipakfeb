<?php
/* @var $this SubunPengabdianController */
/* @var $model SubunPengabdian */

$this->breadcrumbs=array(
	'Subun Pengabdians'=>array('index'),
	$model->ID_SUBUNPENGAB=>array('view','id'=>$model->ID_SUBUNPENGAB),
	'Update',
);

$this->menu=array(
	array('label'=>'List SubunPengabdian', 'url'=>array('index')),
	array('label'=>'Create SubunPengabdian', 'url'=>array('create')),
	array('label'=>'View SubunPengabdian', 'url'=>array('view', 'id'=>$model->ID_SUBUNPENGAB)),
	array('label'=>'Manage SubunPengabdian', 'url'=>array('admin')),
);
?>
<div class="portlet box blue ">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-reorder"></i> Update Sub Unsur Pengabdian
		</div>
		<div class="tools">
			
		</div>
	</div>
    <div class="portlet-body form">
        <?php echo $this->renderPartial('_form', array('model'=>$model)); ?>    </div>
</div>