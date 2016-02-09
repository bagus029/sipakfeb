<?php
/* @var $this TblPersenController */
/* @var $data TblPersen */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_persen')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_persen), array('view', 'id'=>$data->id_persen)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('jabatan')); ?>:</b>
	<?php echo CHtml::encode($data->jabatan); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('kualifikasi_akad')); ?>:</b>
	<?php echo CHtml::encode($data->kualifikasi_akad); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('pel_pend')); ?>:</b>
	<?php echo CHtml::encode($data->pel_pend); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('pel_pen')); ?>:</b>
	<?php echo CHtml::encode($data->pel_pen); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('pel_peng')); ?>:</b>
	<?php echo CHtml::encode($data->pel_peng); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('unsur_penunjang')); ?>:</b>
	<?php echo CHtml::encode($data->unsur_penunjang); ?>
	<br />


</div>