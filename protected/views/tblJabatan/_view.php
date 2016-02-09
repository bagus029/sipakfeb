<?php
/* @var $this TblJabatanController */
/* @var $data TblJabatan */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_JABATAN')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_JABATAN), array('view', 'id'=>$data->ID_JABATAN)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('KODE_JABATAN')); ?>:</b>
	<?php echo CHtml::encode($data->KODE_JABATAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('NAMA_JABATAN')); ?>:</b>
	<?php echo CHtml::encode($data->NAMA_JABATAN); ?>
	<br />


</div>