<style type="text/css">
body{
    font-size: 12px;
    font-family: Arial;
}
table{
    font-size: 12px;
    width: 100%;
    border-collapse: collapse;
}
</style>
<body>
<div style="width:100%;margin:auto;" align="center">
<table style=" width:100%;border-bottom: 2px solid black;">
    <tr>
        <td style="width:100%">
            <b>
            <div align="center" style="font-size:15px;">SURAT PERNYATAAN</div>
            <div align="center" style="font-size:15px;">MELAKSANAKAN KEGIATAN PENDIDIKAN DAN PENGAJARAN</div>
			</b>
        </td>
    </tr>
</table>
</div>
<div style=" width:100%; margin:auto;" align="left">
<table style=" width:100%;" >
    <tr>            
            <?php
                        foreach ($data as $x);
                        $criteria = new CDbCriteria();
                        $criteria->addColumnCondition(array('ID_UNSUR_PELPEND' => $x['ID_UNSUR_PELPEND']));
                        //$pembayarandetil = Detailtagihan::model()->findAll($criteria);
                        //$suratmasukdetil = Pembayarandetil::model()->findAll($criteria);
            ?>
            <td width="200px">
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;">Yang bertanda tangan dibawah ini :</div>
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;">Nama</div>
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;">NIP</div>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;">Pangkat/Golongan ruang</div>
                        <div align="left" style="width:200px;font-size: 12px;line-height: 20px;">Jabatan Fungsional</div>
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;">Unit Kerja</div>
			<br/>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;">Menyatakan bahwa :</div>
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;">Nama</div>
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;">NIP</div>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;">Pangkat/Golongan ruang</div>
                        <div align="left" style="width:200px;font-size: 12px;line-height: 20px;">Jabatan Fungsional</div>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;">Unit Kerja</div>
            </td>
            <td>
                         <div align="left" style="width:5px;line-height: 20px;">&nbsp;</div>
                        <div align="left" style="width:5px;line-height: 20px;">:</div>
                        <div align="left" style="width:5px;line-height: 20px;">:</div>
                        <div align="left" style="width:5px;line-height: 20px;">:</div>
                        <div align="left" style="width:5px;line-height: 20px;">:</div>
                        <div align="left" style="width:5px;line-height: 20px;">:</div>
                        <br/>
                        <div align="left" style="width:5px;line-height: 20px;">&nbsp;</div>
                        <div align="left" style="width:5px;line-height: 20px;">:</div>
                        <div align="left" style="width:5px;line-height: 20px;">:</div>
                        <div align="left" style="width:5px;line-height: 20px;">:</div>
                        <div align="left" style="width:5px;line-height: 20px;">:</div>
                        <div align="left" style="width:5px;line-height: 20px;">:</div>
            </td>
            <td>
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;">&nbsp;</div>
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;"><?php echo $x['NAMA_PIMPINAN']?></div>
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;"><?php echo $x['NIP_PIMPINAN']?></div>
			<div align="left" style="width:200px;font-size: 12px;line-height: 20px;"><?php echo $x['GJ']?> / <?php echo $x['PJ']?></div>
                        <div align="left" style="width:400px;font-size:12px;line-height: 20px;">Ketua Jurusan <?php echo $x['NAMA_JURUSAN']?></div>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;"><?php echo $x['NAMA_FAKULTAS']?></div>
			<br/>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;">&nbsp;</div>
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;"><?php echo $x['NAMA_DOSEN']?></div>
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;"><?php echo $x['NIP_DOSEN']?></div>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;"><?php echo $x['PANGKAT']?> / <?php echo $x['GOLONGAN']?></div>
                        <div align="left" style="width:200px;font-size: 12px;line-height: 20px;"><?php echo $x['NAMA_JABATAN']?></div>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;"><?php echo $x['NAMA_FAKULTAS']?></div>
            </td>
    </tr>	
</table>
</div>
<div style=" width:100%; margin:auto;" align="left">
<table style="width:100%;">
	<tr>
		<td>
			<div align="left" style="font-size:12px;line-height: 20px;">Telah melakukan kegiatan pendidikan dan pengajaran sebagai berikut :</div>
		</td>
	</tr>
</table>
</div>
<div style=" width:100%; margin:auto;" align="center">
<?php $this->widget('ext.GroupGridView', array(
    'itemsCssClass' => 'table table-striped table-bordered dataTable',
    'id'=>'unsur-pel-pendidikan-grid',
    'dataProvider'=>$data,
	'enablePagination' => false,
    //'filter'=>$model,
    'columns'=>array(
					'SUBPELPEND',
					'NAMA_DOSEN',
	),
	)); ?>
</div>
<div style=" width:100%; margin:auto;" align="left">
<table style="width:100%;">
	<tr>
		<td>
			<div align="left" style="font-size:12px;line-height: 20px;">Demikian pernyataan ini dibuat untuk dapat dipergunakan sebagaimana mestinya :</div>
		</td>
	</tr>
</table>
</div>
<br/>
<br/>
<div style=" width:100%; margin:auto;" align="right">
<table style="width:100%;">
	<tr>
            <?php
                $tgl=date('d-m-Y');
                foreach ($data as $x);
            ?>
		<td>
			<div align="right" style="margin-right:40px;font-size:12px;line-height: 20px;">Purwokerto, <?php echo $tgl; ?></div>
			<div align="right" style="margin-right:40px;font-size:12px;line-height: 20px;">Ketua Jurusan <?php echo $x['NAMA_JURUSAN']?></div><br/><br/><br/>
			<div align="right" style="margin-right:40px;font-size:12px;line-height: 20px;"><?php echo $x['NAMA_PIMPINAN']?></div>
			<div align="right" style="margin-right:40px;font-size:12px;line-height: 20px;">Nip. <?php echo $x['NIP_PIMPINAN']?></div>
		</td>
	</tr>
</table>
</div>