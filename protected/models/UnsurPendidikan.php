<?php

/**
 * This is the model class for table "unsur_pendidikan".
 *
 * The followings are the available columns in table 'unsur_pendidikan':
 * @property integer $ID_UNSUR_PEND
 * @property integer $ID_SUBUNPEND
 * @property integer $ID_DOSEN
 * @property string $KEGIATAN_PENDIDIKAN
 * @property string $TEMPAT_PENDIDIKAN
 * @property string $TGL_KEGIATAN_PEND
 * @property string $BUKTI_PENDIDIKAN
 * @property string $NILAI_PENDIDIKAN
 * @property string $TGL_SUBMIT
 * @property string $PENGAJUAN_KE
 *
 * The followings are the available model relations:
 * @property SubunPend $iDSUBUNPEND
 * @property TblDosen $iDDOSEN
 */
class UnsurPendidikan extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'unsur_pendidikan';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('PENGAJUAN_KE, BUKTI_PENDIDIKAN, ID_SUBUNPEND', 'required'),
			array('ID_SUBUNPEND, ID_DOSEN', 'numerical', 'integerOnly'=>true),
			array('TEMPAT_PENDIDIKAN, BUKTI_PENDIDIKAN', 'length', 'max'=>50),
			array('NILAI_PENDIDIKAN', 'length', 'max'=>10),
			array('PENGAJUAN_KE', 'length', 'max'=>15),
			array('KEGIATAN_PENDIDIKAN, TGL_KEGIATAN_PEND', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ID_UNSUR_PEND, ID_SUBUNPEND, ID_DOSEN, KEGIATAN_PENDIDIKAN, TEMPAT_PENDIDIKAN, TGL_KEGIATAN_PEND, BUKTI_PENDIDIKAN, NILAI_PENDIDIKAN, TGL_SUBMIT, PENGAJUAN_KE', 'safe', 'on'=>'search'),
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
			'iDSUBUNPEND' => array(self::BELONGS_TO, 'SubunPend', 'ID_SUBUNPEND'),
			'iDDOSEN' => array(self::BELONGS_TO, 'TblDosen', 'ID_DOSEN'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'ID_UNSUR_PEND' => 'Id Unsur Pendidikan',
			'ID_SUBUNPEND' => 'Sub Unsur Pendidikan',
			'ID_DOSEN' => 'Nama Dosen',
			'KEGIATAN_PENDIDIKAN' => 'Kegiatan Pendidikan',
			'TEMPAT_PENDIDIKAN' => 'Tempat Pendidikan',
			'TGL_KEGIATAN_PEND' => 'Tgl Kegiatan Pend',
			'BUKTI_PENDIDIKAN' => 'Bukti Pendidikan',
			'NILAI_PENDIDIKAN' => 'Nilai Pendidikan',
			'TGL_SUBMIT' => 'Tgl Submit',
			'PENGAJUAN_KE' => 'Pengajuan Ke',
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

		$criteria->compare('ID_UNSUR_PEND',$this->ID_UNSUR_PEND);
		$criteria->compare('ID_SUBUNPEND',$this->ID_SUBUNPEND);
		$criteria->compare('ID_DOSEN',$this->ID_DOSEN);
		$criteria->compare('KEGIATAN_PENDIDIKAN',$this->KEGIATAN_PENDIDIKAN,true);
		$criteria->compare('TEMPAT_PENDIDIKAN',$this->TEMPAT_PENDIDIKAN,true);
		$criteria->compare('TGL_KEGIATAN_PEND',$this->TGL_KEGIATAN_PEND,true);
		$criteria->compare('BUKTI_PENDIDIKAN',$this->BUKTI_PENDIDIKAN,true);
		$criteria->compare('NILAI_PENDIDIKAN',$this->NILAI_PENDIDIKAN,true);
		$criteria->compare('TGL_SUBMIT',$this->TGL_SUBMIT,true);
		$criteria->compare('PENGAJUAN_KE',$this->PENGAJUAN_KE,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'sort' => array(
                'defaultOrder' => 'ID_UNSUR_PEND DESC',
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
	 * @return UnsurPendidikan the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
