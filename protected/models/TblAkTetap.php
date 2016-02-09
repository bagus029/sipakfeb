<?php

/**
 * This is the model class for table "tbl_ak_tetap".
 *
 * The followings are the available columns in table 'tbl_ak_tetap':
 * @property integer $ID_AK_TETAP
 * @property integer $ID_AK_UNSUR
 * @property integer $ID_DOSEN
 * @property string $ANGKA_LAMA
 * @property string $ANGKA_BARU
 * @property string $ANGKA_DIGUNAKAN
 * @property string $ANGKA_LEBIHAN
 * @property string $NO_SK
 * @property string $TGL_SUBMIT
 * @property string $JENJANG_JABATAN
 */
class TblAkTetap extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_ak_tetap';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('ID_AK_UNSUR, ID_DOSEN', 'numerical', 'integerOnly'=>true),
			array('ANGKA_LAMA', 'length', 'max'=>50),
			array('ANGKA_BARU, ANGKA_DIGUNAKAN, ANGKA_LEBIHAN', 'length', 'max'=>10),
			array('NO_SK', 'length', 'max'=>25),
			array('TGL_SUBMIT', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ID_AK_TETAP, JENJANG_JABATAN, ID_AK_UNSUR, ID_DOSEN, ANGKA_LAMA, ANGKA_BARU, ANGKA_DIGUNAKAN, ANGKA_LEBIHAN, NO_SK, TGL_SUBMIT', 'safe', 'on'=>'search'),
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
                    'iDAKUNSUR' => array(self::BELONGS_TO, 'AkUnsur', 'ID_AK_UNSUR'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'ID_AK_TETAP' => 'Id Ak Tetap',
			'ID_AK_UNSUR' => 'Id Ak Unsur',
			'ID_DOSEN' => 'Id Dosen',
			'ANGKA_LAMA' => 'Angka Lama',
			'ANGKA_BARU' => 'Angka Baru',
			'ANGKA_DIGUNAKAN' => 'Angka Digunakan',
			'ANGKA_LEBIHAN' => 'Angka Lebihan',
			'NO_SK' => 'No Sk',
                        'JENJANG_JABATAN'=>'Jenjang Jabatan',
			'TGL_SUBMIT' => 'Tgl Submit',
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

		$criteria->compare('ID_AK_TETAP',$this->ID_AK_TETAP);
		$criteria->compare('ID_AK_UNSUR',$this->ID_AK_UNSUR);
		$criteria->compare('ID_DOSEN',$this->ID_DOSEN);
		$criteria->compare('ANGKA_LAMA',$this->ANGKA_LAMA,true);
		$criteria->compare('ANGKA_BARU',$this->ANGKA_BARU,true);
		$criteria->compare('ANGKA_DIGUNAKAN',$this->ANGKA_DIGUNAKAN,true);
		$criteria->compare('ANGKA_LEBIHAN',$this->ANGKA_LEBIHAN,true);
		$criteria->compare('NO_SK',$this->NO_SK,true);
                $criteria->compare('JENJANG_JABATAN', $this->JENJANG_JABATAN,true);
		$criteria->compare('TGL_SUBMIT',$this->TGL_SUBMIT,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return TblAkTetap the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
