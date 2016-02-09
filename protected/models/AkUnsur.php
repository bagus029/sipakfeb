<?php

/**
 * This is the model class for table "ak_unsur".
 *
 * The followings are the available columns in table 'ak_unsur':
 * @property string $AK_UNSUR
 * @property integer $ID_AK_UNSUR
 */
class AkUnsur extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'ak_unsur';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('AK_UNSUR', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('AK_UNSUR, ID_AK_UNSUR', 'safe', 'on'=>'search'),
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
                    'tblAktetaps'=>array(self::HAS_MANY,'TblAkTetap','ID_AK_TETAP'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'AK_UNSUR' => 'Ak Unsur',
			'ID_AK_UNSUR' => 'Id Ak Unsur',
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

		$criteria->compare('AK_UNSUR',$this->AK_UNSUR,true);
		$criteria->compare('ID_AK_UNSUR',$this->ID_AK_UNSUR);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return AkUnsur the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
