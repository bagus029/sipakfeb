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
        <td style="width:100%;">
            <b>
            <div align="center" style="font-size:15px">DAFTAR KEGIATAN PENELITIAN</div>
			</b>
        </td>
    </tr>
</table>
</div>
<br>
<div style=" width:100%; margin:auto;" align="left">
<table style=" width:100%;" >
    <tr>
        <?php
                        foreach ($data as $x);
                        $criteria = new CDbCriteria();
                        $criteria->addColumnCondition(array('ID_UNSUR_PENELITIAN' => $x['ID_UNSUR_PENELITIAN']));
                        //$pembayarandetil = Detailtagihan::model()->findAll($criteria);
                        //$suratmasukdetil = Pembayarandetil::model()->findAll($criteria);
            ?>
		<td width="200px">
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;">Pegawai negeri sipil yang dinilai :</div>
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;">Nama</div>
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;">NIP</div>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;">Jabatan Fungsional</div>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;">Unit Kerja</div>
		</td>
                <td>
                        <div align="left" style="width:5px;">&nbsp;</div>
                        <div align="left" style="width:5px;line-height: 20px;">:</div>
                        <div align="left" style="width:5px;line-height: 20px;">:</div>
                        <div align="left" style="width:5px;line-height: 20px;">:</div>
                        <div align="left" style="width:5px;line-height: 20px;">:</div>
                </td>
		<td>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;">&nbsp;</div>
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;"><?php echo $x['NAMA_DOSEN']?></div>
                        <div align="left" style="width:200px;font-size:12px;line-height: 20px;"><?php echo $x['NIP_DOSEN']?></div>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;"><?php echo $x['NAMA_JABATAN']?></div>
			<div align="left" style="width:200px;font-size:12px;line-height: 20px;"><?php echo $x['NAMA_FAKULTAS']?></div>
		</td>
	</tr>	
</table>
</div>
</br>
<div style=" width:100%; margin:auto;" align="left">
<table style="width:100%;">
	<tr>
		<td>
			<div align="left" style="font-size:12px;line-height: 20px;">Telah melakukan kegiatan peelitian sebagai berikut :</div>
		</td>
	</tr>
</table>
</div>
<div style=" width:100%; margin:auto;" align="left">
<table border="1" width="100%" style="border-collapse: collapse;" >
	<tr>
                <td rowspan="2" align="center" style="font-size: 12px;">No</td>
		<td rowspan="2" align="center" style="font-size: 12px;">Nama Judul Karya Ilmiah</td>
		<td colspan="2" align="center" style="font-size: 12px;">Sub Unsur</td>
		<td colspan="2" align="center" style="font-size: 12px;">Angka Kredit Menurut</td>
		<td rowspan="2" align="center" style="font-size: 12px;">Keterangan / Bukti</td>
	</tr>
	<tr>
		<td align="center" style="font-size: 12px;">Nilai Angka Kredit</td>
		<td align="center" style="font-size: 12px;">Nilai Peer Review</td>
		<td align="center" style="font-size: 12px;">Tim Penilai Pusat / Univ</td>
		<td align="center" style="font-size: 12px;">Tim Penilai Pusat / Dirj Dikti</td>
	</tr>
	<tr>
		<td align="center" style="font-size: 12px;">1</td>
		<td align="center" style="font-size: 12px;">2</td>
		<td align="center" style="font-size: 12px;">3</td>
		<td align="center" style="font-size: 12px;">4</td>
		<td align="center" style="font-size: 12px;"></td>
		<td align="center" style="font-size: 12px;">5</td>
		<td align="center" style="font-size: 12px;">6</td>
	</tr>
        <?php 
        $no=0;
        $jumlah_angka=0;
        $jumlah_peer=0;
        foreach ($data as $x)
        :   
        ?>
	<tr>
            <td align="center" style="font-size: 12px;"><?php echo++$no; ?></td>
            <td align="center" style="font-size: 12px;"><?php echo $x['KEGIATAN_PENELITIAN']?></td>
            <td align="center" style="font-size: 12px;"><?php echo $x['NILAI_PENELITIAN']?></td>
            <td align="center" style="font-size: 12px;"><?php echo $x['NILAI_PEER_REVIEW']?></td>
            <td align="center" style="font-size: 12px;"></td>
            <td align="center" style="font-size: 12px;"></td>
            <td align="center" style="font-size: 12px;"><?php echo $x['BUKTI_PENELITIAN']?></td>
	</tr>
        <?php
        $jumlah_angka+=$x['NILAI_PENELITIAN'];
        $jumlah_peer+=$x['NILAI_PEER_REVIEW'];
        ?>
        <?php 
         endforeach;
        ?>
        <tr>
            <td colspan="2" align="right" style="font-size: 12px;"><b>Jumlah Angka :</b></td>
            <td align="center" style="font-size: 12px;"><?php echo $jumlah_angka; ?></td>
            <td align="center" style="font-size: 12px;"><?php echo $jumlah_peer;?></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
</table>
</div>
</br>
<div style=" width:100%; margin:auto;" align="left">
<table style="width:100%;">
	<tr>
		<td>
			<div align="left" style="font-size:12px;line-height: 20px;">Demikian pernyataan ini dibuat untuk dapat dipergunakan sebagaimana mestinya :</div>
		</td>
	</tr>
</table>
</div>
</br>
</br>
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
</body>