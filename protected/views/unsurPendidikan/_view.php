<?php
/* @var $this UnsurPendidikanController */
/* @var $data UnsurPendidikan */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_UNSUR_PEND')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_UNSUR_PEND), array('view', 'id'=>$data->ID_UNSUR_PEND)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_SUBUNPEND')); ?>:</b>
	<?php echo CHtml::encode($data->ID_SUBUNPEND); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_DOSEN')); ?>:</b>
	<?php echo CHtml::encode($data->ID_DOSEN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('KEGIATAN_PENDIDIKAN')); ?>:</b>
	<?php echo CHtml::encode($data->KEGIATAN_PENDIDIKAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TEMPAT_PENDIDIKAN')); ?>:</b>
	<?php echo CHtml::encode($data->TEMPAT_PENDIDIKAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TGL_KEGIATAN_PEND')); ?>:</b>
	<?php echo CHtml::encode($data->TGL_KEGIATAN_PEND); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('BUKTI_PENDIDIKAN')); ?>:</b>
	<?php echo CHtml::encode($data->BUKTI_PENDIDIKAN); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('NILAI_PENDIDIKAN')); ?>:</b>
	<?php echo CHtml::encode($data->NILAI_PENDIDIKAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TGL_SUBMIT')); ?>:</b>
	<?php echo CHtml::encode($data->TGL_SUBMIT); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('PENGAJUAN_KE')); ?>:</b>
	<?php echo CHtml::encode($data->PENGAJUAN_KE); ?>
	<br />

	*/ ?>

</div>