<?php

/**
 * This is the model class for table "subun_pelpend".
 *
 * The followings are the available columns in table 'subun_pelpend':
 * @property integer $ID_SUBPELPEND
 * @property string $SUBPELPEND
 *
 * The followings are the available model relations:
 * @property UnsurPelPendidikan[] $unsurPelPendidikans
 */
class SubunPelpend extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'subun_pelpend';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('ID_SUBPELPEND', 'required'),
			array('ID_SUBPELPEND', 'numerical', 'integerOnly'=>true),
			array('SUBPELPEND', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ID_SUBPELPEND, SUBPELPEND', 'safe', 'on'=>'search'),
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
			'unsurPelPendidikans' => array(self::HAS_MANY, 'UnsurPelPendidikan', 'ID_SUBPELPEND'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'ID_SUBPELPEND' => 'Id Subpelpend',
			'SUBPELPEND' => 'Subpelpend',
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

		$criteria->compare('ID_SUBPELPEND',$this->ID_SUBPELPEND);
		$criteria->compare('SUBPELPEND',$this->SUBPELPEND,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return SubunPelpend the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
