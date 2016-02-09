<?php

/**
 * This is the model class for table "tbl_gaji".
 *
 * The followings are the available columns in table 'tbl_gaji':
 * @property integer $ID_GAJI
 * @property integer $ID_DOSEN
 * @property string $TGL_GAJIAN
 * @property string $GAJI_POKOK
 *
 * The followings are the available model relations:
 * @property TblDosen $iDDOSEN
 */
class TblGaji extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_gaji';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('ID_GAJI', 'required'),
			array('ID_GAJI, ID_DOSEN', 'numerical', 'integerOnly'=>true),
			array('TGL_GAJIAN, GAJI_POKOK', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ID_GAJI, ID_DOSEN, TGL_GAJIAN, GAJI_POKOK', 'safe', 'on'=>'search'),
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
			'ID_GAJI' => 'Id Gaji',
			'ID_DOSEN' => 'Id Dosen',
			'TGL_GAJIAN' => 'Tgl Gajian',
			'GAJI_POKOK' => 'Gaji Pokok',
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

		$criteria->compare('ID_GAJI',$this->ID_GAJI);
		$criteria->compare('ID_DOSEN',$this->ID_DOSEN);
		$criteria->compare('TGL_GAJIAN',$this->TGL_GAJIAN,true);
		$criteria->compare('GAJI_POKOK',$this->GAJI_POKOK,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return TblGaji the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
