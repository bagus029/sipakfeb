<?php
/* @var $this UnsurPelPendidikanController */
/* @var $data UnsurPelPendidikan */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_UNSUR_PELPEND')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_UNSUR_PELPEND), array('view', 'id'=>$data->ID_UNSUR_PELPEND)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_SUBPELPEND')); ?>:</b>
	<?php echo CHtml::encode($data->ID_SUBPELPEND); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_DOSEN')); ?>:</b>
	<?php echo CHtml::encode($data->ID_DOSEN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('KEGIATAN_PELPEND')); ?>:</b>
	<?php echo CHtml::encode($data->KEGIATAN_PELPEND); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TEMPAT_PELPEND')); ?>:</b>
	<?php echo CHtml::encode($data->TEMPAT_PELPEND); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('SEMESTER')); ?>:</b>
	<?php echo CHtml::encode($data->SEMESTER); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('BUKTI_PELPEND')); ?>:</b>
	<?php echo CHtml::encode($data->BUKTI_PELPEND); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('NILAI_PELPEND')); ?>:</b>
	<?php echo CHtml::encode($data->NILAI_PELPEND); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TGL_SUBMIT')); ?>:</b>
	<?php echo CHtml::encode($data->TGL_SUBMIT); ?>
	<br />

	*/ ?>

</div>