<?php

/**
 * This is the model class for table "tbl_keluarga".
 *
 * The followings are the available columns in table 'tbl_keluarga':
 * @property integer $ID_KELUARGA
 * @property integer $ID_STATUS
 * @property integer $ID_DOSEN
 * @property string $NAMA_KELUARGA
 * @property string $TGL_LAHIR
 * @property string $TMP_LAHIR
 * @property string $TGL_NIKAH
 * @property string $TGL_CERAI_MENINGGAL
 * @property string $PEKERJAAN
 * @property string $ALAMAT_KELUARGA
 *
 * The followings are the available model relations:
 * @property TblStatusPernikahan $iDSTATUS
 * @property TblDosen $iDDOSEN
 */
class TblKeluarga extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_keluarga';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('ID_KELUARGA', 'required'),
			array('ID_KELUARGA, ID_STATUS, ID_DOSEN', 'numerical', 'integerOnly'=>true),
			array('NAMA_KELUARGA', 'length', 'max'=>80),
			array('TMP_LAHIR, PEKERJAAN', 'length', 'max'=>50),
			array('TGL_LAHIR, TGL_NIKAH, TGL_CERAI_MENINGGAL, ALAMAT_KELUARGA', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ID_KELUARGA, ID_STATUS, ID_DOSEN, NAMA_KELUARGA, TGL_LAHIR, TMP_LAHIR, TGL_NIKAH, TGL_CERAI_MENINGGAL, PEKERJAAN, ALAMAT_KELUARGA', 'safe', 'on'=>'search'),
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
			'iDSTATUS' => array(self::BELONGS_TO, 'TblStatusPernikahan', 'ID_STATUS'),
			'iDDOSEN' => array(self::BELONGS_TO, 'TblDosen', 'ID_DOSEN'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'ID_KELUARGA' => 'Id Keluarga',
			'ID_STATUS' => 'Id Status',
			'ID_DOSEN' => 'Id Dosen',
			'NAMA_KELUARGA' => 'Nama Keluarga',
			'TGL_LAHIR' => 'Tgl Lahir',
			'TMP_LAHIR' => 'Tmp Lahir',
			'TGL_NIKAH' => 'Tgl Nikah',
			'TGL_CERAI_MENINGGAL' => 'Tgl Cerai Meninggal',
			'PEKERJAAN' => 'Pekerjaan',
			'ALAMAT_KELUARGA' => 'Alamat Keluarga',
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

		$criteria->compare('ID_KELUARGA',$this->ID_KELUARGA);
		$criteria->compare('ID_STATUS',$this->ID_STATUS);
		$criteria->compare('ID_DOSEN',$this->ID_DOSEN);
		$criteria->compare('NAMA_KELUARGA',$this->NAMA_KELUARGA,true);
		$criteria->compare('TGL_LAHIR',$this->TGL_LAHIR,true);
		$criteria->compare('TMP_LAHIR',$this->TMP_LAHIR,true);
		$criteria->compare('TGL_NIKAH',$this->TGL_NIKAH,true);
		$criteria->compare('TGL_CERAI_MENINGGAL',$this->TGL_CERAI_MENINGGAL,true);
		$criteria->compare('PEKERJAAN',$this->PEKERJAAN,true);
		$criteria->compare('ALAMAT_KELUARGA',$this->ALAMAT_KELUARGA,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return TblKeluarga the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
