<?php

/**
 * This is the model class for table "unsur_pengabdian".
 *
 * The followings are the available columns in table 'unsur_pengabdian':
 * @property integer $ID_SUBUNPENGAB
 * @property integer $ID_DOSEN
 * @property integer $ID_UNSUR_PENGABDIAN
 * @property string $BENTUK_PENGABDIAN
 * @property string $KEGIATAN_PENGABDIAN
 * @property string $TEMPAT_PENGABDIAN
 * @property string $TGL_PENGABDIAN
 * @property string $BUKTI_PENGABDIAN
 * @property string $NILAI_PENGABDIAN
 * @property string $TGL_SUBMIT
 * @property  string $PENGAJUAN_KE
 *
 * The followings are the available model relations:
 * @property SubunPengabdian $iDSUBUNPENGAB
 * @property TblDosen $iDDOSEN
 */
class UnsurPengabdian extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'unsur_pengabdian';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('PENGAJUAN_KE, BUKTI_PENGABDIAN,ID_SUBUNPENGAB', 'required'),
			array('ID_SUBUNPENGAB, ID_DOSEN, ID_UNSUR_PENGABDIAN', 'numerical', 'integerOnly'=>true),
			array('TEMPAT_PENGABDIAN, BUKTI_PENGABDIAN', 'length', 'max'=>50),
			array('NILAI_PENGABDIAN', 'length', 'max'=>10),
                        array('PENGAJUAN_KE','length','max'=>15),
                        array('BENTUK_PENGABDIAN','length','max'=>35),
			array('KEGIATAN_PENGABDIAN, TGL_PENGABDIAN', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ID_SUBUNPENGAB, BENTUK_PENGABDIAN, PENGAJUAN_KE, ID_DOSEN, ID_UNSUR_PENGABDIAN, KEGIATAN_PENGABDIAN, TEMPAT_PENGABDIAN, TGL_PENGABDIAN, BUKTI_PENGABDIAN, NILAI_PENGABDIAN, TGL_SUBMIT', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'iDSUBUNPENGAB' => array(self::BELONGS_TO, 'SubunPengabdian', 'ID_SUBUNPENGAB'),
			'iDDOSEN' => array(self::BELONGS_TO, 'TblDosen', 'ID_DOSEN'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'ID_SUBUNPENGAB' => 'Sub Unsur Pengabdian',
			'ID_DOSEN' => 'Nama Dosen',
			'ID_UNSUR_PENGABDIAN' => 'Id Unsur Pengabdian',
			'KEGIATAN_PENGABDIAN' => 'Kegiatan Pengabdian',
			'TEMPAT_PENGABDIAN' => 'Tempat Pengabdian',
			'TGL_PENGABDIAN' => 'Tgl Pengabdian',
			'BUKTI_PENGABDIAN' => 'Bukti Pengabdian',
			'NILAI_PENGABDIAN' => 'Nilai Pengabdian',
			'TGL_SUBMIT' => 'Tgl Submit',
                        'PENGAJUAN_KE'=> 'Pengajuan Kenaikan Ke',
                        'BENTUK_PENGABIDAN' =>'Bentuk',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('ID_SUBUNPENGAB',$this->ID_SUBUNPENGAB);
		$criteria->compare('ID_DOSEN',$this->ID_DOSEN);
		$criteria->compare('ID_UNSUR_PENGABDIAN',$this->ID_UNSUR_PENGABDIAN);
		$criteria->compare('KEGIATAN_PENGABDIAN',$this->KEGIATAN_PENGABDIAN,true);
		$criteria->compare('TEMPAT_PENGABDIAN',$this->TEMPAT_PENGABDIAN,true);
		$criteria->compare('TGL_PENGABDIAN',$this->TGL_PENGABDIAN,true);
		$criteria->compare('BUKTI_PENGABDIAN',$this->BUKTI_PENGABDIAN,true);
		$criteria->compare('NILAI_PENGABDIAN',$this->NILAI_PENGABDIAN,true);
		$criteria->compare('TGL_SUBMIT',$this->TGL_SUBMIT,true);
                $criteria->compare('PENGAJUAN_KE', $this->PENGAJUAN_KE,true);
                $criteria->compare('BENTUK_PENGABDIAN',  $this->BENTUK_PENGABDIAN,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'sort' => array(
                'defaultOrder' => 'ID_UNSUR_PENGABDIAN DESC',
            )
		));
	}
        
        public function getPengajuan()
        {
            return array(
                'III B'=>'III B',
                'III C'=>'III C',
                'III D'=>'III D',
                'IV A'=>'IV A',
                'IV B'=>'IV B',
                'IV C'=>'IV C',
                'IV D'=>'IV D',
                'IV E'=>'IV E',
                'ASISTEN AHLI'=>'ASISTEN AHLI',
                'LEKTOR'=>'LEKTOR',
                'LEKTOR KEPALA'=>'LEKTOR KEPALA',
                'PROFESOR'=>'PROFESOR',
            );
        }
	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return UnsurPengabdian the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
