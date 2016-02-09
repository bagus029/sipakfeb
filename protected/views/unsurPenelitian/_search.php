<?php
/* @var $this UnsurPenelitianController */
/* @var $model UnsurPenelitian */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_UNSUR_PENELITIAN'); ?>
		<?php echo $form->textField($model,'ID_UNSUR_PENELITIAN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_SUBUNPENELITIAN'); ?>
		<?php echo $form->textField($model,'ID_SUBUNPENELITIAN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_DOSEN'); ?>
		<?php echo $form->textField($model,'ID_DOSEN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'KEGIATAN_PENELITIAN'); ?>
		<?php echo $form->textArea($model,'KEGIATAN_PENELITIAN',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TEMPAT_PENELITIAN'); ?>
		<?php echo $form->textField($model,'TEMPAT_PENELITIAN',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TGL_PENELITIAN'); ?>
		<?php echo $form->textField($model,'TGL_PENELITIAN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'BUKTI_PENELITIAN'); ?>
		<?php echo $form->textField($model,'BUKTI_PENELITIAN',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'NILAI_PENELITIAN'); ?>
		<?php echo $form->textField($model,'NILAI_PENELITIAN',array('size'=>10,'maxlength'=>10)); ?>
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