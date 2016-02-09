<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'tbl-status-kepegawaian-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
        'htmlOptions'=>array('class'=>'form-horizontal'),
)); ?>
<div class="form-body">
	<?php echo $form->errorSummary($model); ?>

	<div class="form-group">
		<?php echo $form->labelEx($model,'ID_STATUS_KEP',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'ID_STATUS_KEP',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'ID_STATUS_KEP'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'STATUS_KEP',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'STATUS_KEP',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'STATUS_KEP'); ?>
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