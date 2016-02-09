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
<div style="margin:auto;" align="center">
<table>
    <tr>
        <td style="width:20%;" align="right">
            <div align="left" style="font-size:12px;width:28%;">LAMPIRAN III :</div>
            <div align="left" style="font-size:12px;width:20%;">PERATURAN BERSAMA MENTERI PENDIDIKAN DAN KEBUDAYAAN DAN KEPALA BADAN KEPEGAWAIAN NEGARA</div>
            <div align="left" style="font-size:12px;width:20%;">NOMOR : 4/VIII/PB/2014</div>
            <div align="left" style="font-size:12px;width:20%;">NOMOR : 24 TAHUN 2014</div>
            <div align="left" style="font-size:12px;width:20%;">TENTANG KETENTUAN PELAKSANAAN PERATURAN MENTERI PENDAYAGUNAAN APARATUR NEGARA DAN REFORMASI BIROKRASI NOMOR 17 TAHUN 2013 TENTANG JABATAN FUNGSIONAL
            DOSEN DAN ANGKA KREDITNYA, SEBAGAIMANA TELAH DIUBAH DENGAN PERATURAN MENTERI PENDAYAGUNAAN APARATUR NEGARA DAN REFORMASI BIROKRASI REPUBLIK INDONESIA NOMOR 46 TAHUN 2013</div>
        </td>
    </tr>
    <tr>
        <td style="width:100%">
            <div align="center" style="font-size:12px;">DAFTAR USUL PENETAPAN ANGKA KREDIT</div>
            <div align="center" style="font-size:12px;">JABATAN FUNGSIONAL DOSEN</div>
        </td>
    </tr>
    <tr>
        <td style="width:100%">
            <div align="left" style="font-size:12px;">TANGGAL PENILAIAN : TGL. ............................................................ S.D TGL. .................................................................... </div>
        </td>
    </tr>
