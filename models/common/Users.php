<?php
session_start();
class Users extends database{
    public function login($data){
        $email = $data['email'];
        $password = $data['password'];
        if ($email == "" && $password != "") {
            return "Email không được bỏ trống";
        } elseif ($password == "" && $email != ""){
            return "Password không được bỏ trống";
        } else if ($password == "" && $email == "") {
            return [
                "Email không được bỏ trống",
                "Password không được bỏ trống"
            ];
        }
        $sql = "SELECT * FROM user_account WHERE email_account = '$email' and pass_word  = '" . md5($password) . "' and active_status != 'block' ";
        $query = $this->conn->prepare($sql);
        $query->execute();
        $user =  $query->rowCount();
        if($user >= 1) return "Đăng nhập thành công";
        return "Đăng nhập thất bại";
    }

    public function register($data) 
    {
        $arrErr = [];
        $name = $data['name'];
        $email = $data['email'];
        $pass = $data['pass'];
        $confirmPassword = $data['confirmPassword'];
        $phonenumber = $data['phonenumber'];
        $address = $data['address'];

        if ($name == "") {
            $arrErr[] = "Tên không được bỏ trống";
        } elseif ($email == "") {
            $arrErr[] = "Email không được bỏ trống";
        } elseif($email != "" && strpos($email, "@gmail.com") == false){
            $arrErr[] = "Email không đúng định dạng";
        } elseif ($pass == "") {
            $arrErr[] = "Tên không được bỏ trống";
        } elseif($pass !== $confirmPassword) {
            $arrErr[] = "Xác nhận mật khẩu không đúng";
        } elseif ($phonenumber == "") {
            $arrErr[] = "Số điện thoại không được bỏ trống";
        } elseif($phonenumber != "" && !is_numeric($phonenumber)) {
            $arrErr[] = "Số điện thoại chỉ chứa kí tự số";
        } elseif ($address == "") {
            $arrErr[] = "Địa chỉ không được bỏ trống";
        } elseif ($email != "" && $this->getUser($email)) {
            $arrErr[] = "Email đã có người sử dụng";
        }
        
        if (count($arrErr)) {
            return $arrErr;
        }

        $sql = "INSERT INTO user_account VALUES ('','$name','$email','$pass','$phonenumber','$address',current_time(),'','Hoạt Động')";
        $query = $this->conn->prepare($sql);
        $result = $query->execute();
        if ($result) {
            return ["Đăng kí thành công"];
        } else {
            return ["Đăng kí thất bại"];
        }
    }

    public function changePassword($data)
    {
        $email = $data["email"];
        $passwordOld = $data["passwordOld"];
        $passwordNew = $data["passwordNew"];
        $passwordNewConfirm = $data["passwordNewConfirm"];
        $arrErr = [];
        if ($passwordOld == "") {
            $arrErr[] = "Vui lòng nhập mật khẩu cũ";
        }
        if ($passwordNew == "") {
            $arrErr[] = "Vui lòng nhập mật khẩu mới";
        }
        if (! isset($this->getInfo($email)[0]["email_account"])) {
            $arrErr[] = "Đổi mật khẩu thất bại";
        }
        if ($this->getInfo($email)[0]['pass_word'] != md5($passwordOld) && $passwordOld != "") {
            $arrErr[] = "Mật khẩu cũ không đúng";
        }
        if ($passwordNew != $passwordNewConfirm && $passwordNewConfirm != "" && $passwordNew != "") {
            $arrErr[] = "Xác nhận mật khẩu không đúng";
        }
        if(count($arrErr) > 0) return $arrErr;

        $sql = "UPDATE user_account set pass_word = '". md5($passwordNew) . "' where email_account = '$email'";
        $query = $this->conn->prepare($sql);
        $result = 1;
        if($result) {
            return ["Thay đổi mật khẩu thành công"];
        }

        return ["Thay đổi mật khẩu thất bại"];

    }

    public function viewProduct($idProduct)
    {
        $sql = "SELECT * FROM product WHERE id = '$idProduct'";
        $query = $this->conn->prepare($sql);
        $query->execute();
        $user =  $query->rowCount();
        if($user >= 1) return true;
        return false;
    }

    public function addProductCart($id)
    {
        $product = $this->getProduct($id);
        if(!isset($_SESSION['cart'][$id])){
            if($product[0]["quantity"] > 0){
                $_SESSION['cart'][$id] = [
                    "id" => $product[0]['id'],
                    "name" => $product[0]['name'],
                    "img" => $product[0]["img_product"],
                    "quantity" => 1,
                    "total" => $product[0]["price"]
                ];
            }
        } else {
            if($product[0]["quantity"] > 0){
                $_SESSION['cart'][$id]["quantity"] = $_SESSION['cart'][$id]["quantity"] + 1;
                $_SESSION['cart'][$id]["total"] = $product[0]["price"] * ($_SESSION['cart'][$id]["quantity"]);
            }
        }
        return $_SESSION["cart"][$id];
    }

    public function updateQuantityProductByCart($id, $quantity)
    {
        $product = $this->getProduct($id);
        if(isset($_SESSION['cart'][$id])){
            if($product[0]["quantity"] >= $quantity && $quantity > 0){
                $_SESSION['cart'][$id]["quantity"] = $quantity;
                $_SESSION['cart'][$id]["total"] = $product[0]["price"] * ($_SESSION['cart'][$id]["quantity"]);
            } elseif ($product[0]["quantity"] < $quantity){
                return "Số lượng trong kho không đủ";
            }
        }
        return $_SESSION["cart"][$id];
    }

    public function getProduct($id) {
        $sql = "SELECT * FROM product WHERE id = '$id'";
        $query = $this->conn->prepare($sql);
        $query->execute();
        $result = $query->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    }
    public function getUser($email) {
        $sql = "SELECT * FROM user_account WHERE email_account = '$email' and active_status != 'block' ";
        $query = $this->conn->prepare($sql);
        $query->execute();
        return  $query->rowCount();
    }

    public function getInfo($email) {
        $sql = "SELECT * FROM user_account WHERE email_account = '$email' and active_status != 'block' ";
        $query = $this->conn->prepare($sql);
        $query->execute();
        $result =  $query->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    }

    public function random($n)
    {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $randomString = '';

        for ($i = 0; $i < $n; $i++) {
            $index = rand(0, strlen($characters) - 1);
            $randomString .= $characters[$index];
        }

        return $randomString;
    }

    
}

class database{
    public $conn;
    protected $severName  = "localhost";
    protected $userName = "root";
    protected $passWord = "";
    protected $databaseName = "web_ban_hang";

    function __construct()
    {
        try {
            $this->conn = new PDO("mysql:host=$this->severName;dbname=$this->databaseName", $this->userName, $this->passWord);
            // set the PDO error mode to exception
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            
          } catch(PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
          }
    }
}
?>