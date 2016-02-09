<?php
/* @var $this TblFakultasController */
/* @var $model TblFakultas */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_FAKULTAS'); ?>
		<?php echo $form->textField($model,'ID_FAKULTAS'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'NAMA_FAKULTAS'); ?>
		<?php echo $form->textField($model,'NAMA_FAKULTAS',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'PIMPINAN_FAKULTAS'); ?>
		<?php echo $form->textField($model,'PIMPINAN_FAKULTAS',array('size'=>60,'maxlength'=>80)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'NIP_PIMPINAN'); ?>
		<?php echo $form->textField($model,'NIP_PIMPINAN',array('size'=>35,'maxlength'=>35)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->