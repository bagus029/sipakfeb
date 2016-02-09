<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'tbl-persen-form',
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
		<?php echo $form->labelEx($model,'jabatan',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'jabatan',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'jabatan'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'kualifikasi_akad', array('class'=>'col-md-3 control-label')); ?>
             <div class="col-md-4">
		<?php echo $form->textField($model,'kualifikasi_akad',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'kualifikasi_akad'); ?>
	</div>
    </div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'pel_pend', array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'pel_pend',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'pel_pend'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'pel_pen', array('class'=>'col-md-3 control-label')); ?>
             <div class="col-md-4">
		<?php echo $form->textField($model,'pel_pen',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'pel_pen'); ?>
	</div>
    </div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'pel_peng',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'pel_peng',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'pel_peng'); ?>
	</div>
    </div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'unsur_penunjang',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'unsur_penunjang',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'unsur_penunjang'); ?>
	</div>
    </div>

	<div class="form-actions fluid">
            <div class="col-md-offset-3 col-md-9">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class'=>'btn btn-primary')); ?>
                <?php echo CHtml::link('Kembali',array('admin'),array('class'=>'btn btn-success btn-md'));?>
	</div>
    </div>

<?php $this->endWidget(); ?>

</div><!-- form -->