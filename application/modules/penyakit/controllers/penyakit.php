<?php
class penyakit extends master_controller {
	function __construct(){
		parent::__construct();
		$this->load->model("coremodel","cm");
		 
		$this->controller = get_class($this);

	}

	function index(){
		// echo "fuckkk.."; exit;
		$data_array = array();


		$this->db->select('*')->from('penyakit');
		$res = $this->db->get();
		$data_array['record'] = $res; 
		 
		$content = $this->load->view($this->controller."_view",$data_array,true);

		$this->set_title("DATA  PENYAKIT");
		$this->set_content($content);
		$this->render();
	}

	function save(){


		$post = $this->input->post();
		// show_array($post); exit;

		$this->load->library('form_validation');
 		$this->form_validation->set_rules('kode','Kode','required');
 		$this->form_validation->set_rules('penyakit','penyakit','required');
 		
		 
		$this->form_validation->set_message('required', ' %s Harus diisi ');
		
 		$this->form_validation->set_error_delimiters('', '<br>');

 		if($this->form_validation->run() == TRUE ) { 
 			unset($post['id']);

 			$arr_gejala = $post['id_gejala'];

 			unset($post['id_gejala']);

 			$res = $this->db->insert("penyakit",$post);
 			$id_penyakit = $this->db->insert_id();

 			if($res){

 				$this->db->where("id_penyakit",$id_penyakit);
 				$this->db->delete("pengetahuan");

 				foreach($arr_gejala as $id_gejala):
 					$arr_pengetahuan = array(

 						"id_gejala" => $id_gejala,
 						"id_penyakit" => $id_penyakit
 					);
 					// show_array($arr_pengetahuan); 
 					$this->db->insert("pengetahuan",$arr_pengetahuan);
 				endforeach;


 				$ret = array("error"=>false,"message"=>"Data penyakit berhasil disimpan");
 			}
 			else {
 				$ret = array("error"=>true,"message"=>"Data gagal disimpan".mysql_error());
 			}
 		}
 		else {
 			$ret = array("error"=>true,"message"=>validation_errors());
 		}

 		echo json_encode($ret);
	}
 


 function update(){


		$post = $this->input->post();

		$this->load->library('form_validation');
 		$this->form_validation->set_rules('kode','Kode','required');
 		$this->form_validation->set_rules('penyakit','penyakit','required');
 		
		 
		$this->form_validation->set_message('required', ' %s Harus diisi ');
		
 		$this->form_validation->set_error_delimiters('', '<br>');

 		if($this->form_validation->run() == TRUE ) { 
 			// unset($post['id']);


 			$arr_penyakit = $post['id_penyakit'];

 			unset($post['id_penyakit']);


 			$this->db->where("id",$post['id']);
 			$res = $this->db->update("penyakit",$post);

 			if($res){

 				$this->db->where("id_penyakit",$post['id']);
 				$this->db->delete("pengetahuan");

 				foreach($arr_penyakit as $id_penyakit):
 					$arr_pengetahuan = array(

 						"id_penyakit" => $id_penyakit,
 						"id_penyakit" => $post['id']
 					);
 					$this->db->insert("pengetahuan",$arr_pengetahuan);
 				endforeach;



 				$ret = array("error"=>false,"message"=>"Data penyakit berhasil diupdate");
 			}
 			else {
 				$ret = array("error"=>true,"message"=>"Data gagal diupdate".mysql_error());
 			}
 		}
 		else {
 			$ret = array("error"=>true,"message"=>validation_errors());
 		}

 		echo json_encode($ret);
	}




function hapus($id) {

	$this->db->where("id",$id);
	$res = $this->db->delete("penyakit");
	if($res){

		$this->db->where("id_penyakit",$id);
		$this->db->delete("pengetahuan");


		$ret = array("error"=>false,"message"=>"Data harga berhasil dihapus");
	}
	else {
		$ret = array("error"=>true,"message"=>"Data gagal dihapus".mysql_error());

	}
	echo json_encode($ret);
}


function get_gejala($id_penyakit){

	$this->db->where("id_penyakit",$id_penyakit);
	$res = $this->db->get("pengetahuan");
	$arr_pengetahuan = array();
	foreach($res->result() as $row) : 
		$arr_pengetahuan[] = $row->id_gejala;
	endforeach;

	// show_array($arr_pengetahuan);exit;

	$this->db->order_by("kode");
	$res  = $this->db->get("gejala");

	foreach($res->result() as $row_gejala): 
		$selected = ( in_array($row_gejala->id, $arr_pengetahuan) )?"selected":"";
		echo "<option value=$row_gejala->id $selected>$row_gejala->kode $row_gejala->gejala</option>";

		// $arr[] = array("id"=>$row_gejala->id,"text"=>"$row_gejala->kode $row_gejala->penyakit");
	endforeach;

	// $ret = array("result"=>$arr);

	// echo json_encode($arr);



}


function get_gejala_all(){

	 

	// show_array($arr_pengetahuan);exit;

	$this->db->order_by("kode");
	$res  = $this->db->get("gejala");

	foreach($res->result() as $row_gejala): 
		 
		echo "<option value=$row_gejala->id >$row_gejala->kode $row_gejala->gejala</option>";

		// $arr[] = array("id"=>$row_gejala->id,"text"=>"$row_gejala->kode $row_gejala->penyakit");
	endforeach;

	// $ret = array("result"=>$arr);

	// echo json_encode($arr);



}


function pengetahuan(){

$res  = $this->db->get("penyakit");

// $data_array['rec_penyakit'] = $res; 

$data_array['rec_gejala'] = $this->db->get("gejala");

$n=0;
foreach($res->result() as $row) : 
	$n++;
	
	$this->db->where("id_penyakit",$row->id);
	$rs_pen  = $this->db->get("pengetahuan");
	$arr_gejala = array();
	foreach($rs_pen->result() as $rpen): 
		$arr_gejala[] = $rpen->id_gejala;
	endforeach;



	$arr[$n]['no'] = $n;
	$arr[$n]['kode'] = $row->kode;
	$arr[$n]['penyakit'] = $row->penyakit;
	$x=0;
	foreach($data_array['rec_gejala']->result() as $rg): 
		$arr[$n][$x] =  (in_array($rg->id,$arr_gejala))?$rg->kode:"";
		$x++;
	endforeach;


endforeach;

// show_array($arr); exit;
$data_array['data'] = $arr;

$content = $this->load->view($this->controller."_pengetahuan_view",$data_array,true);

$this->set_title("DATA  PENGETAHUAN");
$this->set_content($content);
$this->render();



}


}

?>
