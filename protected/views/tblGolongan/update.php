<?php
/* @var $this TblGolonganController */
/* @var $model TblGolongan */

$this->breadcrumbs=array(
	'Tbl Golongans'=>array('index'),
	$model->ID_GOLONGAN=>array('view','id'=>$model->ID_GOLONGAN),
	'Update',
);

$this->menu=array(
	array('label'=>'List TblGolongan', 'url'=>array('index')),
	array('label'=>'Create TblGolongan', 'url'=>array('create')),
	array('label'=>'View TblGolongan', 'url'=>array('view', 'id'=>$model->ID_GOLONGAN)),
	array('label'=>'Manage TblGolongan', 'url'=>array('admin')),
);
?>
<div class="portlet box blue ">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-reorder"></i> Update Data Golongan
		</div>
		<div class="tools">
			
		</div>
	</div>
    <div class="portlet-body form">
        <?php echo $this->renderPartial('_form', array('model'=>$model)); ?>    </div>
</div>