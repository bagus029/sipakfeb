<?php
/* @var $this TblCutiController */
/* @var $data TblCuti */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_CUTI')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_CUTI), array('view', 'id'=>$data->ID_CUTI)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_DOSEN')); ?>:</b>
	<?php echo CHtml::encode($data->ID_DOSEN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('JENIS_CUTI')); ?>:</b>
	<?php echo CHtml::encode($data->JENIS_CUTI); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('MULAI_CUTI')); ?>:</b>
	<?php echo CHtml::encode($data->MULAI_CUTI); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('AKHIR_CUTI')); ?>:</b>
	<?php echo CHtml::encode($data->AKHIR_CUTI); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('KET_CUTI')); ?>:</b>
	<?php echo CHtml::encode($data->KET_CUTI); ?>
	<br />


</div>