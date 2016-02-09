<?php
/* @var $this SubunPenelitianController */
/* @var $model SubunPenelitian */

$this->breadcrumbs=array(
	'Subun Penelitians'=>array('index'),
	$model->ID_SUBUNPENELITIAN=>array('view','id'=>$model->ID_SUBUNPENELITIAN),
	'Update',
);

$this->menu=array(
	array('label'=>'List SubunPenelitian', 'url'=>array('index')),
	array('label'=>'Create SubunPenelitian', 'url'=>array('create')),
	array('label'=>'View SubunPenelitian', 'url'=>array('view', 'id'=>$model->ID_SUBUNPENELITIAN)),
	array('label'=>'Manage SubunPenelitian', 'url'=>array('admin')),
);
?>
<div class="portlet box blue ">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-reorder"></i> Update Sub Unsur Penelitian
		</div>
		<div class="tools">
			
		</div>
	</div>
    <div class="portlet-body form">
        <?php echo $this->renderPartial('_form', array('model'=>$model)); ?>    </div>
</div>