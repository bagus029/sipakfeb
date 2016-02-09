<?php
/* @var $this TblFakultasController */
/* @var $data TblFakultas */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_FAKULTAS')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_FAKULTAS), array('view', 'id'=>$data->ID_FAKULTAS)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('NAMA_FAKULTAS')); ?>:</b>
	<?php echo CHtml::encode($data->NAMA_FAKULTAS); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('PIMPINAN_FAKULTAS')); ?>:</b>
	<?php echo CHtml::encode($data->PIMPINAN_FAKULTAS); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('NIP_PIMPINAN')); ?>:</b>
	<?php echo CHtml::encode($data->NIP_PIMPINAN); ?>
	<br />


</div>