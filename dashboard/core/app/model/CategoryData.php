<?php
class CategoryData {
	public static $tablename = "category";
	public static $schema = array(
		"id"=>array("key"=>"ai","label"=>"","form"=>"hidden","required"=>"","actions"=>"edit"),
		"name"=>array("label"=>"Nombre","form"=>"text","required"=>"","actions"=>"add,edit,view")
	);

	public function __construct(){
		$this->name = "";
		$this->lastname = "";
		$this->username = "";
		$this->email = "";
		$this->password = "";
		$this->created_at = "NOW()";
	}

	public function add(){
		$fs = Crudadmin::prepareFields(self::$schema,"add");
		$vs = Crudadmin::prepareValues(self::$schema,$this,"add");
		$sql = Crudadmin::buildIFromFV(self::$tablename,$fs, $vs);
		Executor::doit($sql);
	}

	public function del(){
		$sql = "delete from ".self::$tablename." where id=$this->id";
		Executor::doit($sql);
	}

	public static function delBy($k,$v){
		$sql = "delete from ".self::$tablename." where $k=\"$v\"";
		Executor::doit($sql);
	}

	public function update(){
		$fs = Crudadmin::prepareFields(self::$schema,"edit");
		$vs = Crudadmin::prepareValues(self::$schema,$this,"edit");
		$sql = Crudadmin::buildUFromFV(self::$tablename,$fs, $vs,$this->id);
		Executor::doit($sql);
	}

	public function update_passwd(){
		$sql = "update ".self::$tablename." set password=\"$this->password\" where id=$this->id";
		Executor::doit($sql);
	}

	public function updateById($k,$v){
		$sql = "update ".self::$tablename." set $k=\"$v\" where id=$this->id";
		Executor::doit($sql);
	}

	public static function getById($id){
		 $sql = "select * from ".self::$tablename." where id=$id";
		$query = Executor::doit($sql);
		return Model::one($query[0],new CategoryData());
	}

	public static function getBy($k,$v){
		$sql = "select * from ".self::$tablename." where $k=\"$v\"";
		$query = Executor::doit($sql);
		return Model::one($query[0],new CategoryData());
	}

	public static function getAll(){
		$sql = Crudadmin::buildS(self::$tablename,array("*"));
		$query = Executor::doit($sql);
		return Model::many($query[0],new CategoryData());
	}

	public static function getAllBy($k,$v){
		 $sql = "select * from ".self::$tablename." where $k=\"$v\"";
		$query = Executor::doit($sql);
		return Model::many($query[0],new CategoryData());
	}


	public static function getLike($q){
		$sql = "select * from ".self::$tablename." where name like '%$q%'";
		$query = Executor::doit($sql);
		return Model::many($query[0],new CategoryData());
	}


}

?>