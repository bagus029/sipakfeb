    
<?php class TblPersen extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_persen';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('jabatan, kualifikasi_akad, pel_pend, pel_pen, pel_peng, unsur_penunjang', 'required'),
			array('pel_pend, pel_pen, pel_peng, unsur_penunjang', 'numerical', 'integerOnly'=>true),
			array('jabatan', 'length', 'max'=>30),
			array('kualifikasi_akad', 'length', 'max'=>25),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id_persen, jabatan, kualifikasi_akad, pel_pend, pel_pen, pel_peng, unsur_penunjang', 'safe', 'on'=>'search'),
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
			'id_persen' => 'Id Persen',
			'jabatan' => 'Jabatan',
			'kualifikasi_akad' => 'Kualifikasi Akademik',
			'pel_pend' => 'Pelaksanaan Pendidikan',
			'pel_pen' => 'Pelaksaan Penelitian',
			'pel_peng' => 'Pelaksanaan Pengabdian',
			'unsur_penunjang' => 'Unsur Penunjang',
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

		$criteria->compare('id_persen',$this->id_persen);
		$criteria->compare('jabatan',$this->jabatan,true);
		$criteria->compare('kualifikasi_akad',$this->kualifikasi_akad,true);
		$criteria->compare('pel_pend',$this->pel_pend);
		$criteria->compare('pel_pen',$this->pel_pen);
		$criteria->compare('pel_peng',$this->pel_peng);
		$criteria->compare('unsur_penunjang',$this->unsur_penunjang);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return TblPersen the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
