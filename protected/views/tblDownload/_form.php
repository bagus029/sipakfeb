<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'tbl-download-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
        'htmlOptions'=>array('enctype'=>'multipart/form-data', 'class'=>'form-horizontal'),
)); ?>
 <div class="form-body">

	<?php echo $form->errorSummary($model); ?>
     
        <!--<div class="form-group">
		<?php echo $form->labelEx($model,'id_download',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'id_download',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'id_download'); ?>
            </div>
	</div>-->

	<div class="form-group">
		<?php echo $form->labelEx($model,'nama_download',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'nama_download',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'nama_download'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'lampiran_download',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->fileField($model,'lampiran_download',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'lampiran_download'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'keterangan_download',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textArea($model,'keterangan_download',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'keterangan_download'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'atktiv',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->dropDownList($model,'atktiv',$model->getStatus(),array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'atktiv'); ?>
            </div>
	</div>

        <div class="form-actions fluid">
            <div class="col-md-offset-3 col-md-9">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Simpan' : 'Save', array('class'=>'btn btn-primary')); ?>
                <?php echo CHtml::link('Kembali',array('admin'),array('class'=>'btn btn-success btn-md'));?>
            </div>
	</div>
        <?php $this->endWidget(); ?>
        </div><!-- form -->