<?php

/**
 * This is the model class for table "tbl_dosen".
 *
 * The followings are the available columns in table 'tbl_dosen':
 * @property integer $ID_DOSEN
 * @property integer $ID_GOLONGAN
 * @property integer $ID_JABATAN
 * @property integer $ID_STATUS_KEP
 * @property string $NIP_DOSEN
 * @property string $GELAR_AKHIR
 * @property string $GELAR_AWAL
 * @property string $NAMA_DOSEN
 * @property string $PENDIDIKAN_TERTINGGI
 * @property string $NIDN
 * @property string $TMP_LAHIR
 * @property string $TGL_LAHIR
 * @property integer $J_KEL
 * @property integer $AGAMA
 * @property string $ALAMAT
 * @property string $NO_KARPEG
 * @property string $TGL_MASUK
 * @property string $FOTO
 * @property string $PASSWORD
 *
 * The followings are the available model relations:
 * @property TblCuti[] $tblCutis
 * @property TblGolongan $iDGOLONGAN
 * @property TblJabatan $iDJABATAN
 * @property TblStatusKepegawaian $iDSTATUSKEP
 * @property TblGaji[] $tblGajis
 * @property TblKeluarga[] $tblKeluargas
 * @property TblMutasi[] $tblMutasis
 * @property UnsurPelPendidikan[] $unsurPelPendidikans
 * @property UnsurPendidikan[] $unsurPendidikans
 * @property UnsurPenelitian[] $unsurPenelitians
 * @property UnsurPengabdian[] $unsurPengabdians
 * @property UnsurPenunjang[] $unsurPenunjangs
 */
