<?php
/* @var $this TblKeluargaController */
/* @var $model TblKeluarga */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'tbl-keluarga-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'ID_KELUARGA'); ?>
		<?php echo $form->textField($model,'ID_KELUARGA'); ?>
		<?php echo $form->error($model,'ID_KELUARGA'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'ID_STATUS'); ?>
		<?php echo $form->textField($model,'ID_STATUS'); ?>
		<?php echo $form->error($model,'ID_STATUS'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'ID_DOSEN'); ?>
		<?php echo $form->textField($model,'ID_DOSEN'); ?>
		<?php echo $form->error($model,'ID_DOSEN'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'NAMA_KELUARGA'); ?>
		<?php echo $form->textField($model,'NAMA_KELUARGA',array('size'=>60,'maxlength'=>80)); ?>
		<?php echo $form->error($model,'NAMA_KELUARGA'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'TGL_LAHIR'); ?>
		<?php echo $form->textField($model,'TGL_LAHIR'); ?>
		<?php echo $form->error($model,'TGL_LAHIR'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'TMP_LAHIR'); ?>
		<?php echo $form->textField($model,'TMP_LAHIR',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'TMP_LAHIR'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'TGL_NIKAH'); ?>
		<?php echo $form->textField($model,'TGL_NIKAH'); ?>
		<?php echo $form->error($model,'TGL_NIKAH'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'TGL_CERAI_MENINGGAL'); ?>
		<?php echo $form->textField($model,'TGL_CERAI_MENINGGAL'); ?>
		<?php echo $form->error($model,'TGL_CERAI_MENINGGAL'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'PEKERJAAN'); ?>
		<?php echo $form->textField($model,'PEKERJAAN',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'PEKERJAAN'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'ALAMAT_KELUARGA'); ?>
		<?php echo $form->textArea($model,'ALAMAT_KELUARGA',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'ALAMAT_KELUARGA'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->