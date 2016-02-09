<?php
/* @var $this TblDosenController */
/* @var $model TblDosen */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_DOSEN'); ?>
		<?php echo $form->textField($model,'ID_DOSEN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_GOLONGAN'); ?>
		<?php echo $form->textField($model,'ID_GOLONGAN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_JABATAN'); ?>
		<?php echo $form->textField($model,'ID_JABATAN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_STATUS_KEP'); ?>
		<?php echo $form->textField($model,'ID_STATUS_KEP'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'NIP_DOSEN'); ?>
		<?php echo $form->textField($model,'NIP_DOSEN',array('size'=>35,'maxlength'=>35)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'GELAR_AKHIR'); ?>
		<?php echo $form->textField($model,'GELAR_AKHIR',array('size'=>10,'maxlength'=>10)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'GELAR_AWAL'); ?>
		<?php echo $form->textField($model,'GELAR_AWAL',array('size'=>10,'maxlength'=>10)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'NAMA_DOSEN'); ?>
		<?php echo $form->textField($model,'NAMA_DOSEN',array('size'=>60,'maxlength'=>75)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'NIDN'); ?>
		<?php echo $form->textField($model,'NIDN',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TMP_LAHIR'); ?>
		<?php echo $form->textField($model,'TMP_LAHIR',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TGL_LAHIR'); ?>
		<?php echo $form->textField($model,'TGL_LAHIR'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'J_KEL'); ?>
		<?php echo $form->textField($model,'J_KEL'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'AGAMA'); ?>
		<?php echo $form->textField($model,'AGAMA'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ALAMAT'); ?>
		<?php echo $form->textArea($model,'ALAMAT',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'NO_KARPEG'); ?>
		<?php echo $form->textField($model,'NO_KARPEG',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TGL_MASUK'); ?>
		<?php echo $form->textField($model,'TGL_MASUK'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'FOTO'); ?>
		<?php echo $form->textField($model,'FOTO',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->