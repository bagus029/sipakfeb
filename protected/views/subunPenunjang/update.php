<?php
/* @var $this SubunPenunjangController */
/* @var $model SubunPenunjang */

$this->breadcrumbs=array(
	'Subun Penunjangs'=>array('index'),
	$model->ID_SUBUNPENUNJANG=>array('view','id'=>$model->ID_SUBUNPENUNJANG),
	'Update',
);

$this->menu=array(
	array('label'=>'List SubunPenunjang', 'url'=>array('index')),
	array('label'=>'Create SubunPenunjang', 'url'=>array('create')),
	array('label'=>'View SubunPenunjang', 'url'=>array('view', 'id'=>$model->ID_SUBUNPENUNJANG)),
	array('label'=>'Manage SubunPenunjang', 'url'=>array('admin')),
);
?>
<div class="portlet box blue ">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-reorder"></i> Update Sub Unsur Penunjang
		</div>
		<div class="tools">
			
		</div>
	</div>
    <div class="portlet-body form">
        <?php echo $this->renderPartial('_form', array('model'=>$model)); ?>    </div>
</div>