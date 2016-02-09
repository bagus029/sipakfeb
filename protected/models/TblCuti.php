<?php

/**
 * This is the model class for table "tbl_cuti".
 *
 * The followings are the available columns in table 'tbl_cuti':
 * @property integer $ID_CUTI
 * @property integer $ID_DOSEN
 * @property string $JENIS_CUTI
 * @property string $MULAI_CUTI
 * @property string $AKHIR_CUTI
 * @property string $KET_CUTI
 *
 * The followings are the available model relations:
 * @property TblDosen $iDDOSEN
 */
class TblCuti extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_cuti';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('ID_CUTI', 'required'),
			array('ID_CUTI, ID_DOSEN', 'numerical', 'integerOnly'=>true),
			array('JENIS_CUTI', 'length', 'max'=>50),
			array('MULAI_CUTI, AKHIR_CUTI, KET_CUTI', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ID_CUTI, ID_DOSEN, JENIS_CUTI, MULAI_CUTI, AKHIR_CUTI, KET_CUTI', 'safe', 'on'=>'search'),
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
			'ID_CUTI' => 'Id Cuti',
			'ID_DOSEN' => 'Id Dosen',
			'JENIS_CUTI' => 'Jenis Cuti',
			'MULAI_CUTI' => 'Mulai Cuti',
			'AKHIR_CUTI' => 'Akhir Cuti',
			'KET_CUTI' => 'Ket Cuti',
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

		$criteria->compare('ID_CUTI',$this->ID_CUTI);
		$criteria->compare('ID_DOSEN',$this->ID_DOSEN);
		$criteria->compare('JENIS_CUTI',$this->JENIS_CUTI,true);
		$criteria->compare('MULAI_CUTI',$this->MULAI_CUTI,true);
		$criteria->compare('AKHIR_CUTI',$this->AKHIR_CUTI,true);
		$criteria->compare('KET_CUTI',$this->KET_CUTI,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return TblCuti the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
