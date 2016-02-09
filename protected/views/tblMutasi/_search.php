<?php
/* @var $this TblMutasiController */
/* @var $model TblMutasi */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_MUTASI'); ?>
		<?php echo $form->textField($model,'ID_MUTASI'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_DOSEN'); ?>
		<?php echo $form->textField($model,'ID_DOSEN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'JABTAN_LAMA'); ?>
		<?php echo $form->textField($model,'JABTAN_LAMA',array('size'=>35,'maxlength'=>35)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'UNIT_KERJA_LAMA'); ?>
		<?php echo $form->textField($model,'UNIT_KERJA_LAMA',array('size'=>60,'maxlength'=>75)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TMT_LAMA'); ?>
		<?php echo $form->textField($model,'TMT_LAMA',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'JABATAN_BARU'); ?>
		<?php echo $form->textField($model,'JABATAN_BARU',array('size'=>35,'maxlength'=>35)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'UNIT_KERJA_BARU'); ?>
		<?php echo $form->textField($model,'UNIT_KERJA_BARU',array('size'=>60,'maxlength'=>75)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TMT_BARU'); ?>
		<?php echo $form->textField($model,'TMT_BARU',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->