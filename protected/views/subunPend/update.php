<?php
/* @var $this SubunPendController */
/* @var $model SubunPend */

$this->breadcrumbs=array(
	'Subun Pends'=>array('index'),
	$model->ID_SUBUNPEND=>array('view','id'=>$model->ID_SUBUNPEND),
	'Update',
);

$this->menu=array(
	array('label'=>'List SubunPend', 'url'=>array('index')),
	array('label'=>'Create SubunPend', 'url'=>array('create')),
	array('label'=>'View SubunPend', 'url'=>array('view', 'id'=>$model->ID_SUBUNPEND)),
	array('label'=>'Manage SubunPend', 'url'=>array('admin')),
);
?>
<div class="portlet box blue ">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-reorder"></i> Update Sub Unsur Pendidikan
		</div>
		<div class="tools">
			
		</div>
	</div>
    <div class="portlet-body form">
        <?php echo $this->renderPartial('_form', array('model'=>$model)); ?>    </div>
</div>