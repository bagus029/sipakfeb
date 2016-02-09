<?php
/* @var $this TblDownloadController */
/* @var $model TblDownload */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id_download'); ?>
		<?php echo $form->textField($model,'id_download'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'nama_download'); ?>
		<?php echo $form->textField($model,'nama_download',array('size'=>60,'maxlength'=>75)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'lampiran_download'); ?>
		<?php echo $form->textField($model,'lampiran_download',array('size'=>60,'maxlength'=>75)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'keterangan_download'); ?>
		<?php echo $form->textArea($model,'keterangan_download',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'atktiv'); ?>
		<?php echo $form->textField($model,'atktiv'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->