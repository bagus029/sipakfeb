<?php

class CetakController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('pendidikan'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete','view','pendidikan','pelpend','penelitian','pengabdian','penunjang',
                                    'pelpendpdf','dupak','coba'),
				'users'=>array('admin',),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
        public function actionPelpend()
        {
            $this->renderPartial('pelpend');
        }
		public function actionDupaks()
		{
			$this->renderPartial('dupaks');
		}
        public function actionPelpendPdf()
        {
            $this->renderPartial('pelpendpdf');
        }


        public function actionPendidikans()
        {
            $html2pdf = Yii::app() -> ePdf -> html2pdf('L','A4','en', false, 'ISO-8859-15', array(10, 5, 10, 5));
            $html2pdf->pdf->SetDisplayMode('fullpage');                      
            $dosen=Yii::app()->request->getParam('id_dosen',0);
            $pj=Yii::app()->request->getParam('pengajuan',0);
            $sql="select unsur_pendidikan.ID_UNSUR_PEND,subun_pend.SUBUNPEND,tbl_dosen.NAMA_DOSEN, tbl_dosen.NIP_DOSEN, 
                  tbl_jabatan.NAMA_JABATAN, tbl_golongan.GOLONGAN, tbl_golongan.PANGKAT, tbl_jurusan.NAMA_JURUSAN, 
                  tbl_jurusan.NAMA_PIMPINAN, tbl_jurusan.NIP_PIMPINAN, tbl_jurusan.PANGKAT AS PJ, tbl_jurusan.GOLONGAN AS GJ, tbl_fakultas.NAMA_FAKULTAS, 
                  unsur_pendidikan.KEGIATAN_PENDIDIKAN, unsur_pendidikan.TEMPAT_PENDIDIKAN, 
                  unsur_pendidikan.TGL_KEGIATAN_PEND, unsur_pendidikan.NILAI_PENDIDIKAN, 
                  unsur_pendidikan.BUKTI_PENDIDIKAN, unsur_pendidikan.PENGAJUAN_KE 
                  from unsur_pendidikan inner join subun_pend on 
                  unsur_pendidikan.ID_SUBUNPEND=subun_pend.ID_SUBUNPEND join tbl_dosen 
                  on unsur_pendidikan.ID_DOSEN=tbl_dosen.ID_DOSEN join tbl_jabatan on 
                  tbl_dosen.ID_JABATAN=tbl_jabatan.ID_JABATAN join tbl_golongan on 
                  tbl_dosen.ID_GOLONGAN=tbl_golongan.ID_GOLONGAN join tbl_jurusan on 
                  tbl_dosen.ID_JURUSAN=tbl_jurusan.ID_JURUSAN join tbl_fakultas on 
                  tbl_jurusan.ID_FAKULTAS=tbl_fakultas.ID_FAKULTAS where 
                  unsur_pendidikan.ID_DOSEN='$dosen' and unsur_pendidikan.PENGAJUAN_KE='$pj' ";
            $data = Yii::app()->db->createCommand($sql)->queryAll();
            $content=$this->renderPartial('pendidikans', array(
                'data' => $data,
                ),true);
            $html2pdf = new HTML2PDF('L','A4','en', array(10, 5, 10, 5));
            $html2pdf->WriteHTML($content);
            $html2pdf->Output();
        }
        
        public function actionPendidikan()
        {
            $dosen=Yii::app()->request->getParam('id_dosen',0);
            $pj=Yii::app()->request->getParam('pengajuan',0);
            $sql="select unsur_pendidikan.ID_UNSUR_PEND,subun_pend.SUBUNPEND,tbl_dosen.NAMA_DOSEN,
                    tbl_dosen.NIP_DOSEN, tbl_jabatan.NAMA_JABATAN, tbl_golongan.GOLONGAN, tbl_golongan.PANGKAT, 
                    tbl_jurusan.NAMA_JURUSAN, tbl_jurusan.NAMA_PIMPINAN, tbl_jurusan.NIP_PIMPINAN,tbl_jurusan.PANGKAT AS PJ, tbl_jurusan.GOLONGAN AS GJ, 
                    tbl_fakultas.NAMA_FAKULTAS, unsur_pendidikan.KEGIATAN_PENDIDIKAN, unsur_pendidikan.TEMPAT_PENDIDIKAN,
                    unsur_pendidikan.TGL_KEGIATAN_PEND, unsur_pendidikan.NILAI_PENDIDIKAN, 
                    unsur_pendidikan.BUKTI_PENDIDIKAN, unsur_pendidikan.PENGAJUAN_KE 
                    from unsur_pendidikan inner join subun_pend on unsur_pendidikan.ID_SUBUNPEND=subun_pend.ID_SUBUNPEND 
                    join tbl_dosen on unsur_pendidikan.ID_DOSEN=tbl_dosen.ID_DOSEN join 
                    tbl_jabatan on tbl_dosen.ID_JABATAN=tbl_jabatan.ID_JABATAN join tbl_golongan on 
                    tbl_dosen.ID_GOLONGAN=tbl_golongan.ID_GOLONGAN join tbl_jurusan on 
                    tbl_dosen.ID_JURUSAN=tbl_jurusan.ID_JURUSAN join tbl_fakultas on 
                    tbl_jurusan.ID_FAKULTAS=tbl_fakultas.ID_FAKULTAS where unsur_pendidikan.ID_DOSEN='$dosen' and 
                    unsur_pendidikan.PENGAJUAN_KE='$pj' ";
            $data = Yii::app()->db->createCommand($sql)->queryAll();
            $this->renderPartial('pendidikan', array(
                'data' => $data,
                ));
        }

        
        public function actionPelpends()
        {
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
                        
            $data = Yii::app()->db->createCommand($sql)->queryAll();
            
            $this->renderPartial('pelpends', array(
                'data' => $data,
                //'data2' => $data2,
                ));
        }
        
        public function actionPenelitian()
        {
            $dosen=Yii::app()->request->getParam('id_dosen',0);
            $pj=Yii::app()->request->getParam('pengajuan',0);
            
             $sql="select unsur_penelitian.ID_UNSUR_PENELITIAN,subun_penelitian.SUBUNPENELITIAN,tbl_dosen.NAMA_DOSEN,
                   tbl_dosen.NIP_DOSEN, tbl_jabatan.NAMA_JABATAN, tbl_golongan.GOLONGAN, tbl_golongan.PANGKAT, 
                   tbl_jurusan.NAMA_JURUSAN, tbl_jurusan.NAMA_PIMPINAN, tbl_jurusan.NIP_PIMPINAN, tbl_jurusan.PANGKAT AS PJ, tbl_jurusan.GOLONGAN AS GJ,
                   tbl_fakultas.NAMA_FAKULTAS, unsur_penelitian.KEGIATAN_PENELITIAN, unsur_penelitian.TEMPAT_PENELITIAN,
                   unsur_penelitian.TGL_PENELITIAN, unsur_penelitian.NILAI_PENELITIAN, unsur_penelitian.NILAI_PEER_REVIEW,
                   unsur_penelitian.BUKTI_PENELITIAN, unsur_penelitian.PENGAJUAN_KE from unsur_penelitian inner join 
                   subun_penelitian on unsur_penelitian.ID_SUBUNPENELITIAN=subun_penelitian.ID_SUBUNPENELITIAN join 
                   tbl_dosen on unsur_penelitian.ID_DOSEN=tbl_dosen.ID_DOSEN join tbl_jabatan on 
                   tbl_dosen.ID_JABATAN=tbl_jabatan.ID_JABATAN join tbl_golongan on 
                   tbl_dosen.ID_GOLONGAN=tbl_golongan.ID_GOLONGAN join tbl_jurusan on 
                   tbl_dosen.ID_JURUSAN=tbl_jurusan.ID_JURUSAN join tbl_fakultas on 
                   tbl_jurusan.ID_FAKULTAS=tbl_fakultas.ID_FAKULTAS where 
                   unsur_penelitian.ID_DOSEN='$dosen' and unsur_penelitian.PENGAJUAN_KE='$pj' ";

             
            $data = Yii::app()->db->createCommand($sql)->queryAll();
            
            $this->renderPartial('penelitian', array(
                'data' => $data,
                ));
        }
        
        public function actionPengabdian()
        {
            $dosen=Yii::app()->request->getParam('id_dosen',0);
            $pj=Yii::app()->request->getParam('pengajuan',0);
            
             $sql="select unsur_pengabdian.ID_UNSUR_PENGABDIAN,subun_pengabdian.SUBUNPENGAB,tbl_dosen.NAMA_DOSEN,
                   tbl_dosen.NIP_DOSEN, tbl_jabatan.NAMA_JABATAN, tbl_golongan.GOLONGAN, tbl_golongan.PANGKAT,
                   tbl_jurusan.NAMA_JURUSAN, tbl_jurusan.NAMA_PIMPINAN, tbl_jurusan.NIP_PIMPINAN, tbl_jurusan.PANGKAT AS PJ, tbl_jurusan.GOLONGAN AS GJ, tbl_fakultas.NAMA_FAKULTAS,
                   unsur_pengabdian.KEGIATAN_PENGABDIAN, unsur_pengabdian.BENTUK_PENGABDIAN, unsur_pengabdian.TEMPAT_PENGABDIAN,
                   unsur_pengabdian.TGL_PENGABDIAN, unsur_pengabdian.NILAI_PENGABDIAN,unsur_pengabdian.BUKTI_PENGABDIAN, 
                   unsur_pengabdian.PENGAJUAN_KE from unsur_pengabdian inner join subun_pengabdian on 
                   unsur_pengabdian.ID_SUBUNPENGAB=subun_pengabdian.ID_SUBUNPENGAB join tbl_dosen on 
                   unsur_pengabdian.ID_DOSEN=tbl_dosen.ID_DOSEN join tbl_jabatan on 
                   tbl_dosen.ID_JABATAN=tbl_jabatan.ID_JABATAN join tbl_golongan on 
                   tbl_dosen.ID_GOLONGAN=tbl_golongan.ID_GOLONGAN join tbl_jurusan on 
                   tbl_dosen.ID_JURUSAN=tbl_jurusan.ID_JURUSAN join tbl_fakultas on 
                   tbl_jurusan.ID_FAKULTAS=tbl_fakultas.ID_FAKULTAS where 
                   unsur_pengabdian.ID_DOSEN='$dosen' and unsur_pengabdian.PENGAJUAN_KE='$pj' ";

             
            $data = Yii::app()->db->createCommand($sql)->queryAll();
            
            $this->renderPartial('pengabdian', array(
                'data' => $data,
                ));
        }

	public function actionPenunjang()
        {
            $dosen=Yii::app()->request->getParam('id_dosen',0);
            $pj=Yii::app()->request->getParam('pengajuan',0);

            $sql="select unsur_penunjang.ID_UNSUR_PENUNJANG,subun_penunjang.SUBUNPENUNJANG,tbl_dosen.NAMA_DOSEN,
                  tbl_dosen.NIP_DOSEN, tbl_jabatan.NAMA_JABATAN, tbl_golongan.GOLONGAN, tbl_golongan.PANGKAT, 
                  tbl_jurusan.NAMA_JURUSAN, tbl_jurusan.NAMA_PIMPINAN, tbl_jurusan.NIP_PIMPINAN, tbl_jurusan.PANGKAT AS PJ, tbl_jurusan.GOLONGAN AS GJ,
                  tbl_fakultas.NAMA_FAKULTAS, unsur_penunjang.KEGIATAN_PENUNJANG, unsur_penunjang.KEDUDUKAN_SEBAGAI,
                  unsur_penunjang.TEMPAT_PENUNJANG, unsur_penunjang.TGL_KEG_PENUNJANG, 
                  unsur_penunjang.NILAI_PENUNJANG,unsur_penunjang.BUKTI_PENUNJANG, 
                  unsur_penunjang.PENGAJUAN_KE from unsur_penunjang inner join subun_penunjang 
                  on unsur_penunjang.ID_SUBUNPENUNJANG=subun_penunjang.ID_SUBUNPENUNJANG join
                  tbl_dosen on unsur_penunjang.ID_DOSEN=tbl_dosen.ID_DOSEN join tbl_jabatan on 
                  tbl_dosen.ID_JABATAN=tbl_jabatan.ID_JABATAN join tbl_golongan on 
                  tbl_dosen.ID_GOLONGAN=tbl_golongan.ID_GOLONGAN join tbl_jurusan on 
                  tbl_dosen.ID_JURUSAN=tbl_jurusan.ID_JURUSAN join tbl_fakultas on 
                  tbl_jurusan.ID_FAKULTAS=tbl_fakultas.ID_FAKULTAS where 
                  unsur_penunjang.ID_DOSEN='$dosen' and unsur_penunjang.PENGAJUAN_KE='$pj' ";

             
            $data = Yii::app()->db->createCommand($sql)->queryAll();
            
            $this->renderPartial('penunjang', array(
                'data' => $data,
                ));
        }
		
	public function actionDupak()
	{
            $nip=Yii::app()->request->getParam('id_dosen',0);
            $ajukan=Yii::app()->request->getParam('pengajuan',0);
            
            $dosen="select * from tbl_dosen where NIP_DOSEN='$nip'";
            $sql="select unsur_pel_pendidikan.PENGAJUAN_KE, subun_pelpend.SUBPELPEND, sum(unsur_pel_pendidikan.NILAI_PELPEND) as nilai, tbl_dosen.NIP_DOSEN, tbl_dosen.NAMA_DOSEN, tbl_dosen.ID_DOSEN from unsur_pel_pendidikan join subun_pelpend on unsur_pel_pendidikan.ID_SUBPELPEND=subun_pelpend.ID_SUBPELPEND join tbl_dosen on unsur_pel_pendidikan.ID_DOSEN=tbl_dosen.ID_DOSEN where tbl_dosen.ID_DOSEN='$nip' and unsur_pel_pendidikan.PENGAJUAN_KE='$ajukan' GROUP by unsur_pel_pendidikan.ID_SUBPELPEND ";
            $sql2="select unsur_pendidikan.PENGAJUAN_KE, subun_pend.SUBUNPEND, sum(unsur_pendidikan.NILAI_PENDIDIKAN) as nilai, tbl_dosen.NIP_DOSEN, tbl_dosen.NAMA_DOSEN, tbl_dosen.ID_DOSEN from unsur_pendidikan join subun_pend on unsur_pendidikan.ID_SUBUNPEND=subun_pend.ID_SUBUNPEND join tbl_dosen on unsur_pendidikan.ID_DOSEN=tbl_dosen.ID_DOSEN where tbl_dosen.ID_DOSEN='$nip' and unsur_pendidikan.PENGAJUAN_KE='$ajukan' GROUP by unsur_pendidikan.ID_SUBUNPEND ";
            $sql3="select unsur_penelitian.PENGAJUAN_KE, subun_penelitian.SUBUNPENELITIAN, sum(unsur_penelitian.NILAI_PENELITIAN) as nilai,sum(unsur_penelitian.NILAI_PEER_REVIEW) as nilai_peer, tbl_dosen.NIP_DOSEN, tbl_dosen.NAMA_DOSEN, tbl_dosen.ID_DOSEN from unsur_penelitian join subun_penelitian on unsur_penelitian.ID_SUBUNPENELITIAN=subun_penelitian.ID_SUBUNPENELITIAN join tbl_dosen on unsur_penelitian.ID_DOSEN=tbl_dosen.ID_DOSEN where tbl_dosen.ID_DOSEN='$nip' and unsur_penelitian.PENGAJUAN_KE='$ajukan' GROUP by unsur_penelitian.ID_SUBUNPENELITIAN";
            $sql4="select unsur_pengabdian.PENGAJUAN_KE, subun_pengabdian.SUBUNPENGAB, sum(unsur_pengabdian.NILAI_PENGABDIAN) as nilai, tbl_dosen.NIP_DOSEN, tbl_dosen.NAMA_DOSEN, tbl_dosen.ID_DOSEN from unsur_pengabdian join subun_pengabdian on unsur_pengabdian.ID_SUBUNPENGAB=subun_pengabdian.ID_SUBUNPENGAB join tbl_dosen on unsur_pengabdian.ID_DOSEN=tbl_dosen.ID_DOSEN where tbl_dosen.ID_DOSEN='$nip' and unsur_pengabdian.PENGAJUAN_KE='$ajukan' GROUP by unsur_pengabdian.ID_SUBUNPENGAB";
            $sql5="select unsur_penunjang.PENGAJUAN_KE, subun_penunjang.SUBUNPENUNJANG, sum(unsur_penunjang.NILAI_PENUNJANG) as nilai, tbl_dosen.NIP_DOSEN, tbl_dosen.NAMA_DOSEN, tbl_dosen.ID_DOSEN from unsur_penunjang join subun_penunjang on unsur_penunjang.ID_SUBUNPENUNJANG=subun_penunjang.ID_SUBUNPENUNJANG join tbl_dosen on unsur_penunjang.ID_DOSEN=tbl_dosen.ID_DOSEN WHERE tbl_dosen.ID_DOSEN='$nip' and unsur_penunjang.PENGAJUAN_KE='$ajukan' GROUP BY unsur_penunjang.ID_SUBUNPENUNJANG";
            $dos=Yii::app()->db->createCommand($dosen)->queryAll();
            $data = Yii::app()->db->createCommand($sql)->queryAll();
            $data2 = Yii::app()->db->createCommand($sql2)->queryAll();
            $data3 = Yii::app()->db->createCommand($sql3)->queryAll();
            $data4 = Yii::app()->db->createCommand($sql4)->queryAll();
            $data5 = Yii::app()->db->createCommand($sql5)->queryAll();
            
            $this->renderPartial('dupak', array(
                'ajukan'=>$ajukan,
                'dos'=>$dos,
                'data' => $data,
                'data2' => $data2,
                'data3' => $data3,
                'data4'=>$data4,
                'data5'=>$data5));
            
        
	}
}
