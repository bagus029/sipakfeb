<?php
/* @var $this TblJurusanController */
/* @var $model TblJurusan */

$this->breadcrumbs=array(
	'Tbl Jurusans'=>array('index'),
	$model->ID_JURUSAN=>array('view','id'=>$model->ID_JURUSAN),
	'Update',
);

$this->menu=array(
	array('label'=>'List TblJurusan', 'url'=>array('index')),
	array('label'=>'Create TblJurusan', 'url'=>array('create')),
	array('label'=>'View TblJurusan', 'url'=>array('view', 'id'=>$model->ID_JURUSAN)),
	array('label'=>'Manage TblJurusan', 'url'=>array('admin')),
);
?>
<div class="portlet box blue ">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-reorder"></i> Update Data Jurusan
		</div>
		<div class="tools">
			
		</div>
	</div>
    <div class="portlet-body form">
        <?php echo $this->renderPartial('_form', array('model'=>$model)); ?>    </div>
</div>