<?php
/* @var $this UnsurPengabdianController */
/* @var $model UnsurPengabdian */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_SUBUNPENGAB'); ?>
		<?php echo $form->textField($model,'ID_SUBUNPENGAB'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_DOSEN'); ?>
		<?php echo $form->textField($model,'ID_DOSEN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_UNSUR_PENGABDIAN'); ?>
		<?php echo $form->textField($model,'ID_UNSUR_PENGABDIAN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'KEGIATAN_PENGABDIAN'); ?>
		<?php echo $form->textArea($model,'KEGIATAN_PENGABDIAN',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TEMPAT_PENGABDIAN'); ?>
		<?php echo $form->textField($model,'TEMPAT_PENGABDIAN',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TGL_PENGABDIAN'); ?>
		<?php echo $form->textField($model,'TGL_PENGABDIAN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'BUKTI_PENGABDIAN'); ?>
		<?php echo $form->textField($model,'BUKTI_PENGABDIAN',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'NILAI_PENGABDIAN'); ?>
		<?php echo $form->textField($model,'NILAI_PENGABDIAN',array('size'=>10,'maxlength'=>10)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TGL_SUBMIT'); ?>
		<?php echo $form->textField($model,'TGL_SUBMIT'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->