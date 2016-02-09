<?php
/* @var $this TblJabatanController */
/* @var $model TblJabatan */

$this->breadcrumbs=array(
	'Tbl Jabatans'=>array('index'),
	$model->ID_JABATAN=>array('view','id'=>$model->ID_JABATAN),
	'Update',
);

$this->menu=array(
	array('label'=>'List TblJabatan', 'url'=>array('index')),
	array('label'=>'Create TblJabatan', 'url'=>array('create')),
	array('label'=>'View TblJabatan', 'url'=>array('view', 'id'=>$model->ID_JABATAN)),
	array('label'=>'Manage TblJabatan', 'url'=>array('admin')),
);
?>
<div class="portlet box blue ">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-reorder"></i> Update Data Jabatan
		</div>
		<div class="tools">
			
		</div>
	</div>
    <div class="portlet-body form">
        <?php echo $this->renderPartial('_form', array('model'=>$model)); ?>    </div>
</div>