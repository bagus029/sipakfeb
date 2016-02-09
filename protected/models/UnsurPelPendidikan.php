<?php

/**
 * This is the model class for table "unsur_pel_pendidikan".
 *
 * The followings are the available columns in table 'unsur_pel_pendidikan':
 * @property integer $ID_UNSUR_PELPEND
 * @property integer $ID_SUBPELPEND
 * @property integer $ID_DOSEN
 * @property string $KEGIATAN_PELPEND
 * @property string $TEMPAT_PELPEND
 * @property string $SEMESTER
 * @property string $BUKTI_PELPEND
 * @property string $NILAI_PELPEND
 * @property string $TGL_SUBMIT
 * @property  string $PENGAJUAN_KE
 *
 * The followings are the available model relations:
 * @property SubunPelpend $iDSUBPELPEND
 * @property TblDosen $iDDOSEN
 */
class UnsurPelPendidikan extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'unsur_pel_pendidikan';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('PENGAJUAN_KE,BUKTI_PELPEND,ID_SUBPELPEND', 'required'),
			array('ID_UNSUR_PELPEND, ID_SUBPELPEND, ID_DOSEN', 'numerical', 'integerOnly'=>true),
			array('TEMPAT_PELPEND, BUKTI_PELPEND', 'length', 'max'=>50),
			array('SEMESTER', 'length', 'max'=>25),
			array('NILAI_PELPEND', 'length', 'max'=>10),
                        array('PENGAJUAN_KE','length','max'=>15),
			array('KEGIATAN_PELPEND', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ID_UNSUR_PELPEND, PENGAJUAN_KE, ID_SUBPELPEND, ID_DOSEN, KEGIATAN_PELPEND, TEMPAT_PELPEND, SEMESTER, BUKTI_PELPEND, NILAI_PELPEND, TGL_SUBMIT', 'safe', 'on'=>'search'),
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
			'iDSUBPELPEND' => array(self::BELONGS_TO, 'SubunPelpend', 'ID_SUBPELPEND'),
			'iDDOSEN' => array(self::BELONGS_TO, 'TblDosen', 'ID_DOSEN'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'ID_UNSUR_PELPEND' => 'Id Unsur Pelaksanaan Pendidikan',
			'ID_SUBPELPEND' => 'Sub Unsur Pelaksanaan Pendidikan',
			'ID_DOSEN' => 'Nama Dosen',
			'KEGIATAN_PELPEND' => 'Kegiatan Pelpend',
			'TEMPAT_PELPEND' => 'Tempat Pelpend',
			'SEMESTER' => 'Semester',
			'BUKTI_PELPEND' => 'Bukti Pelpend',
			'NILAI_PELPEND' => 'Nilai Pelpend',
			'TGL_SUBMIT' => 'Tgl Submit',
                        'PENGAJUAN_KE'=> 'Pengajuan Kenaikan Ke',
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

		$criteria->compare('ID_UNSUR_PELPEND',$this->ID_UNSUR_PELPEND);
		$criteria->compare('ID_SUBPELPEND',$this->ID_SUBPELPEND);
		$criteria->compare('ID_DOSEN',$this->ID_DOSEN);
		$criteria->compare('KEGIATAN_PELPEND',$this->KEGIATAN_PELPEND,true);
		$criteria->compare('TEMPAT_PELPEND',$this->TEMPAT_PELPEND,true);
		$criteria->compare('SEMESTER',$this->SEMESTER,true);
		$criteria->compare('BUKTI_PELPEND',$this->BUKTI_PELPEND,true);
		$criteria->compare('NILAI_PELPEND',$this->NILAI_PELPEND,true);
		$criteria->compare('TGL_SUBMIT',$this->TGL_SUBMIT,true);
                $criteria->compare('PENGAJUAN_KE', $this->PENGAJUAN_KE,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'sort' => array(
                'defaultOrder' => 'ID_UNSUR_PELPEND DESC',
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
	 * @return UnsurPelPendidikan the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
