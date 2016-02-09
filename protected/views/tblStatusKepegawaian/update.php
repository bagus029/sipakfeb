<?php
/* @var $this TblStatusKepegawaianController */
/* @var $model TblStatusKepegawaian */

$this->breadcrumbs=array(
	'Tbl Status Kepegawaians'=>array('index'),
	$model->ID_STATUS_KEP=>array('view','id'=>$model->ID_STATUS_KEP),
	'Update',
);

$this->menu=array(
	array('label'=>'List TblStatusKepegawaian', 'url'=>array('index')),
	array('label'=>'Create TblStatusKepegawaian', 'url'=>array('create')),
	array('label'=>'View TblStatusKepegawaian', 'url'=>array('view', 'id'=>$model->ID_STATUS_KEP)),
	array('label'=>'Manage TblStatusKepegawaian', 'url'=>array('admin')),
);
?>
<div class="portlet box red ">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-reorder"></i> Update Status Kepegawaian
		</div>
		<div class="tools">
			
		</div>
	</div>
    <div class="portlet-body form">
        <?php echo $this->renderPartial('_form', array('model'=>$model)); ?>    </div>
</div>