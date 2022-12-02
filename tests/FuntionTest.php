<?php
use \PHPUnit\Framework\TestCase;
require "./models/common/Users.php";
class FunctionTest extends TestCase{

    public function testLoginSuccess()
    {
        $userModel = new Users();
        $data = [
            'email' => 'lanuyen@gmail.com',
            'password' => '123456'
        ];
        $result = $userModel->login($data);
        $this->assertSame("Đăng nhập thành công",$result);
    }

    public function testLoginFail()
    {
        $userModel = new Users();
        $data = [
            'email' => $userModel->random(10) . "@gmail.com",
            'password' => $userModel->random(10)
        ];
        $result = $userModel->login($data);
        $this->assertSame("Đăng nhập thất bại", $result);
    }

    public function testLoginEmptyEmail()
    {
        $userModel = new Users();
        $data = [
            'email' => "",
            'password' => $userModel->random(10)
        ];
        $result = $userModel->login($data);
        $this->assertSame("Email không được bỏ trống", $result);
    }

    public function testLoginEmptyPassword()
    {
        $userModel = new Users();
        $data = [
            'email' => $userModel->random(10) . "@gmail.com",
            'password' => ""
        ];
        $result = $userModel->login($data);
        $this->assertSame("Password không được bỏ trống", $result);
    }

    public function testLoginEmptyEmailAndPassword()
    {
        $userModel = new Users();
        $data = [
            'email' => "",
            'password' => ""
        ];
        $result = $userModel->login($data);
        $this->assertSame([
            "Email không được bỏ trống",
            "Password không được bỏ trống"
        ], $result);
    }

    public function testRegisterSuccess()
    {
        $userModel = new Users();
        $password = $userModel->random(10);
        $data = [
            "name" => "Lê Hữu Phước",
            "email" => $userModel->random(10) . "@gmail.com",
            "pass" => $password,
            "confirmPassword" => $password,
            "phonenumber" => "0845151117",
            "address" => "Quảng Ngãi"
        ];

        $result = $userModel->register($data);
        $this->assertSame(["Đăng kí thành công"], $result);
    }

    public function testRegisterExistEmail()
    {
        $userModel = new Users();
        $password = $userModel->random(10);
        $data = [
            "name" => "Lê Hữu Phước",
            "email" => "lehuuphuocit0201@gmail.com",
            "pass" => $password,
            "confirmPassword" => $password,
            "phonenumber" => "0845151117",
            "address" => "Quảng Ngãi"
        ];

        $result = $userModel->register($data);
        $this->assertSame(["Email đã có người sử dụng"], $result);
    }

    public function testRegisterPhoneNotNumber()
    {
        $userModel = new Users();
        $password = $userModel->random(10);
        $data = [
            "name" => $userModel->random(10),
            "email" => $userModel->random(10) . "@gmail.com",
            "pass" =>  $password,
            "confirmPassword" => $password,
            "phonenumber" => "0845151117xy",
            "address" => "Quảng Ngãi"
        ];

        $result = $userModel->register($data);
        $this->assertEquals(["Số điện thoại chỉ chứa kí tự số"], $result);
    }
    public function testRegisterInvalidEmail()
    {
        $userModel = new Users();
        $password = $userModel->random(10);
        $data = [
            "name" => $userModel->random(10),
            "email" => $userModel->random(10) . "gmail.com",
            "pass" =>  $password,
            "confirmPassword" => $password,
            "phonenumber" => "0845151117",
            "address" => "Quảng Ngãi"
        ];

        $result = $userModel->register($data);
        $this->assertEquals(["Email không đúng định dạng"], $result);
    }

    public function testChangePasswordWithFalsePasswordOld(){
        $userModel = new Users();
        $password = $userModel->random(8);
        $data = [
            "email" => "lanuyen@gmail.com",
            "passwordOld" => "1234567",
            "passwordNew" => $password,
            "passwordNewConfirm" => $password
        ];
        $result = $userModel->changePassword($data);
        $this->assertSame(["Mật khẩu cũ không đúng"], $result);
    }

