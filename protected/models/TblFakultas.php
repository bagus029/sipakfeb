<?php

/**
 * This is the model class for table "tbl_fakultas".
 *
 * The followings are the available columns in table 'tbl_fakultas':
 * @property integer $ID_FAKULTAS
 * @property string $NAMA_FAKULTAS
 * @property string $PIMPINAN_FAKULTAS
 * @property string $NIP_PIMPINAN
 */
class TblFakultas extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_fakultas';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('NAMA_FAKULTAS', 'length', 'max'=>50),
			array('PIMPINAN_FAKULTAS', 'length', 'max'=>80),
			array('NIP_PIMPINAN', 'length', 'max'=>35),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ID_FAKULTAS, NAMA_FAKULTAS, PIMPINAN_FAKULTAS, NIP_PIMPINAN', 'safe', 'on'=>'search'),
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
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'ID_FAKULTAS' => 'Id Fakultas',
			'NAMA_FAKULTAS' => 'Nama Fakultas',
			'PIMPINAN_FAKULTAS' => 'Pimpinan Fakultas',
			'NIP_PIMPINAN' => 'Nip Pimpinan',
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

		$criteria->compare('ID_FAKULTAS',$this->ID_FAKULTAS);
		$criteria->compare('NAMA_FAKULTAS',$this->NAMA_FAKULTAS,true);
		$criteria->compare('PIMPINAN_FAKULTAS',$this->PIMPINAN_FAKULTAS,true);
		$criteria->compare('NIP_PIMPINAN',$this->NIP_PIMPINAN,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return TblFakultas the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