class TblDosen extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_dosen';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			//array('NIP_DOSEN,NAMA_DOSEN', 'required'),
                        array('ID_GOLONGAN, ID_JABATAN,ID_JURUSAN, ID_STATUS_KEP, NIP_DOSEN, NAMA_DOSEN,PENDIDIKAN_TERTINGGI, TMP_LAHIR, TGL_LAHIR, J_KEL, TGL_MASUK, PASSWORD', 'required'),
			array('ID_DOSEN, ID_GOLONGAN, ID_JABATAN, ID_JURUSAN, ID_STATUS_KEP, J_KEL, AGAMA', 'numerical', 'integerOnly'=>true),
			array('NIP_DOSEN', 'length', 'max'=>35),
			array('GELAR_AKHIR, GELAR_AWAL', 'length', 'max'=>10),
                        array('PENDIDIKAN_TERTINGGI','length','max'=>15),
			array('NAMA_DOSEN', 'length', 'max'=>75),
			array('NIDN, TMP_LAHIR, NO_KARPEG', 'length', 'max'=>50),
			array('FOTO', 'length', 'max'=>100),
			array('TGL_LAHIR, ALAMAT, TGL_MASUK, PASSWORD', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ID_DOSEN, ID_GOLONGAN, ID_JABATAN, ID_STATUS_KEP, NIP_DOSEN, GELAR_AKHIR, GELAR_AWAL, NAMA_DOSEN,PENDIDIKAN_TERTINGGI, NIDN, TMP_LAHIR, TGL_LAHIR, J_KEL, AGAMA, ALAMAT, NO_KARPEG, TGL_MASUK, FOTO, PASSWORD', 'safe', 'on'=>'search'),
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
			'tblCutis' => array(self::HAS_MANY, 'TblCuti', 'ID_DOSEN'),
			'iDGOLONGAN' => array(self::BELONGS_TO, 'TblGolongan', 'ID_GOLONGAN'),
			'iDJABATAN' => array(self::BELONGS_TO, 'TblJabatan', 'ID_JABATAN'),
			'iDSTATUSKEP' => array(self::BELONGS_TO, 'TblStatusKepegawaian', 'ID_STATUS_KEP'),
                        'iDJURUSAN'=>array(self::BELONGS_TO,'TblJurusan','ID_JURUSAN'),
			'tblGajis' => array(self::HAS_MANY, 'TblGaji', 'ID_DOSEN'),
			'tblKeluargas' => array(self::HAS_MANY, 'TblKeluarga', 'ID_DOSEN'),
			'tblMutasis' => array(self::HAS_MANY, 'TblMutasi', 'ID_DOSEN'),
                        'tblDokumenDosens'=>array(self::HAS_MANY, 'TblDokumenDosen','ID_DOSEN'),
			'unsurPelPendidikans' => array(self::HAS_MANY, 'UnsurPelPendidikan', 'ID_DOSEN'),
			'unsurPendidikans' => array(self::HAS_MANY, 'UnsurPendidikan', 'ID_DOSEN'),
			'unsurPenelitians' => array(self::HAS_MANY, 'UnsurPenelitian', 'ID_DOSEN'),
			'unsurPengabdians' => array(self::HAS_MANY, 'UnsurPengabdian', 'ID_DOSEN'),
			'unsurPenunjangs' => array(self::HAS_MANY, 'UnsurPenunjang', 'ID_DOSEN'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'ID_DOSEN' => 'Id Dosen',
			'ID_GOLONGAN' => 'Golongan',
			'ID_JABATAN' => 'Jabatan',
			'ID_STATUS_KEP' => 'Status Kepegawaian',
                        'ID_JURUSAN' => 'Jurusan',
			'NIP_DOSEN' => 'Nip Dosen',
			'GELAR_AKHIR' => 'Gelar Akhir',
			'GELAR_AWAL' => 'Gelar Awal',
			'NAMA_DOSEN' => 'Nama Dosen',
                        'PENDIDIKAN_TERTINGGI'=>'Pendidikan Tertinggi',
			'NIDN' => 'NIDN',
			'TMP_LAHIR' => 'Tempat Lahir',
			'TGL_LAHIR' => 'Tanggal Lahir',
			'J_KEL' => 'Jenis Kelamin',
			'AGAMA' => 'Agama',
			'ALAMAT' => 'Alamat',
			'NO_KARPEG' => 'Nomor Karpeg',
			'TGL_MASUK' => 'Tanggal TMT CPNS',
			'FOTO' => 'Foto',
                        'PASSWORD'=>'Password',
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

		$criteria->compare('ID_DOSEN',$this->ID_DOSEN);
		$criteria->compare('ID_GOLONGAN',$this->ID_GOLONGAN);
		$criteria->compare('ID_JABATAN',$this->ID_JABATAN);
		$criteria->compare('ID_STATUS_KEP',$this->ID_STATUS_KEP);
                $criteria->compare('ID_JURUSAN', $this->ID_JURUSAN);
		$criteria->compare('NIP_DOSEN',$this->NIP_DOSEN,true);
		$criteria->compare('GELAR_AKHIR',$this->GELAR_AKHIR,true);
		$criteria->compare('GELAR_AWAL',$this->GELAR_AWAL,true);
		$criteria->compare('NAMA_DOSEN',$this->NAMA_DOSEN,true);
                $criteria->compare('PENDIDIKAN_TERTINGGI',  $this->PENDIDIKAN_TERTINGGI,true);
		$criteria->compare('NIDN',$this->NIDN,true);
		$criteria->compare('TMP_LAHIR',$this->TMP_LAHIR,true);
		$criteria->compare('TGL_LAHIR',$this->TGL_LAHIR,true);
		$criteria->compare('J_KEL',$this->J_KEL);
		$criteria->compare('AGAMA',$this->AGAMA);
		$criteria->compare('ALAMAT',$this->ALAMAT,true);
		$criteria->compare('NO_KARPEG',$this->NO_KARPEG,true);
		$criteria->compare('TGL_MASUK',$this->TGL_MASUK,true);
		$criteria->compare('FOTO',$this->FOTO,true);
                $criteria->compare('PASSWORD', $this->PASSWORD, true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
        
         public function getJenkel()
        {
            return array(
                '1'=>'Pria',
                '2'=>'Wanita',
                );
        }
        
        public function getAgama()
        {
            return array(
                '1'=>'Budha',
                '2'=>'Hindu',
                '3'=>'Islam',
                '4'=>'Kristen',
                '5'=>'Katolik',
                '6'=>'Konghuchu',
                );
        }
        
        public function ubahJk()
        {
            if($this->J_KEL=='1')
                return "Pria";
            else return "Wanita";
        }
        
        public function ubahAgama()
        {
            if($this->AGAMA=='1')
                return "Budha";
            elseif($this->AGAMA=='2')
                return "Hindu";
            elseif($this->AGAMA=='3')
                return "Islam";
            elseif($this->AGAMA=='4')
                return "Kristen";
            elseif($this->AGAMA=='5')
                return "Katolik";
            else return "Konghucu";
        }

        

        /**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return TblDosen the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
