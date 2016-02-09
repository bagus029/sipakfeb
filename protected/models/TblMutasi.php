<?php

/**
 * This is the model class for table "tbl_mutasi".
 *
 * The followings are the available columns in table 'tbl_mutasi':
 * @property integer $ID_MUTASI
 * @property integer $ID_DOSEN
 * @property string $JABTAN_LAMA
 * @property string $UNIT_KERJA_LAMA
 * @property string $TMT_LAMA
 * @property string $JABATAN_BARU
 * @property string $UNIT_KERJA_BARU
 * @property string $TMT_BARU
 *
 * The followings are the available model relations:
 * @property TblDosen $iDDOSEN
 */
class TblMutasi extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_mutasi';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('ID_MUTASI', 'required'),
			array('ID_MUTASI, ID_DOSEN', 'numerical', 'integerOnly'=>true),
			array('JABTAN_LAMA, JABATAN_BARU', 'length', 'max'=>35),
			array('UNIT_KERJA_LAMA, UNIT_KERJA_BARU', 'length', 'max'=>75),
			array('TMT_LAMA, TMT_BARU', 'length', 'max'=>50),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ID_MUTASI, ID_DOSEN, JABTAN_LAMA, UNIT_KERJA_LAMA, TMT_LAMA, JABATAN_BARU, UNIT_KERJA_BARU, TMT_BARU', 'safe', 'on'=>'search'),
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
			'iDDOSEN' => array(self::BELONGS_TO, 'TblDosen', 'ID_DOSEN'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'ID_MUTASI' => 'Id Mutasi',
			'ID_DOSEN' => 'Id Dosen',
			'JABTAN_LAMA' => 'Jabtan Lama',
			'UNIT_KERJA_LAMA' => 'Unit Kerja Lama',
			'TMT_LAMA' => 'Tmt Lama',
			'JABATAN_BARU' => 'Jabatan Baru',
			'UNIT_KERJA_BARU' => 'Unit Kerja Baru',
			'TMT_BARU' => 'Tmt Baru',
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

		$criteria->compare('ID_MUTASI',$this->ID_MUTASI);
		$criteria->compare('ID_DOSEN',$this->ID_DOSEN);
		$criteria->compare('JABTAN_LAMA',$this->JABTAN_LAMA,true);
		$criteria->compare('UNIT_KERJA_LAMA',$this->UNIT_KERJA_LAMA,true);
		$criteria->compare('TMT_LAMA',$this->TMT_LAMA,true);
		$criteria->compare('JABATAN_BARU',$this->JABATAN_BARU,true);
		$criteria->compare('UNIT_KERJA_BARU',$this->UNIT_KERJA_BARU,true);
		$criteria->compare('TMT_BARU',$this->TMT_BARU,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return TblMutasi the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
