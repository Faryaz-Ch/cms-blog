<?php

$user = 'faryaz';
$password = '';
$db = 'cms-blog';
$host = 'localhost';
$port = 3306;

$con = mysqli_init();
$success = mysqli_real_connect(
   $con, 
   $host, 
   $user, 
   $password, 
   $db,
   $port
);

/*$db['db_host'] = 'localhost';
$db['db_user'] = 'root';
$db['db_pass'] = '';
$db['db_name'] = 'cms-blog';

foreach($db as $key => $value){
    define(strtoupper($key), $value);
}

$con = mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);

?>*/