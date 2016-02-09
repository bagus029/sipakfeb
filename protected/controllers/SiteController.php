<?php

class SiteController extends Controller
{
	public function filters()
	{
		return array(
			'accessControl',
		);
	}
        
	public function accessRules()
	{
		return array(
			array('allow',
				'actions'=>array('error','contact','login','captcha'),
				'users'=>array('*'),
			),
			array('allow',
				'actions'=>array('index','logout','update',
                                    'subun','angka','pengajuan','indexdosen',
                                    'dosen','lihatpengajuan','ajukan','ajukandosen','aktetapdosen','manualuser'),
				'users'=>array('@'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	} 
        
        
	public function actions()
	{
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha'=>array(
				'class'=>'CCaptchaAction',
				'backColor'=>0xFFFFFF,
			),
			// page action renders "static" pages stored under 'protected/views/site/pages'
			// They can be accessed via: index.php?r=site/page&view=FileName
			'page'=>array(
				'class'=>'CViewAction',
			),
		);
	}
        
        public function actionManualUser()
        {
           $this->render('manualuser');
        }
         
               
	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionIndex()
	{
                $this->render('index');
		
	}
        
        public function actionAktetapdosen()
        {
            $this->render('aktetapdosen');
           
        }
        
        public function actionLihatpengajuan()
        {
            $this->render('lihatpengajuan');
        }
        
        public function actionAjukan()
        {
            $this->render('ajukan');
        }
        
        public function actionAjukanDosen()
        {
            $this->render('ajukandosen');
        }
        

                public function actionDosens()
        {
            $this->render('dosens');
        }
        
        public function actionDosen()
        {
            $nip=Yii::app()->user->NIP_USER;
            $ajukan=Yii::app()->request->getParam('id');
            
            $dosen="select * from tbl_dosen where NIP_DOSEN='$nip'";
            $sql="select unsur_pel_pendidikan.PENGAJUAN_KE, subun_pelpend.ID_SUBPELPEND, subun_pelpend.SUBPELPEND, sum(unsur_pel_pendidikan.NILAI_PELPEND) as nilai, tbl_dosen.NIP_DOSEN, tbl_dosen.NAMA_DOSEN, tbl_dosen.ID_DOSEN from unsur_pel_pendidikan join subun_pelpend on unsur_pel_pendidikan.ID_SUBPELPEND=subun_pelpend.ID_SUBPELPEND join tbl_dosen on unsur_pel_pendidikan.ID_DOSEN=tbl_dosen.ID_DOSEN where tbl_dosen.NIP_DOSEN='$nip' and unsur_pel_pendidikan.PENGAJUAN_KE='$ajukan' GROUP by unsur_pel_pendidikan.ID_SUBPELPEND ";
            $sql2="select unsur_pendidikan.PENGAJUAN_KE, subun_pend.ID_SUBUNPEND,subun_pend.SUBUNPEND, sum(unsur_pendidikan.NILAI_PENDIDIKAN) as nilai, tbl_dosen.NIP_DOSEN, tbl_dosen.NAMA_DOSEN, tbl_dosen.ID_DOSEN from unsur_pendidikan join subun_pend on unsur_pendidikan.ID_SUBUNPEND=subun_pend.ID_SUBUNPEND join tbl_dosen on unsur_pendidikan.ID_DOSEN=tbl_dosen.ID_DOSEN where tbl_dosen.NIP_DOSEN='$nip' and unsur_pendidikan.PENGAJUAN_KE='$ajukan' GROUP by unsur_pendidikan.ID_SUBUNPEND ";
            $sql3="select unsur_penelitian.PENGAJUAN_KE, subun_penelitian.ID_SUBUNPENELITIAN,subun_penelitian.SUBUNPENELITIAN, sum(unsur_penelitian.NILAI_PENELITIAN) as nilai,sum(unsur_penelitian.NILAI_PEER_REVIEW) as nilai_peer, tbl_dosen.NIP_DOSEN, tbl_dosen.NAMA_DOSEN, tbl_dosen.ID_DOSEN from unsur_penelitian join subun_penelitian on unsur_penelitian.ID_SUBUNPENELITIAN=subun_penelitian.ID_SUBUNPENELITIAN join tbl_dosen on unsur_penelitian.ID_DOSEN=tbl_dosen.ID_DOSEN where tbl_dosen.NIP_DOSEN='$nip' and unsur_penelitian.PENGAJUAN_KE='$ajukan' GROUP by unsur_penelitian.ID_SUBUNPENELITIAN";
            $sql4="select unsur_pengabdian.PENGAJUAN_KE, subun_pengabdian.ID_SUBUNPENGAB, subun_pengabdian.SUBUNPENGAB, sum(unsur_pengabdian.NILAI_PENGABDIAN) as nilai, tbl_dosen.NIP_DOSEN, tbl_dosen.NAMA_DOSEN, tbl_dosen.ID_DOSEN from unsur_pengabdian join subun_pengabdian on unsur_pengabdian.ID_SUBUNPENGAB=subun_pengabdian.ID_SUBUNPENGAB join tbl_dosen on unsur_pengabdian.ID_DOSEN=tbl_dosen.ID_DOSEN where tbl_dosen.NIP_DOSEN='$nip' and unsur_pengabdian.PENGAJUAN_KE='$ajukan' GROUP by unsur_pengabdian.ID_SUBUNPENGAB";
            $sql5="select unsur_penunjang.PENGAJUAN_KE, subun_penunjang.ID_SUBUNPENUNJANG, subun_penunjang.SUBUNPENUNJANG, sum(unsur_penunjang.NILAI_PENUNJANG) as nilai, tbl_dosen.NIP_DOSEN, tbl_dosen.NAMA_DOSEN, tbl_dosen.ID_DOSEN from unsur_penunjang join subun_penunjang on unsur_penunjang.ID_SUBUNPENUNJANG=subun_penunjang.ID_SUBUNPENUNJANG join tbl_dosen on unsur_penunjang.ID_DOSEN=tbl_dosen.ID_DOSEN WHERE tbl_dosen.NIP_DOSEN='$nip' and unsur_penunjang.PENGAJUAN_KE='$ajukan' GROUP BY unsur_penunjang.ID_SUBUNPENUNJANG";
            
            $dos=Yii::app()->db->createCommand($dosen)->queryAll();
            $data = Yii::app()->db->createCommand($sql)->queryAll();
            $data2 = Yii::app()->db->createCommand($sql2)->queryAll();
            $data3 = Yii::app()->db->createCommand($sql3)->queryAll();
            $data4 = Yii::app()->db->createCommand($sql4)->queryAll();
            $data5 = Yii::app()->db->createCommand($sql5)->queryAll();
            
            $this->render('dosen', array(
                'ajukan'=>$ajukan,
                'dos'=>$dos,
                'data' => $data,
                'data2' => $data2,
                'data3' => $data3,
                'data4'=>$data4,
                'data5'=>$data5));
            
        }
        
        
        public function actionIndexDosen()
        {
            $this->render('indexdosen');
        }


        public function actionSubun()
        {
            $this->render('subun');
        }
        
        public function actionAngka()
        {
            $this->render('angka');
        }
        
        public function actionPengajuan()
        {
            $this->render('pengajuan');
        }
        
        

        /**
	 * This is the action to handle external exceptions.
	 */
	public function actionError()
	{
		if($error=Yii::app()->errorHandler->error)
		{
			if(Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);
		}
	}

	/**
	 * Displays the contact page
	 */
	public function actionContact()
	{
		$model=new ContactForm;
		if(isset($_POST['ContactForm']))
		{
			$model->attributes=$_POST['ContactForm'];
			if($model->validate())
			{
				$name='=?UTF-8?B?'.base64_encode($model->name).'?=';
				$subject='=?UTF-8?B?'.base64_encode($model->subject).'?=';
				$headers="From: $name <{$model->email}>\r\n".
					"Reply-To: {$model->email}\r\n".
					"MIME-Version: 1.0\r\n".
					"Content-Type: text/plain; charset=UTF-8";

				mail(Yii::app()->params['adminEmail'],$subject,$model->body,$headers);
				Yii::app()->user->setFlash('contact','Thank you for contacting us. We will respond to you as soon as possible.');
				$this->refresh();
			}
		}
		$this->render('contact',array('model'=>$model));
	}

	/**
	 * Displays the login page
	 */
	public function actionLogin()
	{
		$model=new LoginForm;

		// if it is ajax validation request
		if(isset($_POST['ajax']) && $_POST['ajax']==='login-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}

		// collect user input data
		if(isset($_POST['LoginForm']))
		{
			$model->attributes=$_POST['LoginForm'];
			// validate user input and redirect to the previous page if valid
			if($model->validate() && $model->login())
				$this->redirect(Yii::app()->user->returnUrl);
		}
		// display the login form
                $this->layout="/layouts/menu-login"; //ngatur biar langsung ke login
		$this->render('login',array('model'=>$model));
	}

	/**
	 * Logs out the current user and redirect to homepage.
	 */
	public function actionLogout()
	{
		Yii::app()->user->logout();
		$this->redirect(Yii::app()->homeUrl);
	}
}