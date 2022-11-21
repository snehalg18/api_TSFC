



<?php
defined('BASEPATH') OR exit('No direct script access allowed');
use \Firebase\JWT\JWT;

Class Auth extends BD_Controller {
function __construct(){
parent::__construct();


}	

 public function index()
{
    echo "https://tanajisawant.org";
}
 public function login_post()
    {
		
		$login_data = $this->post();
		$phone_no		= $login_data['phone_no'];
		$result = $this->db->where('phone_no',$phone_no)->get('users')->row();

		if($result){
			
				//$code = rand(100000, 999999);
				$code=123456;


				$customer_data = array(
					'otp'	=>	$code
				);
			
				$update_phone_query = $this->db->where('phone_no',$phone_no)->update('users',$customer_data);
			
				$this->sendMessageThroughMSG91($phone_no,$code,"91");
				
			 //  $data['success'] = '1';
            //  $data['status'] = 'success';
            //  $data['message'] = 'OTP  Sent successfully.';
            //   $this->response($data, 200);

			$this->response([ 'success' =>'1' ,'status' => 'success', 'message' => 'OTP  Sent successfully.' ], 200); 			

		}else{
				
				
			$insert_data = array(
			'phone_no' 	=> $phone_no,
			'email'   => 'abc1@gmail.com',
			'role_id'   => 3,
			'status'    => 1,
			
		);
		$add_user = $this->db->insert('users',$insert_data);
    	$code=123456;
		$customer_data = array(
					'otp'	=>	$code
				);
			
		$update_phone_query = $this->db->where('phone_no',$phone_no)->update('users',$customer_data);
		$this->sendMessageThroughMSG91($phone_no,$code,"91");
		$this->response([ 'success' =>'1' ,'status' => 'success', 'message' => 'OTP  Sent successfully.' ], 200); 		
	    // 	$data['success'] = '1';
        // $data['status'] = 'success';
        // $data['message'] = 'OTP Sent successfully.';
        // $data['code'] = HTTP_OK;
        // $this->response($data, 200);

		}
			
	
    }



public function sendMessageThroughMSG91($to_number, $code,$country_code)
    {
        
            $curl = curl_init();
            $rand = $code;
            $sender="PRFCPY";
            $message ="Welcome To Perfect Pay Your OTP $rand,OTP Is Confidential Don't Share With Anyone We Never Call & Ask You For Any OTP.$sender";
            $apikey="cGVyZmVjdGxpZmVUOmtHQnNQaUkx";
            $type ="TEXT";
            $mobile=$to_number;
            $peId="1001588020000071269";
            $tempId="1007165916239814236";
            
            curl_setopt_array($curl, array(
              CURLOPT_URL => "https://webpostservice.com/sendsms_v2.0/sendsms.php"."?apikey=".$apikey."&type=".$type."&sender=".$sender."&mobile=".$mobile."&peId=".$peId."&tempId=".$tempId."&message=".urlencode($message),
              CURLOPT_RETURNTRANSFER => true,
              CURLOPT_ENCODING => '',
              CURLOPT_MAXREDIRS => 10,
              CURLOPT_TIMEOUT => 0,
              CURLOPT_FOLLOWLOCATION => true,
              CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
              CURLOPT_CUSTOMREQUEST => 'GET',
            ));
            
            $response = curl_exec($curl);
            curl_close($curl);
            echo $response;
	
        ob_start();
		if ($err) {
		  echo "cURL Error #:" . $err;
		} else {
		  echo $response;
		}
	ob_end_clean();
	
	}


public function verfiy_user_phone_no_post(){

		$post_data = $this->post();
		$phone_no 	=	$post_data['phone_no']; 
		$otp 		= 	$post_data['otp'];
		
		$query = $this->db->select('*')->where('phone_no',$phone_no)->where('otp',$otp)->get('users')->row();

		if($query){
			
			$update_data = array('is_verified'=>'1');
	
			$query = $this->db->where('phone_no',$phone_no)->update('users',$update_data);
			
			$this->response([ 'success' =>'1' ,'status' => 'success', 'message' => 'Verification done successfully.'  ], 200); 
			
		}else{
		    
			$this->response([ 'success' =>'0' ,'status' => 'failure', 'message' => 'OTP does not match with our records.'  ], 200); 

		}

	}
	
	public function add_ticket_post()
	{
	    $post_data = $this->post();
		$phone_no  = $post_data['phone_no'];
	    $query = $this->db->select('*')->where('phone_no',$phone_no)->get('users')->row();

	    $post_data = $this->post();

			$data['subject'] 		= $post_data['subject'];
			$data['status_id']	 	= 1;
			$data['user_id'] 		= $query->id;
		    $add_user = $this->db->insert('tickets',$data);
		
		
		       

			$this->response([ 'success' =>'1' ,'status' => 'success', 'message' => 'Ticket Created successfully.'], REST_Controller::HTTP_OK); 
	    
	}
	
	
}






