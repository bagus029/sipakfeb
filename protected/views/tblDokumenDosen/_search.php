<?php
/* @var $this TblDokumenDosenController */
/* @var $model TblDokumenDosen */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_DOKUMEN'); ?>
		<?php echo $form->textField($model,'ID_DOKUMEN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'NIP_DOSEN'); ?>
		<?php echo $form->textField($model,'NIP_DOSEN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'NAMA_DOKUMEN'); ?>
		<?php echo $form->textField($model,'NAMA_DOKUMEN',array('size'=>60,'maxlength'=>75)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'KETERANGAN'); ?>
		<?php echo $form->textArea($model,'KETERANGAN',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->