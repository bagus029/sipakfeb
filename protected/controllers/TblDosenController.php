<?php

class TblDosenController extends Controller
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
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view'),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('update'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','create','delete','viewdosen','pengajuanak','aktetap','viewaktetap','tambahpengajuan','create2'),
				'users'=>array('admin'),
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
	public function actionView($id)
	{
                $dosen= TblDosen::model()->findByPK($id);
               $a= $dosen->NIP_DOSEN;
                
                $viewdokumen=new CActiveDataProvider('TblDokumenDosen',array(
                    'criteria'=>array(
                        'condition'=>'NIP_DOSEN=:NIP_DOSEN',
                        'params'=>array(':NIP_DOSEN'=>$a),
                    ),
                ));
		$this->render('view',array(
			'model'=>$this->loadModel($id),
                        'viewdokumen'=>$viewdokumen,
		));
	}
        
        public function actionTambahPengajuan($id)
        {
            $this->render('tambahpengajuan',array(
			'model'=>$this->loadModel($id),
		));
        }
        
        public function actionlihatdata()
        {
            $nip=Yii::app()->user->NIP_USER;
            $ajukan=Yii::app()->request->getParam('id');

            $sql="select unsur_pel_pendidikan.ID_SUBPELPEND,unsur_pel_pendidikan.PENGAJUAN_KE, subun_pelpend.SUBPELPEND, 
                  unsur_pel_pendidikan.KEGIATAN_PELPEND, unsur_pel_pendidikan.NILAI_PELPEND, tbl_dosen.NIP_DOSEN, 
                  tbl_dosen.NAMA_DOSEN, tbl_dosen.ID_DOSEN from unsur_pel_pendidikan join subun_pelpend 
                  on unsur_pel_pendidikan.ID_SUBPELPEND=subun_pelpend.ID_SUBPELPEND join tbl_dosen on 
                  unsur_pel_pendidikan.ID_DOSEN=tbl_dosen.ID_DOSEN
                  where tbl_dosen.NIP_DOSEN='$nip' and unsur_pel_pendidikan.PENGAJUAN_KE='$ajukan' ";
            $sql2="select unsur_pendidikan.ID_UNSUR_PEND, subun_pend.SUBUNPEND, tbl_dosen.NAMA_DOSEN,tbl_dosen.NIP_DOSEN,
                  unsur_pendidikan.KEGIATAN_PENDIDIKAN, unsur_pendidikan.TEMPAT_PENDIDIKAN, unsur_pendidikan.TGL_KEGIATAN_PEND,
                  unsur_pendidikan.BUKTI_PENDIDIKAN, unsur_pendidikan.NILAI_PENDIDIKAN, unsur_pendidikan.PENGAJUAN_KE 
                  from unsur_pendidikan join subun_pend on unsur_pendidikan.ID_SUBUNPEND=subun_pend.ID_SUBUNPEND 
                  join tbl_dosen on unsur_pendidikan.ID_DOSEN=tbl_dosen.ID_DOSEN where tbl_dosen.NIP_DOSEN='$nip' and unsur_pendidikan.PENGAJUAN_KE='$ajukan'";
            $sql3="select unsur_penelitian.ID_UNSUR_PENELITIAN, subun_penelitian.SUBUNPENELITIAN, tbl_dosen.NAMA_DOSEN,
                    tbl_dosen.NIP_DOSEN, unsur_penelitian.KEGIATAN_PENELITIAN, unsur_penelitian.TEMPAT_PENELITIAN, 
                    unsur_penelitian.TGL_PENELITIAN, unsur_penelitian.BUKTI_PENELITIAN, unsur_penelitian.NILAI_PENELITIAN, 
                    unsur_penelitian.NILAI_PEER_REVIEW, unsur_penelitian.PENGAJUAN_KE from unsur_penelitian 
                    join subun_penelitian on unsur_penelitian.ID_SUBUNPENELITIAN=subun_penelitian.ID_SUBUNPENELITIAN 
                    join tbl_dosen on unsur_penelitian.ID_DOSEN=tbl_dosen.ID_DOSEN where NIP_DOSEN='$nip' AND PENGAJUAN_KE='$ajukan'";
            $sql4="select unsur_pengabdian.ID_UNSUR_PENGABDIAN, subun_pengabdian.SUBUNPENGAB,tbl_dosen.NAMA_DOSEN, tbl_dosen.NIP_DOSEN, unsur_pengabdian.KEGIATAN_PENGABDIAN, 
                    unsur_pengabdian.BENTUK_PENGABDIAN, unsur_pengabdian.TEMPAT_PENGABDIAN, unsur_pengabdian.BUKTI_PENGABDIAN,
                    unsur_pengabdian.TGL_PENGABDIAN,unsur_pengabdian.NILAI_PENGABDIAN,unsur_pengabdian.PENGAJUAN_KE from unsur_pengabdian
                    join tbl_dosen on unsur_pengabdian.ID_DOSEN=tbl_dosen.ID_DOSEN join subun_pengabdian on unsur_pengabdian.ID_SUBUNPENGAB=subun_pengabdian.ID_SUBUNPENGAB
                    where NIP_DOSEN='$nip' AND PENGAJUAN_KE='$ajukan'";
            $sql5="select unsur_penunjang.ID_UNSUR_PENUNJANG, subun_penunjang.SUBUNPENUNJANG,tbl_dosen.NAMA_DOSEN, tbl_dosen.NIP_DOSEN,
                    unsur_penunjang.KEGIATAN_PENUNJANG, unsur_penunjang.TEMPAT_PENUNJANG, unsur_penunjang.TGL_KEG_PENUNJANG, 
                    unsur_penunjang.KEDUDUKAN_SEBAGAI, unsur_penunjang.BUKTI_PENUNJANG, unsur_penunjang.NILAI_PENUNJANG, 
                    unsur_penunjang.PENGAJUAN_KE from unsur_penunjang join subun_penunjang on unsur_penunjang.ID_SUBUNPENUNJANG=subun_penunjang.ID_SUBUNPENUNJANG 
                    join tbl_dosen on unsur_penunjang.ID_DOSEN=tbl_dosen.ID_DOSEN where NIP_DOSEN='$nip' and PENGAJUAN_KE='$ajukan'";
            $data = Yii::app()->db->createCommand($sql)->queryAll();
            $data2 = Yii::app()->db->createCommand($sql2)->queryAll();
            $data3 = Yii::app()->db->createCommand($sql3)->queryAll();
            $data4 = Yii::app()->db->createCommand($sql4)->queryAll();
            $data5 = Yii::app()->db->createCommand($sql5)->queryAll();
            
            $this->render('site/dosen',array(
			//'model'=>$this->loadModel($id),
                       // 'viewlampiran'=>$viewlampiran,
                        'data'=>$data,
                        'data2'=>$data2,
                        'data3'=>$data3,
                        'data4'=>$data4,
                        'data5'=>$data5,
		));
        }

        public function actionviewdosen($id)
		{
				$dosen= TblDosen::model()->findByPK($id);
                //$ajukan=  UnsurPendidikan::model()->findByPK($pengajuan);
				$ajukan = Yii::app()->request->getParam('pengajuan');
                $viewangkapend=new CActiveDataProvider('UnsurPendidikan', array(
                    'criteria'=>array(
                        //'condition'=>'ID_DOSEN=:ID_DOSEN and PENGAJUAN_KE=:PENGAJUAN_KE',
                        'condition'=>'ID_DOSEN=:ID_DOSEN',
                        'params'=>array(':ID_DOSEN'=>$id,/*':PENGAJUAN_KE'=>$ajukan*/)
                        ),
                        'pagination'=>array('pageSize'=>100,),
                    
                ));
                
                $viewangkapelpend=new CActiveDataProvider('UnsurPelPendidikan', array(
                    'criteria'=>array(
                     'condition'=>'ID_DOSEN=:ID_DOSEN and PENGAJUAN_KE=:PENGAJUAN_KE',
                        'params'=>array(':ID_DOSEN'=>$id,':PENGAJUAN_KE'=>$ajukan)
                        ),
                        'pagination'=>array('pageSize'=>100,),
                    
                ));
                
                $viewangkapenelitian=new CActiveDataProvider('UnsurPenelitian', array(
                   'criteria'=>array(
                       'condition'=>'ID_DOSEN=:ID_DOSEN and PENGAJUAN_KE=:PENGAJUAN_KE',
                        'params'=>array(':ID_DOSEN'=>$id,':PENGAJUAN_KE'=>$ajukan)
                   ),
                    'pagination'=>array('pageSize'=>100,),
                ));
                
                $viewangkapengabdian=new CActiveDataProvider('UnsurPengabdian', array(
                   'criteria'=>array(
                      'condition'=>'ID_DOSEN=:ID_DOSEN and PENGAJUAN_KE=:PENGAJUAN_KE',
                        'params'=>array(':ID_DOSEN'=>$id,':PENGAJUAN_KE'=>$ajukan)
                   ),
                    'pagination'=>array('pageSize'=>100,),
                ));
                
                $viewangkapenunjang=new CActiveDataProvider('UnsurPenunjang', array(
                   'criteria'=>array(
                       'condition'=>'ID_DOSEN=:ID_DOSEN and PENGAJUAN_KE=:PENGAJUAN_KE',
                        'params'=>array(':ID_DOSEN'=>$id,':PENGAJUAN_KE'=>$ajukan)
                   ),
                    'pagination'=>array('pageSize'=>100,),
                ));
		$this->render('viewdosen',array(
			'model'=>$this->loadModel($id),
                       // 'viewlampiran'=>$viewlampiran,
                        'viewangkapend'=>$viewangkapend,
                        'viewangkapelpend'=>$viewangkapelpend,
                        'viewangkapenelitian'=>$viewangkapenelitian,
                        'viewangkapengabdian'=>$viewangkapengabdian,
                        'viewangkapenunjang'=>$viewangkapenunjang,
		));
	}
	
	public function actionCetak()
		{
				$dosen=Yii::app()->request->getParam('id_dosen',0);
				$ajukan=Yii::app()->request->getParam('pengajuan',0);
				
                $viewangkapend=new CActiveDataProvider('UnsurPendidikan', array(
                    'criteria'=>array(
                        'condition'=>'ID_DOSEN=:ID_DOSEN and PENGAJUAN_KE=:PENGAJUAN_KE',
                        'params'=>array(':ID_DOSEN'=>$id,':PENGAJUAN_KE'=>$ajukan)
                        ),
                        'pagination'=>array('pageSize'=>100,),
                    
                ));
                
                $viewangkapelpend=new CActiveDataProvider('UnsurPelPendidikan', array(
                    'criteria'=>array(
                     'condition'=>'ID_DOSEN=:ID_DOSEN and PENGAJUAN_KE=:PENGAJUAN_KE',
                        'params'=>array(':ID_DOSEN'=>$id,':PENGAJUAN_KE'=>$ajukan)
                        ),
                        'pagination'=>array('pageSize'=>100,),
                    
                ));
                
                $viewangkapenelitian=new CActiveDataProvider('UnsurPenelitian', array(
                   'criteria'=>array(
                       'condition'=>'ID_DOSEN=:ID_DOSEN and PENGAJUAN_KE=:PENGAJUAN_KE',
                        'params'=>array(':ID_DOSEN'=>$id,':PENGAJUAN_KE'=>$ajukan)
                   ),
                    'pagination'=>array('pageSize'=>100,),
                ));
                
                $viewangkapengabdian=new CActiveDataProvider('UnsurPengabdian', array(
                   'criteria'=>array(
                      'condition'=>'ID_DOSEN=:ID_DOSEN and PENGAJUAN_KE=:PENGAJUAN_KE',
                        'params'=>array(':ID_DOSEN'=>$id,':PENGAJUAN_KE'=>$ajukan)
                   ),
                    'pagination'=>array('pageSize'=>100,),
                ));
                
                $viewangkapenunjang=new CActiveDataProvider('UnsurPenunjang', array(
                   'criteria'=>array(
                       'condition'=>'ID_DOSEN=:ID_DOSEN and PENGAJUAN_KE=:PENGAJUAN_KE',
                        'params'=>array(':ID_DOSEN'=>$id,':PENGAJUAN_KE'=>$ajukan)
                   ),
                    'pagination'=>array('pageSize'=>100,),
                ));
		$this->renderPartial('pelpend',array(
			'model'=>$this->loadModel($id),
                       // 'viewlampiran'=>$viewlampiran,
                        'viewangkapend'=>$viewangkapend,
                        'viewangkapelpend'=>$viewangkapelpend,
                        'viewangkapenelitian'=>$viewangkapenelitian,
                        'viewangkapengabdian'=>$viewangkapengabdian,
                        'viewangkapenunjang'=>$viewangkapenunjang,
		));
	}
        
        public function actionviewaktetap($id)
	{
		$dosen= TblDosen::model()->findByPK($id);
                $tigabe= 'III B';
                $tigace= 'III C';
                $tigade= 'III D';
                $empata= 'IV A';
                $empatbe= 'IV B';
                $empatce='IV C';
                $empatde='IV D';
                $empate='IV E';
                
                $IIIB=new CActiveDataProvider('TblAkTetap', array(
                    'criteria'=>array(
                        'condition'=>'ID_DOSEN=:ID_DOSEN AND JENJANG_JABATAN=:JENJANG_JABATAN',
                        'params'=>array(':ID_DOSEN'=>$id,':JENJANG_JABATAN'=>$tigabe)
                        ),
                        'pagination'=>array('pageSize'=>10,),
                    
                ));
                
                $IIIC=new CActiveDataProvider('TblAkTetap', array(
                    'criteria'=>array(
                        'condition'=>'ID_DOSEN=:ID_DOSEN AND JENJANG_JABATAN=:JENJANG_JABATAN',
                        'params'=>array(':ID_DOSEN'=>$id,':JENJANG_JABATAN'=>$tigace)
                        ),
                        'pagination'=>array('pageSize'=>10,),
                    
                ));
                
                $IIID=new CActiveDataProvider('TblAkTetap', array(
                    'criteria'=>array(
                        'condition'=>'ID_DOSEN=:ID_DOSEN AND JENJANG_JABATAN=:JENJANG_JABATAN',
                        'params'=>array(':ID_DOSEN'=>$id,':JENJANG_JABATAN'=>$tigade)
                        ),
                        'pagination'=>array('pageSize'=>10,),
                    
                ));
                
                $IVA=new CActiveDataProvider('TblAkTetap', array(
                    'criteria'=>array(
                        'condition'=>'ID_DOSEN=:ID_DOSEN AND JENJANG_JABATAN=:JENJANG_JABATAN',
                        'params'=>array(':ID_DOSEN'=>$id,':JENJANG_JABATAN'=>$empata)
                        ),
                        'pagination'=>array('pageSize'=>10,),
                    
                ));
                
                $IVB=new CActiveDataProvider('TblAkTetap', array(
                    'criteria'=>array(
                        'condition'=>'ID_DOSEN=:ID_DOSEN AND JENJANG_JABATAN=:JENJANG_JABATAN',
                        'params'=>array(':ID_DOSEN'=>$id,':JENJANG_JABATAN'=>$empatbe)
                        ),
                        'pagination'=>array('pageSize'=>10,),
                    
                ));
                
                $IVC=new CActiveDataProvider('TblAkTetap', array(
                    'criteria'=>array(
                        'condition'=>'ID_DOSEN=:ID_DOSEN AND JENJANG_JABATAN=:JENJANG_JABATAN',
                        'params'=>array(':ID_DOSEN'=>$id,':JENJANG_JABATAN'=>$empatce)
                        ),
                        'pagination'=>array('pageSize'=>10,),
                    
                ));
                
                $IVD=new CActiveDataProvider('TblAkTetap', array(
                    'criteria'=>array(
                        'condition'=>'ID_DOSEN=:ID_DOSEN AND JENJANG_JABATAN=:JENJANG_JABATAN',
                        'params'=>array(':ID_DOSEN'=>$id,':JENJANG_JABATAN'=>$empatde)
                        ),
                        'pagination'=>array('pageSize'=>10,),
                    
                ));
                
                $IVE=new CActiveDataProvider('TblAkTetap', array(
                    'criteria'=>array(
                        'condition'=>'ID_DOSEN=:ID_DOSEN AND JENJANG_JABATAN=:JENJANG_JABATAN',
                        'params'=>array(':ID_DOSEN'=>$id,':JENJANG_JABATAN'=>$empate)
                        ),
                        'pagination'=>array('pageSize'=>10,),
                    
                ));
               
		$this->render('viewaktetap',array(
			'model'=>$this->loadModel($id),
                       // 'viewlampiran'=>$viewlampiran,
                        'IIIB'=>$IIIB,
                        'IIIC'=>$IIIC,
                        'IIID'=>$IIID,
                        'IVA'=>$IVA,
                        'IVB'=>$IVB,
                        'IVC'=>$IVC,
                        'IVD'=>$IVD,
                        'IVE'=>$IVE,
                        
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new TblDosen;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['TblDosen']))
		{
			$model->attributes=$_POST['TblDosen'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->ID_DOSEN));
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['TblDosen']))
		{
			$model->attributes=$_POST['TblDosen'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->ID_DOSEN));
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		$this->loadModel($id)->delete();

		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('TblDosen');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new TblDosen('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['TblDosen']))
			$model->attributes=$_GET['TblDosen'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}
        
        public function actionPengajuanak()
	{
		$model=new TblDosen('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['TblDosen']))
			$model->attributes=$_GET['TblDosen'];

		$this->render('pengajuanak',array(
			'model'=>$model,
		));
	}
        
        public function actionAktetap()
	{
		$model=new TblDosen('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['TblDosen']))
			$model->attributes=$_GET['TblDosen'];

		$this->render('aktetap',array(
			'model'=>$model,
		));
	}
        
       public function actionCreate2()
        {
            $model=new TblDosen;
            $model2=new User;
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['TblDosen'],$_POST['User']))
		{
			$model->attributes=$_POST['TblDosen'];
                        $model2->attributes=$_POST['User'];
                        
                        $valid=$model->validate();
		        $valid=$model2->validate() && $valid;
                        
                        if($valid)
			{
                            if($model->save())
                            {
				$model2->NAMA_USER=$model->NAMA_DOSEN;
                                $model2->NIP_USER=$model->NIP_DOSEN;
                                $model2->USERNAME=$model->NIP_DOSEN;
                                $model2->PASSWORD=$model->NIP_DOSEN;
                                $model2->LEVEL=2;
                                
                                $model2->save(false);
                                $this->redirect(array('view','id'=>$model->ID_DOSEN));
                            }
                        }
		}

		$this->render('create2',array(
			'model'=>$model,
                        'model2'=>$model2,
		));
        }
	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return TblDosen the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=TblDosen::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}
        
        
        
	/**
	 * Performs the AJAX validation.
	 * @param TblDosen $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='tbl-dosen-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
