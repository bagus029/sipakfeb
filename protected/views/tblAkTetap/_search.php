<?php
/* @var $this TblAkTetapController */
/* @var $model TblAkTetap */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_AK_TETAP'); ?>
		<?php echo $form->textField($model,'ID_AK_TETAP'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_DOSEN'); ?>
		<?php echo $form->textField($model,'ID_DOSEN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ANGKA_LAMA'); ?>
		<?php echo $form->textField($model,'ANGKA_LAMA',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ANGKA_BARU'); ?>
		<?php echo $form->textField($model,'ANGKA_BARU',array('size'=>10,'maxlength'=>10)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ANGKA_DIGUNAKAN'); ?>
		<?php echo $form->textField($model,'ANGKA_DIGUNAKAN',array('size'=>10,'maxlength'=>10)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ANGKA_LEBIHAN'); ?>
		<?php echo $form->textField($model,'ANGKA_LEBIHAN',array('size'=>10,'maxlength'=>10)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->