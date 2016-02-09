<?php
/* @var $this TblKeluargaController */
/* @var $data TblKeluarga */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_KELUARGA')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_KELUARGA), array('view', 'id'=>$data->ID_KELUARGA)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_STATUS')); ?>:</b>
	<?php echo CHtml::encode($data->ID_STATUS); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_DOSEN')); ?>:</b>
	<?php echo CHtml::encode($data->ID_DOSEN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('NAMA_KELUARGA')); ?>:</b>
	<?php echo CHtml::encode($data->NAMA_KELUARGA); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TGL_LAHIR')); ?>:</b>
	<?php echo CHtml::encode($data->TGL_LAHIR); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TMP_LAHIR')); ?>:</b>
	<?php echo CHtml::encode($data->TMP_LAHIR); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TGL_NIKAH')); ?>:</b>
	<?php echo CHtml::encode($data->TGL_NIKAH); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('TGL_CERAI_MENINGGAL')); ?>:</b>
	<?php echo CHtml::encode($data->TGL_CERAI_MENINGGAL); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('PEKERJAAN')); ?>:</b>
	<?php echo CHtml::encode($data->PEKERJAAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ALAMAT_KELUARGA')); ?>:</b>
	<?php echo CHtml::encode($data->ALAMAT_KELUARGA); ?>
	<br />

	*/ ?>

</div>