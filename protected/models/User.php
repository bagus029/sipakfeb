<?php

/**
 * This is the model class for table "user".
 *
 * The followings are the available columns in table 'user':
 * @property string $ID_USER
 * @property string $NIP_USER
 * @property string $NAMA_USER
 * @property string $USERNAME
 * @property string $PASSWORD
 */
class User extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'user';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			//array('ID_USER', 'required'),
			array('ID_USER, NIP_USER', 'length', 'max'=>30),
			array('NAMA_USER', 'length', 'max'=>80),
			array('USERNAME', 'length', 'max'=>25),
			array('PASSWORD', 'length', 'max'=>100),
                        array('LEVEL','length','max'=>10),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ID_USER, NIP_USER, NAMA_USER, USERNAME, PASSWORD, LEVEL', 'safe', 'on'=>'search'),
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
			'ID_USER' => 'Id User',
			'NIP_USER' => 'Nip User',
			'NAMA_USER' => 'Nama User',
			'USERNAME' => 'Username',
			'PASSWORD' => 'Password',
                        'LEVEL' => 'Level',
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

		$criteria->compare('ID_USER',$this->ID_USER,true);
		$criteria->compare('NIP_USER',$this->NIP_USER,true);
		$criteria->compare('NAMA_USER',$this->NAMA_USER,true);
		$criteria->compare('USERNAME',$this->USERNAME,true);
		$criteria->compare('PASSWORD',$this->PASSWORD,true);
                $criteria->compare('LEVEL', $this->LEVEL, true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
        
        public function getLevel()
        {
            return array(
                '1'=>'Admin',
                '2'=>'Dosen',
                );
        }
        
        public function ubahLevel()
        {
            if($this->LEVEL=='1')
                return "Admin";
            else return "Dosen";
        }
	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return User the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
