<?php
/* @var $this TblMutasiController */
/* @var $model TblMutasi */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'tbl-mutasi-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'ID_MUTASI'); ?>
		<?php echo $form->textField($model,'ID_MUTASI'); ?>
		<?php echo $form->error($model,'ID_MUTASI'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'ID_DOSEN'); ?>
		<?php echo $form->textField($model,'ID_DOSEN'); ?>
		<?php echo $form->error($model,'ID_DOSEN'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'JABTAN_LAMA'); ?>
		<?php echo $form->textField($model,'JABTAN_LAMA',array('size'=>35,'maxlength'=>35)); ?>
		<?php echo $form->error($model,'JABTAN_LAMA'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'UNIT_KERJA_LAMA'); ?>
		<?php echo $form->textField($model,'UNIT_KERJA_LAMA',array('size'=>60,'maxlength'=>75)); ?>
		<?php echo $form->error($model,'UNIT_KERJA_LAMA'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'TMT_LAMA'); ?>
		<?php echo $form->textField($model,'TMT_LAMA',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'TMT_LAMA'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'JABATAN_BARU'); ?>
		<?php echo $form->textField($model,'JABATAN_BARU',array('size'=>35,'maxlength'=>35)); ?>
		<?php echo $form->error($model,'JABATAN_BARU'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'UNIT_KERJA_BARU'); ?>
		<?php echo $form->textField($model,'UNIT_KERJA_BARU',array('size'=>60,'maxlength'=>75)); ?>
		<?php echo $form->error($model,'UNIT_KERJA_BARU'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'TMT_BARU'); ?>
		<?php echo $form->textField($model,'TMT_BARU',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'TMT_BARU'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->