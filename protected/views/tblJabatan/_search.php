<?php
/* @var $this TblJabatanController */
/* @var $model TblJabatan */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_JABATAN'); ?>
		<?php echo $form->textField($model,'ID_JABATAN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'KODE_JABATAN'); ?>
		<?php echo $form->textField($model,'KODE_JABATAN',array('size'=>25,'maxlength'=>25)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'NAMA_JABATAN'); ?>
		<?php echo $form->textField($model,'NAMA_JABATAN',array('size'=>35,'maxlength'=>35)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->