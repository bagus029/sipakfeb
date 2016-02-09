<?php
/* @var $this TblGajiController */
/* @var $data TblGaji */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_GAJI')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_GAJI), array('view', 'id'=>$data->ID_GAJI)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_DOSEN')); ?>:</b>
	<?php echo CHtml::encode($data->ID_DOSEN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TGL_GAJIAN')); ?>:</b>
	<?php echo CHtml::encode($data->TGL_GAJIAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('GAJI_POKOK')); ?>:</b>
	<?php echo CHtml::encode($data->GAJI_POKOK); ?>
	<br />


</div>