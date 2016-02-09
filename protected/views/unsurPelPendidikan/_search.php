<?php
/* @var $this UnsurPelPendidikanController */
/* @var $model UnsurPelPendidikan */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_UNSUR_PELPEND'); ?>
		<?php echo $form->textField($model,'ID_UNSUR_PELPEND'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_SUBPELPEND'); ?>
		<?php echo $form->textField($model,'ID_SUBPELPEND'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_DOSEN'); ?>
		<?php echo $form->textField($model,'ID_DOSEN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'KEGIATAN_PELPEND'); ?>
		<?php echo $form->textArea($model,'KEGIATAN_PELPEND',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TEMPAT_PELPEND'); ?>
		<?php echo $form->textField($model,'TEMPAT_PELPEND',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'SEMESTER'); ?>
		<?php echo $form->textField($model,'SEMESTER',array('size'=>25,'maxlength'=>25)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'BUKTI_PELPEND'); ?>
		<?php echo $form->textField($model,'BUKTI_PELPEND',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'NILAI_PELPEND'); ?>
		<?php echo $form->textField($model,'NILAI_PELPEND',array('size'=>10,'maxlength'=>10)); ?>
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