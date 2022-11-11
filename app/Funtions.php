<?php
namespace App;
use App\Http; 
class Funtions{

    public static function add($a,$b){
        return $a+$b;
    }

    public static function login($data){
        $url = "http://localhost/web_quan_ao/test/login";
        return json_decode(Funtions::curl($url,$data),true)["status"] ? true : false;
    }

    public static function register($data){
        $url = "http://localhost/web_quan_ao/test/register";
        return json_decode(Funtions::curl($url,$data),true)["status"] ? true : false;
    }

    public static function curl($url,$data){
        $curl = curl_init();

        curl_setopt_array($curl, array(
        CURLOPT_URL => $url,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'POST',
        CURLOPT_POSTFIELDS => $data,
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        return $response;
    }
}
?>