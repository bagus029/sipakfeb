<?php

/**
 * This is the model class for table "unsur_penunjang".
 *
 * The followings are the available columns in table 'unsur_penunjang':
 * @property integer $ID_UNSUR_PENUNJANG
 * @property integer $ID_SUBUNPENUNJANG
 * @property integer $ID_DOSEN
 * @property string $KEGIATAN_PENUNJANG
 * @property string $TEMPAT_PENUNJANG
 * @property string $TGL_KEG_PENUNJANG
 * @property string $BUKTI_PENUNJANG
 * @property string $NILAI_PENUNJANG
 * @property string $TGL_SUBMIT
 * @property  string $PENGAJUAN_KE
 * @property string $KEDUDUKAN_SEBAGAI
 *
 * The followings are the available model relations:
 * @property SubunPenunjang $iDSUBUNPENUNJANG
 * @property TblDosen $iDDOSEN
 */
class UnsurPenunjang extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'unsur_penunjang';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('PENGAJUAN_KE,  BUKTI_PENUNJANG, ID_SUBUNPENUNJANG', 'required'),
			array('ID_UNSUR_PENUNJANG, ID_SUBUNPENUNJANG, ID_DOSEN', 'numerical', 'integerOnly'=>true),
			array('TEMPAT_PENUNJANG, BUKTI_PENUNJANG', 'length', 'max'=>50),
			array('NILAI_PENUNJANG', 'length', 'max'=>10),
                        array('PENGAJUAN_KE','length','max'=>15),
                        array('KEDUDUKAN_SEBAGAI','length','max'=>30),
			array('KEGIATAN_PENUNJANG, TGL_KEG_PENUNJANG', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ID_UNSUR_PENUNJANG, KEDUDUKAN_SEBAGAI, PENGAJUAN_KE, ID_SUBUNPENUNJANG, ID_DOSEN, KEGIATAN_PENUNJANG, TEMPAT_PENUNJANG, TGL_KEG_PENUNJANG, BUKTI_PENUNJANG, NILAI_PENUNJANG, TGL_SUBMIT', 'safe', 'on'=>'search'),
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
			'iDSUBUNPENUNJANG' => array(self::BELONGS_TO, 'SubunPenunjang', 'ID_SUBUNPENUNJANG'),
			'iDDOSEN' => array(self::BELONGS_TO, 'TblDosen', 'ID_DOSEN'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'ID_UNSUR_PENUNJANG' => 'Id Unsur Penunjang',
			'ID_SUBUNPENUNJANG' => 'Sub Unsur Penunjang',
			'ID_DOSEN' => 'Nama Dosen',
			'KEGIATAN_PENUNJANG' => 'Kegiatan Penunjang',
			'TEMPAT_PENUNJANG' => 'Tempat Penunjang',
			'TGL_KEG_PENUNJANG' => 'Tgl Keg Penunjang',
                        'KEDUDUKAN_SEBAGAI' => 'Kedudukan',
			'BUKTI_PENUNJANG' => 'Bukti Penunjang',
			'NILAI_PENUNJANG' => 'Nilai Penunjang',
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

		$criteria->compare('ID_UNSUR_PENUNJANG',$this->ID_UNSUR_PENUNJANG);
		$criteria->compare('ID_SUBUNPENUNJANG',$this->ID_SUBUNPENUNJANG);
		$criteria->compare('ID_DOSEN',$this->ID_DOSEN);
		$criteria->compare('KEGIATAN_PENUNJANG',$this->KEGIATAN_PENUNJANG,true);
		$criteria->compare('TEMPAT_PENUNJANG',$this->TEMPAT_PENUNJANG,true);
		$criteria->compare('TGL_KEG_PENUNJANG',$this->TGL_KEG_PENUNJANG,true);
                $criteria->compare('KEDUDUKAN_SEBAGAI',  $this->KEDUDUKAN_SEBAGAI, true);
		$criteria->compare('BUKTI_PENUNJANG',$this->BUKTI_PENUNJANG,true);
		$criteria->compare('NILAI_PENUNJANG',$this->NILAI_PENUNJANG,true);
		$criteria->compare('TGL_SUBMIT',$this->TGL_SUBMIT,true);
                $criteria->compare('PENGAJUAN_KE', $this->PENGAJUAN_KE,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'sort' => array(
                'defaultOrder' => 'ID_UNSUR_PENUNJANG DESC',
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
	 * @return UnsurPenunjang the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
