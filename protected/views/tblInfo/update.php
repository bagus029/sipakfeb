<?php
/* @var $this TblInfoController */
/* @var $model TblInfo */

$this->breadcrumbs=array(
	'Tbl Infos'=>array('index'),
	$model->id_info=>array('view','id'=>$model->id_info),
	'Update',
);

$this->menu=array(
	array('label'=>'List TblInfo', 'url'=>array('index')),
	array('label'=>'Create TblInfo', 'url'=>array('create')),
	array('label'=>'View TblInfo', 'url'=>array('view', 'id'=>$model->id_info)),
	array('label'=>'Manage TblInfo', 'url'=>array('admin')),
);
?>
<div class="portlet box blue ">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-reorder"></i> Update Data Info
		</div>
		<div class="tools">
			
		</div>
	</div>
    <div class="portlet-body form">
        <?php echo $this->renderPartial('_form', array('model'=>$model)); ?>    </div>
</div>