<?php
/* @var $this TblCutiController */
/* @var $model TblCuti */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'tbl-cuti-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'ID_CUTI'); ?>
		<?php echo $form->textField($model,'ID_CUTI'); ?>
		<?php echo $form->error($model,'ID_CUTI'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'ID_DOSEN'); ?>
		<?php echo $form->textField($model,'ID_DOSEN'); ?>
		<?php echo $form->error($model,'ID_DOSEN'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'JENIS_CUTI'); ?>
		<?php echo $form->textField($model,'JENIS_CUTI',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'JENIS_CUTI'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'MULAI_CUTI'); ?>
		<?php echo $form->textField($model,'MULAI_CUTI'); ?>
		<?php echo $form->error($model,'MULAI_CUTI'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'AKHIR_CUTI'); ?>
		<?php echo $form->textField($model,'AKHIR_CUTI'); ?>
		<?php echo $form->error($model,'AKHIR_CUTI'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'KET_CUTI'); ?>
		<?php echo $form->textArea($model,'KET_CUTI',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'KET_CUTI'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->