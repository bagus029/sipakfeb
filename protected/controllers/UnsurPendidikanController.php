<?php

class UnsurPendidikanController extends Controller
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
				'actions'=>array('create','update','bdosen','detail'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete','cetak','detail'),
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
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}
        
        public function actionDetail()
        {
            $iddos=Yii::app()->request->getParam('id');
            $idsub=Yii::app()->request->getParam('subpend');
            $pengajuan=Yii::app()->request->getParam('pengajuan');
            
            $sql="select * from unsur_pendidikan where ID_DOSEN='$iddos' and ID_SUBUNPEND='$idsub' and PENGAJUAN_KE='$pengajuan'";
            $data = Yii::app()->db->createCommand($sql)->queryAll();
            $this->render('detail',array(
			'data'=>$data,));
        }

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate($id_dosen,$pengajuan)
	{
		$model=new UnsurPendidikan;
                $model->ID_DOSEN=$id_dosen;
                $model->PENGAJUAN_KE=$pengajuan;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['UnsurPendidikan']))
		{
			$model->attributes=$_POST['UnsurPendidikan'];
			if($model->save())
                            if(Yii::app()->user->LEVEL == '1')
				$this->redirect(array('tblDosen/viewdosen','id'=>$model->ID_DOSEN));
                                else{
                                    $this->redirect(array('bdosen','id'=>$model->PENGAJUAN_KE,'id_dosen'=>$model->ID_DOSEN));
                                }
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

		if(isset($_POST['UnsurPendidikan']))
		{
			$model->attributes=$_POST['UnsurPendidikan'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->ID_UNSUR_PEND));
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
		$dataProvider=new CActiveDataProvider('UnsurPendidikan');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new UnsurPendidikan('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['UnsurPendidikan']))
			$model->attributes=$_GET['UnsurPendidikan'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}
        
        public function actionBdosen($id_dosen,$id)
	{
                $model=new UnsurPendidikan('search');
		$model->unsetAttributes();  // clear any default values
                
                $model->dbCriteria->condition='ID_DOSEN=:ID_DOSEN and PENGAJUAN_KE=:PENGAJUAN_KE';
                $model->dbCriteria->params=array(':ID_DOSEN'=>$id_dosen,':PENGAJUAN_KE'=>$id );
		if(isset($_GET['UnsurPendidikan']))
			$model->attributes=$_GET['UnsurPendidikan'];

		$this->render('bdosen',array(
			'model'=>$model,
		));
	}
        
        public function actionCetak()
        {
            $dosen=Yii::app()->request->getParam('id_dosen',0);
            $pj=Yii::app()->request->getParam('pengajuan',0);
            
             $sql="select unsur_pendidikan.ID_UNSUR_PEND,subun_pend.SUBUNPEND,tbl_dosen.NAMA_DOSEN, tbl_dosen.NIP_DOSEN, tbl_jabatan.NAMA_JABATAN, tbl_golongan.GOLONGAN, tbl_golongan.PANGKAT, tbl_jurusan.NAMA_JURUSAN, tbl_jurusan.NAMA_PIMPINAN, tbl_jurusan.NIP_PIMPINAN, tbl_fakultas.NAMA_FAKULTAS, unsur_pendidikan.KEGIATAN_PENDIDIKAN, unsur_pendidikan.TEMPAT_PENDIDIKAN, unsur_pendidikan.TGL_KEGIATAN_PEND, unsur_pendidikan.NILAI_PENDIDIKAN, unsur_pendidikan.BUKTI_PENDIDIKAN, unsur_pendidikan.PENGAJUAN_KE from unsur_pendidikan inner join subun_pend on unsur_pendidikan.ID_SUBUNPEND=subun_pend.ID_SUBUNPEND join tbl_dosen on unsur_pendidikan.ID_DOSEN=tbl_dosen.ID_DOSEN join tbl_jabatan on tbl_dosen.ID_JABATAN=tbl_jabatan.ID_JABATAN join tbl_golongan on tbl_dosen.ID_GOLONGAN=tbl_golongan.ID_GOLONGAN join tbl_jurusan on tbl_dosen.ID_JURUSAN=tbl_jurusan.ID_JURUSAN join tbl_fakultas on tbl_jurusan.ID_FAKULTAS=tbl_fakultas.ID_FAKULTAS where unsur_pendidikan.ID_DOSEN='$dosen' and unsur_pendidikan.PENGAJUAN_KE='$pj' ";
            
            $data = Yii::app()->db->createCommand($sql)->queryAll();
            
            $this->render('cetak', array(
                'data' => $data,
                ));
        }
	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return UnsurPendidikan the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=UnsurPendidikan::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param UnsurPendidikan $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='unsur-pendidikan-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
