<?php
/* @var $this TblKeluargaController */
/* @var $model TblKeluarga */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_KELUARGA'); ?>
		<?php echo $form->textField($model,'ID_KELUARGA'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_STATUS'); ?>
		<?php echo $form->textField($model,'ID_STATUS'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_DOSEN'); ?>
		<?php echo $form->textField($model,'ID_DOSEN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'NAMA_KELUARGA'); ?>
		<?php echo $form->textField($model,'NAMA_KELUARGA',array('size'=>60,'maxlength'=>80)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TGL_LAHIR'); ?>
		<?php echo $form->textField($model,'TGL_LAHIR'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TMP_LAHIR'); ?>
		<?php echo $form->textField($model,'TMP_LAHIR',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TGL_NIKAH'); ?>
		<?php echo $form->textField($model,'TGL_NIKAH'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TGL_CERAI_MENINGGAL'); ?>
		<?php echo $form->textField($model,'TGL_CERAI_MENINGGAL'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'PEKERJAAN'); ?>
		<?php echo $form->textField($model,'PEKERJAAN',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ALAMAT_KELUARGA'); ?>
		<?php echo $form->textArea($model,'ALAMAT_KELUARGA',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->