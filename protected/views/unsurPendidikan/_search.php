<?php
/* @var $this UnsurPendidikanController */
/* @var $model UnsurPendidikan */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_UNSUR_PEND'); ?>
		<?php echo $form->textField($model,'ID_UNSUR_PEND'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_SUBUNPEND'); ?>
		<?php echo $form->textField($model,'ID_SUBUNPEND'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_DOSEN'); ?>
		<?php echo $form->textField($model,'ID_DOSEN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'KEGIATAN_PENDIDIKAN'); ?>
		<?php echo $form->textArea($model,'KEGIATAN_PENDIDIKAN',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TEMPAT_PENDIDIKAN'); ?>
		<?php echo $form->textField($model,'TEMPAT_PENDIDIKAN',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TGL_KEGIATAN_PEND'); ?>
		<?php echo $form->textField($model,'TGL_KEGIATAN_PEND'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'BUKTI_PENDIDIKAN'); ?>
		<?php echo $form->textField($model,'BUKTI_PENDIDIKAN',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'NILAI_PENDIDIKAN'); ?>
		<?php echo $form->textField($model,'NILAI_PENDIDIKAN',array('size'=>10,'maxlength'=>10)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TGL_SUBMIT'); ?>
		<?php echo $form->textField($model,'TGL_SUBMIT'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'PENGAJUAN_KE'); ?>
		<?php echo $form->textField($model,'PENGAJUAN_KE',array('size'=>15,'maxlength'=>15)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->