<?php
/* @var $this TblDownloadController */
/* @var $data TblDownload */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_download')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_download), array('view', 'id'=>$data->id_download)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nama_download')); ?>:</b>
	<?php echo CHtml::encode($data->nama_download); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('lampiran_download')); ?>:</b>
	<?php echo CHtml::encode($data->lampiran_download); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('keterangan_download')); ?>:</b>
	<?php echo CHtml::encode($data->keterangan_download); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('atktiv')); ?>:</b>
	<?php echo CHtml::encode($data->atktiv); ?>
	<br />


</div>