    public function testChangePasswordWithEmptyPasswordOld(){
        $userModel = new Users();
        $password = $userModel->random(8);
        $data = [
            "email" => "lanuyen@gmail.com",
            "passwordOld" => "",
            "passwordNew" => $password,
            "passwordNewConfirm" => $password
        ];
        $result = $userModel->changePassword($data);
        $this->assertSame(["Vui lòng nhập mật khẩu cũ"], $result);
    }

    public function testChangePasswordWithEmptyPasswordNew(){
        $userModel = new Users();
        $password = $userModel->random(8);
        $data = [
            "email" => "lanuyen@gmail.com",
            "passwordOld" => "123456",
            "passwordNew" => "",
            "passwordNewConfirm" => $password
        ];
        $result = $userModel->changePassword($data);
        $this->assertSame(["Vui lòng nhập mật khẩu mới"], $result);
    }

    public function testViewProductTrue()
    {
        $userModel = new Users();
        $result = $userModel->viewProduct(143);
        $this->assertTrue($result);
    }

    public function testViewProductFasle()
    {
        $userModel = new Users();
        $result = $userModel->viewProduct($userModel->random(5));
        $this->assertFalse($result);
    }

    public function testChangePassword()
    {
        $userModel = new Users();
        $data = [
            "email" => "lehuuphuocit0201@gmail.com",
            "passwordOld" => "123456",
            "passwordNew" => "123456",
            "passwordNewConfirm" => "123456"
        ];
        $result = $userModel->changePassword($data);
        $this->assertSame(["Thay đổi mật khẩu thành công"], $result);
    }

    public function testAddProductByCart()
    {
        unset($_SESSION['cart']);
        $idProduct = 143;
        $userModel = new Users();
        $result = $userModel->addProductCart($idProduct);
        $data = [
            "id" => $idProduct,
            "name" => "ĐÀN GUITAR ACOUSTIC ET-03SV",
            "img" => "ea33eeeaaa5a64043d4b-1-300x300.jpg",
            "quantity" => 1,
            "total" => 18000000
        ];
        $this->assertEquals($data, $result);
    }

    public function testAddMoreProduct()
    {
        $idProduct = 143;
        $userModel = new Users();
        $result = $userModel->addProductCart($idProduct);
        $data = [
            "id" => $idProduct,
            "name" => "ĐÀN GUITAR ACOUSTIC ET-03SV",
            "img" => "ea33eeeaaa5a64043d4b-1-300x300.jpg",
            "quantity" => 2,
            "total" => 36000000
        ];
        $this->assertEquals($data, $result);
    }

    public function testUpdateQuantityProductByCart()
    {
        $idProduct = 143;
        $quantity = 5;
        $userModel = new Users();
        $result = $userModel->updateQuantityProductByCart($idProduct, $quantity);
        $data = [
            "id" => $idProduct,
            "name" => "ĐÀN GUITAR ACOUSTIC ET-03SV",
            "img" => "ea33eeeaaa5a64043d4b-1-300x300.jpg",
            "quantity" => $quantity,
            "total" => 90000000
        ];
        $this->assertEquals($data, $result);
    }

    public function testUpdateQuantityProductThanStorageByCart(){
        $idProduct = 143;
        $quantity = 20;
        $userModel = new Users();
        $result = $userModel->updateQuantityProductByCart($idProduct, $quantity);
        $this->assertEquals("Số lượng trong kho không đủ", $result);
    }

    public function testUpdateQuantityProductSmallerThan0ByCart(){
        $idProduct = 143;
        $userModel = new Users();
        $quantity = '-'.rand(5, 15);
        $data = [
            "id" => $idProduct,
            "name" => "ĐÀN GUITAR ACOUSTIC ET-03SV",
            "img" => "ea33eeeaaa5a64043d4b-1-300x300.jpg",
            "quantity" => 5,
            "total" => 90000000
        ];
        $result = $userModel->updateQuantityProductByCart($idProduct, $quantity);
        $this->assertEquals($data, $result);
    }