</table>
</div>
<div style=" width:100%; margin:auto;" align="left">
<table border="1" style=" width:100%;" >
	<tr>
		<td align="center">
                    <b>I</b>
		</td>
		<td colspan="10" align="center">
                    <b>KETERANGAN PERORANGAN</b>
		</td>
	</tr>
        <?php
        $dosen=Yii::app()->request->getParam('id_dosen',0);
        $bio="select tbl_dosen.ID_DOSEN,tbl_dosen.PENDIDIKAN_TERTINGGI, tbl_dosen.GELAR_AWAL,tbl_dosen.GELAR_AKHIR,tbl_dosen.NAMA_DOSEN,tbl_dosen. "
                . "NIP_DOSEN,tbl_dosen.NIDN, tbl_dosen.TMP_LAHIR,tbl_dosen.TGL_LAHIR,tbl_dosen.J_KEL,tbl_dosen.AGAMA, "
                . "tbl_dosen.ALAMAT, tbl_dosen.NO_KARPEG, tbl_dosen.TGL_MASUK, tbl_dosen.FOTO, tbl_jurusan.NAMA_JURUSAN,"
                . "tbl_jurusan.NAMA_PIMPINAN, tbl_jurusan.NIP_PIMPINAN, tbl_golongan.GOLONGAN,tbl_golongan.PANGKAT,tbl_jabatan.NAMA_JABATAN,  tbl_status_kepegawaian.STATUS_KEP, "
                . "tbl_fakultas.NAMA_FAKULTAS from tbl_dosen join tbl_jurusan on tbl_dosen.ID_JURUSAN=tbl_jurusan.ID_JURUSAN "
                . "join tbl_fakultas on tbl_jurusan.ID_FAKULTAS=tbl_fakultas.ID_FAKULTAS join tbl_golongan on "
                . "tbl_dosen.ID_GOLONGAN=tbl_golongan.ID_GOLONGAN join tbl_status_kepegawaian on "
                . "tbl_dosen.ID_STATUS_KEP=tbl_status_kepegawaian.ID_STATUS_KEP join tbl_jabatan on "
                . "tbl_dosen.ID_JABATAN=tbl_jabatan.ID_JABATAN where tbl_dosen.ID_DOSEN='$dosen'";
        $biodata=Yii::app()->db->createCommand($bio)->queryAll();
        
        foreach ($biodata as $biodata)
        : 
        ?>
	<tr>
		<td align="center">1.</td>
		<td colspan="2" width="50%">Nama</td>
		<td colspan="8"><?php echo $biodata['NAMA_DOSEN']?></td>
	</tr>
	<tr>
		<td align="center">2.</td>
		<td colspan="2">NIP</td>
		<td colspan="8"><?php echo $biodata['NIP_DOSEN']?></td>
	</tr>
	<tr>
		<td align="center">3.</td>
		<td colspan="2">Nomor Seri Karpeg</td>
		<td colspan="8"><?php echo $biodata['NO_KARPEG']?></td>
	</tr>
	<tr>
		<td align="center">4.</td>
		<td colspan="2">Tempat dan Tanggal Lahir</td>
		<td colspan="8"><?php echo $biodata['TMP_LAHIR']?> / <?php echo $biodata['TGL_LAHIR']?></td>
	</tr>
	<tr>
		<td align="center">5.</td>
		<td colspan="2">Jenis Kelamin</td>
		<td colspan="8">
                <?php 
                if($biodata['J_KEL']==1)
                    echo 'Laki - Laki';
                else 
                    echo 'Perempuan';?></td>
	</tr>
	<tr>
		<td align="center">6.</td>
		<td colspan="2">Pendidikan Tertinggi</td>
		<td colspan="8"><?php echo $biodata['PENDIDIKAN_TERTINGGI']?></td>
	</tr>
	<tr>
		<td align="center">7.</td>
		<td colspan="2">Pangkat/Gol.Ruang/TMT</td>
		<td colspan="8"><?php echo $biodata['GOLONGAN']?> / <?php echo $biodata['PANGKAT']?></td>
	</tr>
	<tr>
		<td align="center">8.</td>
		<td colspan="2">Jabatan Fungsional/TMT</td>
		<td colspan="8"><?php echo $biodata['NAMA_JABATAN']?> / <?php echo $biodata['TGL_MASUK']?></td>
	</tr>
	<tr>
		<td align="center">9.</td>
		<td colspan="2">Jabatan Impassing/TMT</td>
		<td colspan="8"></td>
	</tr>
	<tr>
		<td align="center">10.</td>
		<td colspan="2">Fakultas/Jurusan</td>
		<td colspan="8"><?php echo $biodata['NAMA_FAKULTAS']?> / <?php echo $biodata['NAMA_JURUSAN']?></td>
	</tr>
	<tr>
		<td rowspan="2" align="center">11.</td>
		<td rowspan="2">Masa Kerja</td>
		<td>Lama</td>
		<td colspan="8"></td>
	</tr>
	<tr>
		<td>Baru</td>
		<td colspan="8"></td>
	</tr>
	<tr>
		<td align="center">12.</td>
		<td colspan="2">Unit Kerja</td>
		<td colspan="8"><?php echo $biodata['NAMA_FAKULTAS']?></td>
	</tr>
	<tr>
		<td align="center">
			II
		</td>
		<td colspan="10">
			UNSUR YANG DINILAI
		</td>
	</tr>
        <?php endforeach; ?>
	<tr>
		<td rowspan="2" align="center">NO</td>
		<td rowspan="2" colspan="2" align="center">Unsur dan Sub Unsur</td>
		<td colspan="8" align="center">Angka Kredit Menurut</td>
	</tr>
	<tr>
		<td colspan="4" align="center">Perguruan Tinggi Pengusul</td>
		<td colspan="4" align="center">Tim Penilai</td>
	</tr>
	<tr>
		<td></td>
		<td colspan="2"></td>
		<td align="center">Lama</td>
		<td align="center">Lebihan</td>
		<td align="center">Baru</td>
		<td align="center">Jumlah</td>
		<td align="center">Lama</td>
		<td align="center">Lebihan</td>
		<td align="center">Baru</td>
		<td align="center">Jumlah</td>
	</tr>
	<tr>
		<td align="center">1</td>
		<td colspan="2" align="center">2</td>
		<td align="center">3</td>
		<td align="center">4</td>
		<td align="center">5</td>
		<td align="center">6</td>
		<td align="center">7</td>
		<td align="center">8</td>
		<td align="center">9</td>
		<td align="center">10</td>
	</tr>
        <tr>
		<td align="center">I</td>
		<td colspan="10">Unsur Utama</td>
	</tr>
	<tr>
		<td></td>
		<td colspan="10">A. PENDIDIKAN</td>
	</tr>
        <?php
        $pend="select * from subun_pend";
        $pendidikan=Yii::app()->db->createCommand($pend)->queryAll();
        $no='';
        
        foreach ($pendidikan as $x)
        : 
        ?>
        <?php
        $dosen=Yii::app()->request->getParam('id_dosen',0);
        $jk=$x['ID_SUBUNPEND'];
        $nilai_pendidikan="select sum(NILAI_PENDIDIKAN) as abc from unsur_pendidikan where ID_DOSEN='$dosen' and ID_SUBUNPEND='$jk' order by ID_SUBUNPEND";
        $jum_pen=Yii::app()->db->createCommand($nilai_pendidikan)->queryAll();
        $jpen="select sum(NILAI_PENDIDIKAN) as jpent from unsur_pendidikan where ID_DOSEN='$dosen'";
        $jhasil=Yii::app()->db->createCommand($jpen)->queryAll();
        ?>
	<tr>
		<td></td>
		<td colspan="2"><?php echo++$no;?>. <?php echo $x['SUBUNPEND']?></td>
		<td></td>
		<td></td>
                <?php
                foreach ($jum_pen as $a)
                :                
                ?>
		<td align="center"><?php echo $a['abc']?></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
                <?php 
         endforeach;
        ?>
	</tr>
	<?php 
         endforeach;
        ?>
	<tr>
		<td colspan="3" align="center"><b>Jumlah</b></td>
		<td></td>
		<td></td>
                <?php
                foreach ($jhasil as $ax)
                :                
                ?>
		<td align="center"><?php echo $ax['jpent']?></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
       <?php 
         endforeach;
        ?>
	<tr>
		<td></td>
		<td colspan="10">B. TRI DARMA PERGURUAN TINGGI</td>
	</tr>
        <tr>
		<td></td>
		<td colspan="10">a. MELAKSANAKAN PENDIDIKAN DAN PENGAJARAN</td>
	</tr>
        <?php
        $pelpend="select * from subun_pelpend";
        $pel=Yii::app()->db->createCommand($pelpend)->queryAll();
        $no='';
        
        foreach ($pel as $a)
        : 
        ?>
        <?php
        $dosen=Yii::app()->request->getParam('id_dosen',0);
        $pj=Yii::app()->request->getParam('pengajuan',0);
        $ja=$a['ID_SUBPELPEND'];
        $nilai_pelpend="select sum(NILAI_PELPEND) as jpl from unsur_pel_pendidikan where ID_DOSEN='$dosen' and PENGAJUAN_KE='$pj' and ID_SUBPELPEND='$ja' order by ID_SUBPELPEND";
        $jum_pend=Yii::app()->db->createCommand($nilai_pelpend)->queryAll();
        $nplt="select sum(NILAI_PELPEND) as jplt from unsur_pel_pendidikan where ID_DOSEN='$dosen' and PENGAJUAN_KE='$pj'";
        $nplta=Yii::app()->db->createCommand($nplt)->queryAll();
        ?>
	<tr>
		<td></td>
		<td colspan="2"><?php echo++$no;?>. <?php echo $a['SUBPELPEND']?></td>
		<td></td>
		<td></td>
                <?php
                foreach ($jum_pend as $ab)
                :                
                ?>
                <td align="center"><?php echo $ab['jpl']?></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
                <?php 
                endforeach;
                ?>
	</tr>
	<?php 
           endforeach;
        ?>
         <?php
                foreach ($nplta as $abt)
                :                
                ?>
	<tr>
		<td colspan="3" align="center"><b>Jumlah</b></td>
		<td></td>
		<td></td>
                <td align="center"><b><?php echo $abt['jplt']?></b></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
        <?php 
           endforeach;
        ?>
        <!--Penelitian-->
        <tr>
		<td></td>
		<td colspan="10">b. MELAKSANAKAN PENELTIAN</td>
	</tr>
        <?php
        $penelitian="select * from subun_penelitian";
        $pen=Yii::app()->db->createCommand($penelitian)->queryAll();
        $no='';
        
        foreach ($pen as $b)
        : 
        ?>
        <?php
        $jb=$b['ID_SUBUNPENELITIAN'];
        $nilai_penelitian="select sum(NILAI_PENELITIAN) as jpen from unsur_penelitian where ID_DOSEN='$dosen' and PENGAJUAN_KE='$pj' and ID_SUBUNPENELITIAN='$jb' order by ID_SUBUNPENELITIAN";
        $jum_penelitian=Yii::app()->db->createCommand($nilai_penelitian)->queryAll();
        $npent="select sum(NILAI_PENELITIAN) as jpent from unsur_penelitian where ID_DOSEN='$dosen' and PENGAJUAN_KE='$pj'";
        $npenta=Yii::app()->db->createCommand($npent)->queryAll();
        ?>
	<tr>
		<td></td>
		<td colspan="2"><?php echo++$no;?>. <?php echo $b['SUBUNPENELITIAN']?></td>
		<td></td>
		<td></td>
                <?php
                foreach ($jum_penelitian as $abc)
                :                
                ?>
		<td align="center"><?php echo $abc['jpen']?></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
           <?php 
           endforeach;
        ?>
	</tr>
	<?php 
         endforeach;
        ?>
        <?php
                foreach ($npenta as $abct)
                :                
                ?>
	<tr>
		<td colspan="3" align="center"><b>Jumlah</b></td>
		<td></td>
		<td></td>
                <td align="center"><b><?php echo $abct['jpent']?></b></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
        <?php 
         endforeach;
        ?>
        <!--pengabdian-->
        <tr>
		<td></td>
		<td colspan="10">c. MELAKSANAKAN PENGABDIAN</td>
	</tr>
        <?php
        $pengab="select * from subun_pengabdian";
        $pengabdian=Yii::app()->db->createCommand($pengab)->queryAll();
        $no='';
        
        foreach ($pengabdian as $bc)
        : 
        ?>
        <?php
        $jc=$bc['ID_SUBUNPENGAB'];
        $nilai_pengabdian="select sum(NILAI_PENGABDIAN) as jpeng from unsur_pengabdian where ID_DOSEN='$dosen' and PENGAJUAN_KE='$pj' and ID_SUBUNPENGAB='$jc' order by ID_SUBUNPENGAB";
        $jum_pengabdian=Yii::app()->db->createCommand($nilai_pengabdian)->queryAll();
        $npeng="select sum(NILAI_PENGABDIAN) as jpengt from unsur_pengabdian where ID_DOSEN='$dosen' and PENGAJUAN_KE='$pj'";
        $npenga=Yii::app()->db->createCommand($npeng)->queryAll();
        ?>
	<tr>
		<td></td>
		<td colspan="2"><?php echo++$no;?>. <?php echo $bc['SUBUNPENGAB']?></td>
		<td></td>
		<td></td>
                <?php
                foreach ($jum_pengabdian as $abd)
                :                
                ?>
		<td align="center"><?php echo $abd['jpeng']?></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
                <?php 
         endforeach;
        ?>
	</tr>
	<?php 
         endforeach;
        ?>
        <?php
                foreach ($npenga as $topeng)
                :                
                ?>
	<tr>
		<td colspan="3" align="center"><b>Jumlah</b></td>
		<td></td>
		<td></td>
                <td align="center"><b><?php echo $topeng['jpengt']?></b></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
        <?php 
         endforeach;
        ?>
        <!--penunjang-->
        <tr>
		<td></td>
		<td colspan="10">C. UNSUR PENUNJANG TUGAS POKOK DOSEN</td>
	</tr>
        <?php
        $tunjang="select * from subun_penunjang";
        $penunjang=Yii::app()->db->createCommand($tunjang)->queryAll();
        $no='';
        
        foreach ($penunjang as $ac)
        : 
        ?>
        <?php
        $jd=$ac['ID_SUBUNPENUNJANG'];
        $nilai_penunjang="select sum(NILAI_PENUNJANG) as jpenu from unsur_penunjang where ID_DOSEN='$dosen' and PENGAJUAN_KE='$pj' and ID_SUBUNPENUNJANG='$jd' order by ID_SUBUNPENUNJANG";
        $jum_penunjang=Yii::app()->db->createCommand($nilai_penunjang)->queryAll();
        $npenu="select sum(NILAI_PENUNJANG) as jpenut from unsur_penunjang where ID_DOSEN='$dosen' and PENGAJUAN_KE='$pj'";
        $npenua=Yii::app()->db->createCommand($npenu)->queryAll();
        ?>
	<tr>
		<td></td>
		<td colspan="2"><?php echo++$no;?>. <?php echo $ac['SUBUNPENUNJANG']?></td>
		<td></td>
		<td></td>
                <?php
                foreach ($jum_penunjang as $abe)
                :                
                ?>
		<td align="center"><?php echo $abe['jpenu']?></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
                <?php 
         endforeach;
        ?>
	</tr>
	<?php 
         endforeach;
        ?>
        <?php
                foreach ($npenua as $tot)
                :                
                ?>
	<tr>
		<td colspan="3" align="center"><b>Jumlah</b></td>
		<td></td>
		<td></td>
                <td align="center"><b><?php echo $tot['jpenut']?></b></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
        <?php 
         endforeach;
        ?>
        <?php $semua=$ax['jpent']+$abt['jplt']+$abct['jpent']+$topeng['jpengt']+$tot['jpenut'];?>
        <tr>
            <td colspan="3" align="center"><b>Jumlah Total</b></td>
		<td></td>
		<td></td>
                <td align="center"><b><?php echo $semua; ?></b></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
        
        <tr>
		<td align="center">III</td>
		<td colspan="10">
                    <p align="left">BAHAN YANG DINILAI</p>
                    <p align="right" style="line-height: 10px;">Purwokerto,  .......................................................................</p>
                    <p align="right" style="line-height: 10px;">Ketua Jurusan <?php echo $biodata['NAMA_JURUSAN']?></p></BR></BR></BR>
                    <p align="right" style="line-height: 10px;"><?php echo $biodata['NAMA_PIMPINAN']?></p>
                    <p align="right" style="line-height: 10px;">NIP. <?php echo $biodata['NIP_PIMPINAN']?></p>
                </td>
	</tr>
        <tr style="border-top: 1px;">
		<td align="center">IV</td>
                <td colspan="10"></br>
                    <p align="right"ss>Jakarta,  .......................................................................</p>
                    <p align="right" style="line-height: 10px;">Ketua Tim Penilai Jabatan Dosen Pusat,</p></BR></BR></BR></BR></BR>
                </td>
	</tr>
</table>
</div>
</body>