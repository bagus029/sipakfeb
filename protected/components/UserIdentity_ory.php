<?php

class UserIdentity extends CUserIdentity
{
    private $_id;
    public $usertype;
     
    public function __construct($username, $password, $usertype)
    {
        $this->username = $username;
        $this->password = $password;
        $this->usertype = $usertype;
    }
 
    public function authenticate()
    {
        if($this->usertype == 'P'){   //User type 'A' indicate to Agents
 
           $user=User::model()->findByAttributes(array('USERNAME'=>$this->username));
        }
        else if($this->usertype == 'D'){   //User type 'U' indicate to Normal Users
 
            $user=  TblDosen::model()->findByAttributes(array('NIP_DOSEN'=>$this->username));
        }
        
        if ($user === null) {
 
                $this->errorCode = self::ERROR_USERNAME_INVALID;
            } 
 
        else if ($user->PASSWORD!==($this->password)) {
 
                $this->errorCode = self::ERROR_PASSWORD_INVALID;
            }
 
         else {
            $this->_id=$user->ID_USER;
            //$this->setState('lastLoginTime', $user->lastLoginTime);
            $this->setState('USERNAME', $user->USERNAME);
            $this->setState('ID_DOSEN',$user->ID_DOSEN);
            $this->setState('NIP_DOSEN', $user->NIP_DOSEN);
            $this->setState('NAMA_DOSEN', $user->NAMA_DOSEN);
            //$this->setState('ID_USER',$user->ID_USER);
            //$this->setState('NIP',$user->NIP);
            $this->setState('LEVEL',$user->LEVEL);
            $this->setState('NIP_USER',$user->NIP_USER);
            $this->setState('NAMA_USER',$user->NAMA_USER);
            $this->errorCode=self::ERROR_NONE;
        }
        return !$this->errorCode;
        
      }
 
    public function getId()
    {
        return $this->_id;
    }
}

