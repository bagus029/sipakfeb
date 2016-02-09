<?php
/* @var $this TblAkTetapController */
/* @var $data TblAkTetap */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_AK_TETAP')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_AK_TETAP), array('view', 'id'=>$data->ID_AK_TETAP)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_AK_UNSUR')); ?>:</b>
	<?php echo CHtml::encode($data->ID_AK_UNSUR); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_DOSEN')); ?>:</b>
	<?php echo CHtml::encode($data->ID_DOSEN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ANGKA_LAMA')); ?>:</b>
	<?php echo CHtml::encode($data->ANGKA_LAMA); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ANGKA_BARU')); ?>:</b>
	<?php echo CHtml::encode($data->ANGKA_BARU); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ANGKA_DIGUNAKAN')); ?>:</b>
	<?php echo CHtml::encode($data->ANGKA_DIGUNAKAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ANGKA_LEBIHAN')); ?>:</b>
	<?php echo CHtml::encode($data->ANGKA_LEBIHAN); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('NO_SK')); ?>:</b>
	<?php echo CHtml::encode($data->NO_SK); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TGL_SUBMIT')); ?>:</b>
	<?php echo CHtml::encode($data->TGL_SUBMIT); ?>
	<br />

	*/ ?>

</div>