<?php

/**
 * This is the model class for table "tbl_jurusan".
 *
 * The followings are the available columns in table 'tbl_jurusan':
 * @property integer $ID_JURUSAN
 * @property string $NAMA_JURUSAN
 * @property string $NAMA_PIMPINAN
 * @property string $NIP_PIMPINAN
 * @property integer $ID_FAKULTAS
 * @property string $PANGKAT
 * @property string $GOLONGAN
 */
class TblJurusan extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_jurusan';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('ID_FAKULTAS', 'numerical', 'integerOnly'=>true),
			array('NAMA_JURUSAN', 'length', 'max'=>35),
			array('NAMA_PIMPINAN', 'length', 'max'=>80),
			array('NIP_PIMPINAN', 'length', 'max'=>30),
                        array('PANGKAT','length','max'=>20),
                        array('GOLONGAN','length','max'=>10),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ID_JURUSAN, NAMA_JURUSAN, NAMA_PIMPINAN, NIP_PIMPINAN, ID_FAKULTAS, PANGKAT, GOLONGAN', 'safe', 'on'=>'search'),
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
                    'iDFAKULTAS' => array(self::BELONGS_TO, 'TblFakultas', 'ID_FAKULTAS'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'ID_JURUSAN' => 'Id Jurusan',
			'NAMA_JURUSAN' => 'Nama Jurusan',
			'NAMA_PIMPINAN' => 'Nama Pimpinan',
			'NIP_PIMPINAN' => 'Nip Pimpinan',
			'ID_FAKULTAS' => 'Fakultas',
                        'PANGKAT'=>'Pangkat',
                        'GOLONGAN'=>'Golongan',
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

		$criteria->compare('ID_JURUSAN',$this->ID_JURUSAN);
		$criteria->compare('NAMA_JURUSAN',$this->NAMA_JURUSAN,true);
		$criteria->compare('NAMA_PIMPINAN',$this->NAMA_PIMPINAN,true);
		$criteria->compare('NIP_PIMPINAN',$this->NIP_PIMPINAN,true);
                $criteria->compare('PANGKAT',  $this->PANGKAT,true);
                $criteria->compare('GOLONGAN',  $this->GOLONGAN,true);
		$criteria->compare('ID_FAKULTAS',$this->ID_FAKULTAS);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return TblJurusan the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
