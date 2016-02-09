<?php
/* @var $this TblDosenController */
/* @var $data TblDosen */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_DOSEN')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_DOSEN), array('view', 'id'=>$data->ID_DOSEN)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_GOLONGAN')); ?>:</b>
	<?php echo CHtml::encode($data->ID_GOLONGAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_JABATAN')); ?>:</b>
	<?php echo CHtml::encode($data->ID_JABATAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_STATUS_KEP')); ?>:</b>
	<?php echo CHtml::encode($data->ID_STATUS_KEP); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('NIP_DOSEN')); ?>:</b>
	<?php echo CHtml::encode($data->NIP_DOSEN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('GELAR_AKHIR')); ?>:</b>
	<?php echo CHtml::encode($data->GELAR_AKHIR); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('GELAR_AWAL')); ?>:</b>
	<?php echo CHtml::encode($data->GELAR_AWAL); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('NAMA_DOSEN')); ?>:</b>
	<?php echo CHtml::encode($data->NAMA_DOSEN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('NIDN')); ?>:</b>
	<?php echo CHtml::encode($data->NIDN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TMP_LAHIR')); ?>:</b>
	<?php echo CHtml::encode($data->TMP_LAHIR); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TGL_LAHIR')); ?>:</b>
	<?php echo CHtml::encode($data->TGL_LAHIR); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('J_KEL')); ?>:</b>
	<?php echo CHtml::encode($data->J_KEL); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('AGAMA')); ?>:</b>
	<?php echo CHtml::encode($data->AGAMA); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ALAMAT')); ?>:</b>
	<?php echo CHtml::encode($data->ALAMAT); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('NO_KARPEG')); ?>:</b>
	<?php echo CHtml::encode($data->NO_KARPEG); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TGL_MASUK')); ?>:</b>
	<?php echo CHtml::encode($data->TGL_MASUK); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('FOTO')); ?>:</b>
	<?php echo CHtml::encode($data->FOTO); ?>
	<br />

	*/ ?>

</div>