    //test trường dữ liệu họ tên có kí tự đặc biệt
    public function testRegisterNamesWithSpecialCharacters()
    {
        $userModel = new Users();
        $password = $userModel->random(10);
        $data = [
            "name" => $userModel->random(10) . "!@#$",
            "email" => $userModel->random(10) . "@gmail.com",
            "pass" => $password,
            "confirmPassword" => $password,
            "phonenumber" => "0845151117",
            "address" => "Quảng Ngãi"
        ];

        $result = $userModel->register($data);
        $this->assertEquals(["Tên không được chứa kí tự đặc biệt"], $result);//Đăng kí thành công
    }

    public function testRegisterNameWithCharactersThan30()
    {
        $userModel = new Users();
        $password = $userModel->random(10);
        $data = [
            "name" => $userModel->random(31),
            "email" => $userModel->random(10) . "@gmail.com",
            "pass" => $password,
            "confirmPassword" => $password,
            "phonenumber" => "0845151117",
            "address" => "Quảng Ngãi"
        ];

        $result = $userModel->register($data);
        $this->assertEquals(["Tên không được quá 30 kí tự"], $result);
    }

    public function testRegisterPasswordCharactersLess8()
    {
        $userModel = new Users();
        $password = $userModel->random(7);
        $data = [
            "name" => $userModel->random(10),
            "email" => $userModel->random(10) . "@gmail.com",
            "pass" =>  $password,
            "confirmPassword" => $password,
            "phonenumber" => "0845151117",
            "address" => "Quảng Ngãi"
        ];

        $result = $userModel->register($data);
        $this->assertEquals(["Mật khẩu phải trên 8 kí tự"], $result);
    }

    public function testRegisterPasswordCharactersBigger20()
    {
        $userModel = new Users();
        $password = $userModel->random(21);
        $data = [
            "name" => $userModel->random(10),
            "email" => $userModel->random(10) . "@gmail.com",
            "pass" =>  $password,
            "confirmPassword" => $password,
            "phonenumber" => "0845151117",
            "address" => "Quảng Ngãi"
        ];

        $result = $userModel->register($data);
        $this->assertEquals(["Mật khẩu phải dưới 20 kí tự"], $result);
    }

    public function testRegisterAddressWithCharactersThan100()
    {
        $userModel = new Users();
        $password = $userModel->random(10);
        $address = $userModel->random(100);
        $data = [
            "name" => $userModel->random(31),
            "email" => $userModel->random(10) . "@gmail.com",
            "pass" => $password,
            "confirmPassword" => $password,
            "phonenumber" => "0845151117",
            "address" => $address
        ];

        $result = $userModel->register($data);
        $this->assertEquals(["Địa chỉ không được vượt quá 100 kí tự"], $result);
    }

    public function testChangePasswordWithPasswordNewThanCharacters20()
    {
        $userModel = new Users();
        $password = $userModel->random(21);
        $data = [
            "email" => "lanuyen@gmail.com",
            "passwordOld" => "123456",
            "passwordNew" => $password,
            "passwordNewConfirm" => $password
        ];
        $result = $userModel->changePassword($data);
        $this->assertSame(["Mật khẩu không được vượt quá 20 kí tự"], $result);
    }

    public function testChangePasswordWithPasswordNewLessCharacters8()
    {
        $userModel = new Users();
        $password = $userModel->random(8);
        $data = [
            "email" => "lanuyen@gmail.com",
            "passwordOld" => "123456",
            "passwordNew" => $password,
            "passwordNewConfirm" => $password
        ];
        $result = $userModel->changePassword($data);
        $this->assertSame(["Mật khẩu phải trên 8 kí tự"], $result);
    }
}
?>