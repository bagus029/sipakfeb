<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'subun-pend-form',
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
		<?php echo $form->labelEx($model,'ID_SUBUNPEND',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'ID_SUBUNPEND',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'ID_SUBUNPEND'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'SUBUNPEND',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textArea($model,'SUBUNPEND',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'SUBUNPEND'); ?>
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