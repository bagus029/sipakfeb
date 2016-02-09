<?php

/**
 * This is the model class for table "subun_penelitian".
 *
 * The followings are the available columns in table 'subun_penelitian':
 * @property integer $ID_SUBUNPENELITIAN
 * @property string $SUBUNPENELITIAN
 *
 * The followings are the available model relations:
 * @property UnsurPenelitian[] $unsurPenelitians
 */
class SubunPenelitian extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'subun_penelitian';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('ID_SUBUNPENELITIAN', 'required'),
			array('ID_SUBUNPENELITIAN', 'numerical', 'integerOnly'=>true),
			array('SUBUNPENELITIAN', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ID_SUBUNPENELITIAN, SUBUNPENELITIAN', 'safe', 'on'=>'search'),
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
			'unsurPenelitians' => array(self::HAS_MANY, 'UnsurPenelitian', 'ID_SUBUNPENELITIAN'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'ID_SUBUNPENELITIAN' => 'Id Subunpenelitian',
			'SUBUNPENELITIAN' => 'Subunpenelitian',
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

		$criteria->compare('ID_SUBUNPENELITIAN',$this->ID_SUBUNPENELITIAN);
		$criteria->compare('SUBUNPENELITIAN',$this->SUBUNPENELITIAN,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return SubunPenelitian the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
