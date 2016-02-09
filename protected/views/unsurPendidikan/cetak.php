    <?php 
     $content=ob_start();
    ?>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
      
</head>
<body>

<div style="width:960px;margin:auto" align="center">
<table style=" width:960px;border-bottom: 2px solid black">
    <tr>
        <td style="width:960px">
            <b>
            <div align="center" style="font-size:15px">SURAT PERNYATAAN</div>
            <div align="center" style="font-size:15px">MELAKSANAKAN KEGIATAN PENDIDIKAN DAN PENGAJARAN</div>
			</b>
        </td>
    </tr>
</table>
</div>
<br/>
<div style=" width:960px; margin:auto" align="left">
<table style=" width:960px;" >
    <tr>
            
            <?php
                        foreach ($data as $x);
                        $criteria = new CDbCriteria();
                        $criteria->addColumnCondition(array('ID_UNSUR_PEND' => $x['ID_UNSUR_PEND']));
                        //$pembayarandetil = Detailtagihan::model()->findAll($criteria);
                        //$suratmasukdetil = Pembayarandetil::model()->findAll($criteria);
            ?>
            <td width="200px">
            <div align="left" style="width:200px;font-size:12px;line-height: 20px;">Yang bertanda tangan dibawah ini :</div>
            <div align="left" style="width:200px;font-size:12px;line-height: 20px;">Nama</div>
            <div align="left" style="width:200px;font-size:12px;line-height: 20px;">NIP</div>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;">Pangkat/Golongan ruang</div>
                        <div align="left" style="width:200px;font-size: 12px;line-height: 20px">Jabatan Fungsional</div>
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;">Unit Kerja</div>
			<br/>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;">Menyatakan bahwa :</div>
            <div align="left" style="width:200px;font-size:12px;line-height: 20px;">Nama</div>
            <div align="left" style="width:200px;font-size:12px;line-height: 20px;">NIP</div>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;">Pangkat/Golongan ruang</div>
                        <div align="left" style="width:200px;font-size: 12px;line-height: 20px">Jabatan Fungsional</div>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;">Unit Kerja</div>
        </td>
		<td>
                    <div align="left" style="width:200px;font-size:12px;line-height: 20px;">&nbsp;</div>
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;"><?php echo $x['NAMA_PIMPINAN']?></div>
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;"><?php echo $x['NIP_PIMPINAN']?></div>
			<div align="left" style="width:200px;font-size: 12px;line-height: 20px"><?php echo $x['NAMA_PIMPINAN']?></div>
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;">Ketua Jurusan <?php echo $x['NAMA_JURUSAN']?></div>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;"><?php echo $x['NAMA_FAKULTAS']?></div>
			<br/>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;">&nbsp;</div>
            <div align="left" style="width:200px;font-size:12px;line-height: 20px;"><?php echo $x['NAMA_DOSEN']?></div>
            <div align="left" style="width:200px;font-size:12px;line-height: 20px;"><?php echo $x['NIP_DOSEN']?></div>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;"><?php echo $x['PANGKAT']?> / <?php echo $x['GOLONGAN']?></div>
                        <div align="left" style="width:200px;font-size: 12px;line-height: 20px"><?php echo $x['NAMA_JABATAN']?></div>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;"><?php echo $x['NAMA_FAKULTAS']?></div>
		</td>
                
	</tr>	
</table>
</div>
<br/>
<div style=" width:960px; margin:auto" align="left">
<table style="width:960;">
	<tr>
		<td>
			<div align="left" style="font-size:12px;line-height: 20px;">Telah melakukan kegiatan pendidikan dan pengajaran sebagai berikut :</div>
		</td>
	</tr>
</table>
</div>
<div style=" width:960px; margin:auto;" align="left">
<table border="1px;" style=" width:100%;" >
	<tr>
            <th>No</th>
            <th>Kegiatan Pendidikan dan Pengajaran</th>
            <th>Tempat / Instansi</th>
            <th>Semester</th>
            <th>Jumlah Angka Kredit</th>
            <th>Keterangan / Bukti</th>
	</tr>
	<!--<tr>
		<td><b>A. Kegiatan Pendidikan</b></td>
	</tr>-->
        <?php 
        $no=0;
        foreach ($data as $x)
        : {  
        ?>
	<tr>
            <td><?php echo++$no; ?></td>
            <td><?php echo $x['KEGIATAN_PENDIDIKAN']?></td>
            <td><?php echo $x['TEMPAT_PENDIDIKAN']?></td>
            <td><?php echo $x['TGL_KEGIATAN_PEND']?></td>
            <td><?php echo $x['NILAI_PENDIDIKAN']?></td>
            <td><?php echo $x['BUKTI_PENDIDIKAN']?></td>
	</tr>
        <?php 
        } endforeach;
        ?>
	<!--<tr>
		<td><b>B. Kegiatan Pengajaran</b></td>
	</tr>-->
	<tr>
	</tr>
</table>
</div>
<br/>
<div style=" width:960px; margin:auto" align="left">
<table style="width:960;">
	<tr>
		<td>
			<div align="left" style="font-size:12px;line-height: 20px;">Demikian pernyataan ini dibuat untuk dapat dipergunakan sebagaimana mestinya :</div>
		</td>
	</tr>
</table>
</div>
<br/>
<br/>
<div style=" width:960px; margin:auto" align="right">
<table style="width:960;">
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
<?php
require_once '/../extensions/html2pdf/html2pdf.class.php';
$pdf=new HTML2PDF('P','A4','en',false,'ISO-8859-15',array('mL','mT','mR','mB'));
$pdf->writeHTML($content);
$pdf->Output();
?>
</body>
</html>
