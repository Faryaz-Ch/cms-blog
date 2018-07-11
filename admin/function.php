<?php
	require '../config/connect.php';

	function hash_function($password){
		$salt = file_get_contents('salt.txt');

		$password = hash_hmac('whirlpool',$password, $salt);
		return $password;
	}
	function mysqli_result($res,$row=0,$col=0){ 
    $numrows = mysqli_num_rows($res); 
    if ($numrows && $row <= ($numrows-1) && $row >=0){
        mysqli_data_seek($res,$row);
        $resrow = (is_numeric($col)) ? mysqli_fetch_row($res) : mysqli_fetch_assoc($res);
        if (isset($resrow[$col])){
            return $resrow[$col];
        }
    }
    return false;
}
	function is_user_activated($username){
		
		// need to set this as a global
		global $link;
		
		$sql = "SELECT `activated` FROM `users` WHERE `username` = '".$username."'";
		$query = mysqli_query($link, $sql);
		$result = mysqli_result($query, 0);

		if($result == 1){
			return true;
		} else {
			return false;
		}
	}
	function login($username, $password, $remember_me){
		
		// need to set this as a global
		global $link;
		
		// check details
		$sql = "SELECT `id` FROM `users` WHERE `username` = '".$username."' AND `password` = '".$password."'";
		$query = mysqli_query($link, $sql);
		if(mysqli_num_rows($query) == 0){
			return false;
		} else {
			$result = mysqli_result($query, 0);

			$session_code = uniqid();
			$sql2 = "INSERT INTO  `sessions` (  `user_id` ,  `session_code` ,  `created_at` ,  `updated_at` ) 
VALUES ($result,  '".$session_code."', NOW( ) , NOW( ) ) ON DUPLICATE 
KEY UPDATE  `session_code` =  '".$session_code."',
`updated_at` = NOW( )";
			$_SESSION['session_code'] = $session_code;
			if($remember_me === true){
				$_COOKIE['session_code'] = $session_code;
			}
			return true;
		}
	}
	function is_user_logged_in(){
		if(isset($_SESSION['session_code'])){
			// logged in
			// Session code exists in db
			if(check_session_code($_SESSION['session_code']) !== false){
				return true;
			} else {
				return false;
			}
		} else {
			// not logged in
			if(isset($_COOKIE['session_code'])){
				if(check_session_code($_COOKIE['session_code']) !== false){
					$_SESSION['session_code'] = $_COOKIE['session_code'];
					return true;
				} else {
					return false;
				}
			}
			return false;
		}
	}
	function check_session_code($session){
		
		// need to set this as a global
		global $link;
		
		$session = mysqli_real_escape_string($link,trim($session));
		$sql = "SELECT `user_id` FROM `sessions` WHERE `session_code` = '". $session."'";
		$query = mysqli_query($link, $sql);
		if(mysqli_num_rows($query) == 0){
			return false;
		} else {
			return mysqli_result($query, 0);
		}
	}
	function user_exists($username){
		
		// need to set this as a global
		global $link;
		
		$sql = "SELECT id FROM users WHERE username = '".$username."'";
		$query = mysqli_query($link, $sql);
		$result = mysqli_num_rows($query);

		if($result == 1){
			return true;
		} else {
			return false;
		}
	}
	function email_exists($email){
		
		// need to set this as a global
		global $link;
		
		$sql = "SELECT `id` FROM `users` WHERE `email` = '".$email."'";
		$query = mysqli_query($link, $sql);
		$result = mysqli_num_rows($query);

		if($result == 1){
			return true;
		} else {
			return false;
		}
	}
	function generate_code(){
		return uniqid('', true);
	}
	function email_valid($email){
		if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
			return false;
		} else {
			return true;
		}
	}
	
	function register($first_name, $last_name, $email, $username, $password) {
		
		// need to set this as a global
		global $link;
		
		$sql = "INSERT INTO users(id, first_name, last_name, email, username, password) VALUES (NULL, '".$first_name."', '".$last_name."', '".$email."', '".$username."', '".$password."');";
		
		$query = mysqli_query($link, $sql);
		
		if($query === false){
			return false;
		} else {
			return true;
		}
	}

	function send_activation_email($email, $code){

		$message = "Activate your account with us by going to: https://www.expresspakistan.org/login/activate.php?activate_code=" . $code;
		mail($email, "Activate your account today!", $message, "From: admin@expresspakistan.org");

	}