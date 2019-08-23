<?php //include('../config/config.php')?>
<?php
 class Database{

     	public $host   	= DB_HOST;
    	public $user  	= DB_USER;
        public $pass 	= DB_PASS;
        public $dbname	= DB_NAME;

         public $link;
         public $error;

         public function __construct(){
         	$this->connectdb();
		 }
		 //db connect
         private function connectdb(){
			 $this->link = new mysqli($this->host, $this->user, $this->pass, $this->dbname);
			 
         	if(!$this->link){
             $this->error =  "database connection faild".$this->link->connection_error;
             return false;
         	}
		 }
		 
         //select or read database
         public function select($query){
         	$result = $this->link->query($query) or die ($this->link->error.__LINE__);

         		if($result->num_rows>0){
         			return $result;
         		}else{
         			return false; 
         		}
         }

//insert 
         public function insert($query){
         	$create= $this->link->query($query) or die ($this->link->error.__LINE__);
         	if($create){
			return $create;
			}else{
				return false;

			}
         }

             public function update($query){
         	$update= $this->link->query($query) or die ($this->link->error.__LINE__);
         	if($update){
	return $update;
}else{
	return false;

}


         }

         public function delete($query){
         	$delete= $this->link->query($query) or die ($this->link->error.__LINE__);
         	if($delete){
	return $delete;
	
}else{
	return false;

}


         }



 }



?>