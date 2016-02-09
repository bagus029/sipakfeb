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
    <tr>    <?php
            $dosen=Yii::app()->request->getParam('id_dosen',0);
            $pj=Yii::app()->request->getParam('pengajuan',0);
            $sql="select unsur_pel_pendidikan.ID_SUBPELPEND, unsur_pel_pendidikan.BUKTI_PELPEND, unsur_pel_pendidikan.ID_UNSUR_PELPEND,subun_pelpend.SUBPELPEND,tbl_dosen.NAMA_DOSEN,
                   tbl_dosen.NIP_DOSEN, tbl_jabatan.NAMA_JABATAN, tbl_golongan.GOLONGAN, tbl_golongan.PANGKAT, 
                   tbl_jurusan.NAMA_JURUSAN, tbl_jurusan.NAMA_PIMPINAN, tbl_jurusan.NIP_PIMPINAN, tbl_jurusan.PANGKAT AS PJ, tbl_jurusan.GOLONGAN AS GJ,
                   tbl_fakultas.NAMA_FAKULTAS, unsur_pel_pendidikan.KEGIATAN_PELPEND, unsur_pel_pendidikan.TEMPAT_PELPEND, 
                   unsur_pel_pendidikan.SEMESTER, unsur_pel_pendidikan.NILAI_PELPEND,  
                   unsur_pel_pendidikan.PENGAJUAN_KE from unsur_pel_pendidikan inner join subun_pelpend on 
                   unsur_pel_pendidikan.ID_SUBPELPEND=subun_pelpend.ID_SUBPELPEND join tbl_dosen on
                   unsur_pel_pendidikan.ID_DOSEN=tbl_dosen.ID_DOSEN join tbl_jabatan on tbl_dosen.ID_JABATAN=tbl_jabatan.ID_JABATAN 
                   join tbl_golongan on tbl_dosen.ID_GOLONGAN=tbl_golongan.ID_GOLONGAN join tbl_jurusan on 
                   tbl_dosen.ID_JURUSAN=tbl_jurusan.ID_JURUSAN join tbl_fakultas on tbl_jurusan.ID_FAKULTAS=tbl_fakultas.ID_FAKULTAS 
                   where unsur_pel_pendidikan.ID_DOSEN='$dosen' and unsur_pel_pendidikan.PENGAJUAN_KE='$pj'";
            //$dat="select A.*,(select count(BUKTI_PELPEND) FROM unsur_pel_pendidikan where BUKTI_PELPEND=A.BUKTI_PELPEND)as jumlah from unsur_pel_pendidikan A "
             //       . "where ID_DOSEN='$dosen' AND PENGAJUAN_KE='$pj' order by A.BUKTI_PELPEND";
            $data = Yii::app()->db->createCommand($sql)->queryAll();
            //$data2=Yii::app()->db->createCommand($dat)->queryAll()
            ?>
            <?php
                        foreach ($data as $x);
                    $criteria = new CDbCriteria();
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
<table border="1" width="100%" style="border-collapse: collapse;" >
	<tr>
            <th>No</th>
            <th>Kegiatan Pendidikan dan Pengajaran</th>
            <th>Tempat/Instansi</th>
            <th>Semester</th>
            <th>Jumlah Angka Kredit</th>
            <th>Keterangan/Bukti Fisik</th>
        </tr>
	<!--<tr>
		<td><b>A. Kegiatan Pendidikan</b></td>
	</tr>-->
        <?php 
        $unsur='';
        $bukti='';
        $no=0;
        $jumlah_angka=0;        
        foreach ($data as $x)
        :   
        ?>
        <?php
        $f=$x['BUKTI_PELPEND'];
        $ab="select count(BUKTI_PELPEND) AS B,BUKTI_PELPEND FROM unsur_pel_pendidikan where BUKTI_PELPEND='$f'";
        $data2=Yii::app()->db->createCommand($ab)->queryAll();
        if ($unsur!=$x['SUBPELPEND'])
	{
		$no++;
		echo '<tr><td><b>'.$no.'.</b></td>
		<td colspan="11"><b>'.$x['SUBPELPEND'].'</b></td></tr>';
		$unsur=$x['SUBPELPEND'];
	} 
	echo '<tr><td>&nbsp;</td><td>- '.$x['KEGIATAN_PELPEND'].'</td>
            <td align="right">'.$x['TEMPAT_PELPEND'].'</td>
            <td align="right">'.$x['SEMESTER'].'</td>
            <td align="center">'.$x['NILAI_PELPEND'].'</td>';
            foreach ($data2 as $b);
            $criteria = new CDbCriteria();
            $jum=1;
            if($bukti!=$x['BUKTI_PELPEND']){
            echo '<td rowspan="'.$b['B'].'" align="center">'.$x['BUKTI_PELPEND'].'</td></tr>';
            $bukti=$b['BUKTI_PELPEND'];
            }
            $jumlah_angka=$jumlah_angka+$x['NILAI_PELPEND'];
        ?>
        
        <?php 
         endforeach;
        ?>
        <tr>
            <td colspan="4" align="right" style="font-size: 12px;"><b>Jumlah Angka :</b></td>
            <td align="center" style="font-size: 12px;"><?php echo $jumlah_angka; ?></td>
            <td>&nbsp;</td>
        </tr>
	<tr>
	</tr>
</table>
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