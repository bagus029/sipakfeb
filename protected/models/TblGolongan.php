<?php

/**
 * This is the model class for table "tbl_golongan".
 *
 * The followings are the available columns in table 'tbl_golongan':
 * @property integer $ID_GOLONGAN
 * @property string $GOLONGAN
 * @property string $PANGKAT
 *
 * The followings are the available model relations:
 * @property TblDosen[] $tblDosens
 */
class TblGolongan extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_golongan';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('ID_GOLONGAN', 'required'),
			array('ID_GOLONGAN', 'numerical', 'integerOnly'=>true),
			array('GOLONGAN', 'length', 'max'=>25),
			array('PANGKAT', 'length', 'max'=>6),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ID_GOLONGAN, GOLONGAN, PANGKAT', 'safe', 'on'=>'search'),
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
			'tblDosens' => array(self::HAS_MANY, 'TblDosen', 'ID_GOLONGAN'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'ID_GOLONGAN' => 'Id Golongan',
			'GOLONGAN' => 'Golongan',
			'PANGKAT' => 'Pangkat',
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

		$criteria->compare('ID_GOLONGAN',$this->ID_GOLONGAN);
		$criteria->compare('GOLONGAN',$this->GOLONGAN,true);
		$criteria->compare('PANGKAT',$this->PANGKAT,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return TblGolongan the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
