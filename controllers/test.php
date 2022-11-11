<?php 
    class test extends controller{
        private $account_model;
        
        public function __construct()
        {
            $this->account_model = $this->ModelAdmin("accountmodel");
        }

        public function login(){
            $email = $_POST['email'];
            $password = $_POST['password'];
            $check = false;
            $result = $this->account_model->LoginUser($email,md5($password));
            if($result > 0) $check = true;
            echo json_encode(["status"=>$check]); return;
        }

        public function register(){
            $email = $_POST["email"];
            $full_name = $_POST["full_name"];
            $password = $_POST["password"];
            $confirm_password = $_POST["confirm_password"];
            $phone_number = $_POST["phone_number"];
            $address = $_POST["address"];

            if((strlen($email) == 0 || strlen($full_name) == 0 || strlen($password) == 0 || strlen($confirm_password) == 0 || strlen($phone_number) == 0 || $address == 0)) 
            {
                echo json_encode(["status"=>0]); 
                return;
            }

            if($password != $confirm_password) 
            {
                echo json_encode(["status"=>0]); 
                return;
            }

            if(!filter_var($email, FILTER_VALIDATE_EMAIL))
            {
                echo json_encode(["status"=>0]); 
                return;
            }

            $email_exist = $this->account_model->checkemail($email);
            if($email_exist  >= 1){
                echo json_encode(["status"=>0]); 
                return;
            }

            $result =  $this->account_model->createUser($email,md5($password),$full_name,$address,$phone_number);
            echo json_encode(["status"=>$result]);return;
        }
    }
?>