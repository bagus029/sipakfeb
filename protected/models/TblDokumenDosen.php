<?php

/**
 * This is the model class for table "tbl_dokumen_dosen".
 *
 * The followings are the available columns in table 'tbl_dokumen_dosen':
 * @property integer $ID_DOKUMEN
 * @property integer $NIP_DOSEN
 * @property string $DOKUMEN
 * @property string $NAMA_DOKUMEN
 * @property string $KETERANGAN
 * @property string $TGL_SUBMIT
 */
class TblDokumenDosen extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_dokumen_dosen';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('NAMA_DOKUMEN, DOKUMEN', 'length', 'max'=>75),
			array('NIP_DOSEN','length','max'=>35),
                        array('KETERANGAN', 'safe'),
                        array('DOKUMEN','file','types'=>'pdf,doc,docx', 'allowEmpty'=>false, 'on'=>'create'),
                        array('DOKUMEN','file','types'=>'pdf,doc,docx', 'allowEmpty'=>true, 'on'=>'update'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ID_DOKUMEN, NIP_DOSEN, DOKUMEN, NAMA_DOKUMEN, KETERANGAN, TGL_SUBMIT', 'safe', 'on'=>'search'),
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
			'ID_DOKUMEN' => 'Id',
			'NIP_DOSEN' => 'Nama Dosen',
                        'DOKUMEN' =>'Dokumen',
			'NAMA_DOKUMEN' => 'Nama Dokumen',
			'KETERANGAN' => 'Keterangan',
                        'TGL_SUBMIT' => 'Tanggal Submit',
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

		$criteria->compare('ID_DOKUMEN',$this->ID_DOKUMEN);
		$criteria->compare('NIP_DOSEN',$this->NIP_DOSEN, true);
                $criteria->compare('DOKUMEN', $this->DOKUMEN, true);
		$criteria->compare('NAMA_DOKUMEN',$this->NAMA_DOKUMEN,true);
		$criteria->compare('KETERANGAN',$this->KETERANGAN,true);
                $criteria->compare('TGL_SUBMIT', $this->TGL_SUBMIT, true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return TblDokumenDosen the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
