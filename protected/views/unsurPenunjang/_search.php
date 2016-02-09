<?php
/* @var $this UnsurPenunjangController */
/* @var $model UnsurPenunjang */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_UNSUR_PENUNJANG'); ?>
		<?php echo $form->textField($model,'ID_UNSUR_PENUNJANG'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_SUBUNPENUNJANG'); ?>
		<?php echo $form->textField($model,'ID_SUBUNPENUNJANG'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_DOSEN'); ?>
		<?php echo $form->textField($model,'ID_DOSEN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'KEGIATAN_PENUNJANG'); ?>
		<?php echo $form->textArea($model,'KEGIATAN_PENUNJANG',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TEMPAT_PENUNJANG'); ?>
		<?php echo $form->textField($model,'TEMPAT_PENUNJANG',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TGL_KEG_PENUNJANG'); ?>
		<?php echo $form->textField($model,'TGL_KEG_PENUNJANG'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'BUKTI_PENUNJANG'); ?>
		<?php echo $form->textField($model,'BUKTI_PENUNJANG',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'NILAI_PENUNJANG'); ?>
		<?php echo $form->textField($model,'NILAI_PENUNJANG',array('size'=>10,'maxlength'=>10)); ?>
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