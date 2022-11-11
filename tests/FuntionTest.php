<?php
namespace App;
use App\Funtions;
use \PHPUnit\Framework\TestCase;

use function PHPUnit\Framework\assertEquals;

class FuntionTest extends TestCase{
    public function testLogin()
    {
        $data = [
            'email' => 'lehuuphuocit0201@gmail.com',
            'password' => '1'
        ];
        $result = Funtions::login($data);
        $this->assertEquals(true,$result);
    }

    public function testRegister()
    {
        $data = [
            'email' => "khanhnhi@gmail.com",
            'password' => "123",
            'confirm_password' => "123",
            'address' => "quang ngai",
            'phone_number' => "0845151117",
            'full_name' => "Lan Uyen"
        ];
        
        $result = Funtions::register($data);
        $this->assertEquals(true,$result);
    }


}
?>