<?php
/* @var $this TblJurusanController */
/* @var $data TblJurusan */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_JURUSAN')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_JURUSAN), array('view', 'id'=>$data->ID_JURUSAN)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('NAMA_JURUSAN')); ?>:</b>
	<?php echo CHtml::encode($data->NAMA_JURUSAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('NAMA_PIMPINAN')); ?>:</b>
	<?php echo CHtml::encode($data->NAMA_PIMPINAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('NIP_PIMPINAN')); ?>:</b>
	<?php echo CHtml::encode($data->NIP_PIMPINAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_FAKULTAS')); ?>:</b>
	<?php echo CHtml::encode($data->ID_FAKULTAS); ?>
	<br />


</div>