<?php
/* @var $this UnsurPengabdianController */
/* @var $data UnsurPengabdian */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_UNSUR_PENGABDIAN')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_UNSUR_PENGABDIAN), array('view', 'id'=>$data->ID_UNSUR_PENGABDIAN)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_SUBUNPENGAB')); ?>:</b>
	<?php echo CHtml::encode($data->ID_SUBUNPENGAB); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_DOSEN')); ?>:</b>
	<?php echo CHtml::encode($data->ID_DOSEN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('KEGIATAN_PENGABDIAN')); ?>:</b>
	<?php echo CHtml::encode($data->KEGIATAN_PENGABDIAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TEMPAT_PENGABDIAN')); ?>:</b>
	<?php echo CHtml::encode($data->TEMPAT_PENGABDIAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TGL_PENGABDIAN')); ?>:</b>
	<?php echo CHtml::encode($data->TGL_PENGABDIAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('BUKTI_PENGABDIAN')); ?>:</b>
	<?php echo CHtml::encode($data->BUKTI_PENGABDIAN); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('NILAI_PENGABDIAN')); ?>:</b>
	<?php echo CHtml::encode($data->NILAI_PENGABDIAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TGL_SUBMIT')); ?>:</b>
	<?php echo CHtml::encode($data->TGL_SUBMIT); ?>
	<br />

	*/ ?>

</div>