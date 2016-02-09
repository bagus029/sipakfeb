<?php
/* @var $this TblDokumenDosenController */
/* @var $data TblDokumenDosen */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_DOKUMEN')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_DOKUMEN), array('view', 'id'=>$data->ID_DOKUMEN)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_DOSEN')); ?>:</b>
	<?php echo CHtml::encode($data->ID_DOSEN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('NAMA_DOKUMEN')); ?>:</b>
	<?php echo CHtml::encode($data->NAMA_DOKUMEN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('KETERANGAN')); ?>:</b>
	<?php echo CHtml::encode($data->KETERANGAN); ?>
	<br />


</div>