<?php
/* @var $this SubunPelpendController */
/* @var $model SubunPelpend */

$this->breadcrumbs=array(
	'Subun Pelpends'=>array('index'),
	$model->ID_SUBPELPEND=>array('view','id'=>$model->ID_SUBPELPEND),
	'Update',
);

$this->menu=array(
	array('label'=>'List SubunPelpend', 'url'=>array('index')),
	array('label'=>'Create SubunPelpend', 'url'=>array('create')),
	array('label'=>'View SubunPelpend', 'url'=>array('view', 'id'=>$model->ID_SUBPELPEND)),
	array('label'=>'Manage SubunPelpend', 'url'=>array('admin')),
);
?>
<div class="portlet box blue ">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-reorder"></i> Update Sub Unsur Pelaksanaan Pendidikan
		</div>
		<div class="tools">
			
		</div>
	</div>
    <div class="portlet-body form">
        <?php echo $this->renderPartial('_form', array('model'=>$model)); ?>    </div>
</div>