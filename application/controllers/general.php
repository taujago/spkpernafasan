<?php 
class general extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model("coremodel","cm");
	}


	function get_next_id(){
		// echo "vanke";
		$id = $this->cm->nextcode();
		echo json_encode(array("kd_pasien"=>$id));
	}
}
?>