<?php
/* @var $this TblJurusanController */
/* @var $model TblJurusan */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_JURUSAN'); ?>
		<?php echo $form->textField($model,'ID_JURUSAN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'NAMA_JURUSAN'); ?>
		<?php echo $form->textField($model,'NAMA_JURUSAN',array('size'=>35,'maxlength'=>35)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'NAMA_PIMPINAN'); ?>
		<?php echo $form->textField($model,'NAMA_PIMPINAN',array('size'=>60,'maxlength'=>80)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'NIP_PIMPINAN'); ?>
		<?php echo $form->textField($model,'NIP_PIMPINAN',array('size'=>30,'maxlength'=>30)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_FAKULTAS'); ?>
		<?php echo $form->textField($model,'ID_FAKULTAS'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->