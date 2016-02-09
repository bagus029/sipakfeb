<?php
require('/../extensions/fpdf/fpdf.php');
 
class PDF extends FPDF
{

// membaca data dari database

function LoadData()
{
    $data=array();
    $dosen=Yii::app()->request->getParam('id_dosen',0);
    $pj=Yii::app()->request->getParam('pengajuan',0);
    $sql="select unsur_pel_pendidikan.ID_UNSUR_PELPEND,subun_pelpend.SUBPELPEND,tbl_dosen.NAMA_DOSEN,
                   tbl_dosen.NIP_DOSEN, tbl_jabatan.NAMA_JABATAN, tbl_golongan.GOLONGAN, tbl_golongan.PANGKAT, 
                   tbl_jurusan.NAMA_JURUSAN, tbl_jurusan.NAMA_PIMPINAN, tbl_jurusan.NIP_PIMPINAN, tbl_jurusan.PANGKAT AS PJ, tbl_jurusan.GOLONGAN AS GJ,
                   tbl_fakultas.NAMA_FAKULTAS, unsur_pel_pendidikan.KEGIATAN_PELPEND, unsur_pel_pendidikan.TEMPAT_PELPEND, 
                   unsur_pel_pendidikan.SEMESTER, unsur_pel_pendidikan.NILAI_PELPEND, unsur_pel_pendidikan.BUKTI_PELPEND, 
                   unsur_pel_pendidikan.PENGAJUAN_KE from unsur_pel_pendidikan inner join subun_pelpend on 
                   unsur_pel_pendidikan.ID_SUBPELPEND=subun_pelpend.ID_SUBPELPEND join tbl_dosen on
                   unsur_pel_pendidikan.ID_DOSEN=tbl_dosen.ID_DOSEN join tbl_jabatan on tbl_dosen.ID_JABATAN=tbl_jabatan.ID_JABATAN 
                   join tbl_golongan on tbl_dosen.ID_GOLONGAN=tbl_golongan.ID_GOLONGAN join tbl_jurusan on 
                   tbl_dosen.ID_JURUSAN=tbl_jurusan.ID_JURUSAN join tbl_fakultas on tbl_jurusan.ID_FAKULTAS=tbl_fakultas.ID_FAKULTAS 
                   where unsur_pel_pendidikan.ID_DOSEN='$dosen' and unsur_pel_pendidikan.PENGAJUAN_KE='$pj' ";
    $hasil = Yii::app()->db->createCommand($sql)->queryAll();
   $i = 0;
    while ($fetchdata = $hasil)
    {
	$i++; // membuat counter 1, 2, 3, ... untuk ditampilkan
       // array_unshift($fetchdata,$i);
	//$data[] = $fetchdata;	
    }
    return $data;
}

// function untuk menampilkan tabel

function TabelWarna($header,$data)
{
    // setting lebar masing-masing kolom dalam mm
    $w=array(2,9,5,5,5,7);    

    // membuat kepala tabel
    for($i=0;$i<count($header);$i++)
    {
	// memberi warna latar merah pada kepala tabel
	$this->SetFillColor(255, 0, 0);    	
// setting huruf bold pada kepala tabel
	$this->SetFont('Arial','B',12);           
	// parameter L menunjukkan teks rata kiri pada setiap 
// sel kepala tabel 
$this->Cell($w[$i],1,$header[$i],1,0,'L',1);    
    }
    $this->Ln();
    // menampilkan data
    // setting jenis font pada data tabel
    $this->SetFont('Arial','',10);     
	
    $j = 0;
    foreach($data as $row)
    {
	// menampilkan perubahan warna latar putih dan biru muda 
// setiap ganti baris
	if ($j % 2 == 0) 
        $this->SetFillCOlor(255,255,255); // setting warna putih
	else 
        $this->SetFillCOlor(224,235,255); // setting warna biru muda
	
	// menampilkan data rata kiri	
	for($i=0;$i<=sizeof($w)-1;$i++)
		$this->Cell($w[$i],6,$row[$i],1,0,'L',1);							
      $this->Ln();
	$j++;
    }
    // penutup tabel
    $this->Cell(array_sum($w),0,'','T');
}

}

$pdf=new PDF('L','cm','Legal');

// nama-nama kolom untuk kepala tabel
$header=array('No','Kegiatan Pendidikan dan Pengajaran','Tempat / Instansi','Semester','Jumlah Angka Kredit','Keterangan / Bukti');

// memanggil function untuk baca data
$data=$pdf->LoadData();

$pdf->AddPage();

// memanggil function untuk menampilkan tabel
$pdf->TabelWarna($header,$data);
$pdf->Output();
?>