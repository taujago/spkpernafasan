<?php
class konsultasi extends master_controller {
	function __construct(){
		parent::__construct();
		$this->load->model("coremodel","cm");
		 
		$this->controller = get_class($this);

	}

	function index(){
		// echo "fuckkk.."; exit;
		$data_array = array();

		$this->db->order_by("kode");

		$data_array['record'] = $this->db->get("gejala");



		 
		 
		$content = $this->load->view($this->controller."_view_form",$data_array,true);

		$this->set_title("KONSULTASI PENYAKIT MATA");
		$this->set_content($content);
		$this->render();
	}




function index2(){




		 $post = $this->input->post();
		 // show_array($post);

		 $this->db->order_by("kode");
		 $res = $this->db->get("penyakit");

		 $jml_penyakit = $res->num_rows();

		 $arr = array();

		 $arr_hitung = array();
		 $arr_nilai_p = array();

		 $this->db->query("delete from tmp");

		 
		 $jml_gejala = $this->db->get("gejala")->num_rows();

		 foreach($res->result() as $row) : 

		 	// $arr[$row->id] = array();
		 	$sum = (1/$jml_penyakit);
		 	//echo "sum awal $sum <br />";
		 	 foreach($post['id_gejala'] as $id_gejala) : 
		 	 	$this->db->where("id_gejala",$id_gejala);
		 	 	$this->db->where("id_penyakit",$row->id);
		 	 	$jumlah  = $this->db->get("pengetahuan")->num_rows();
		 	 	$arr[$row->id][$id_gejala] = $jumlah;

		 	 	$arr_hitung[$row->id][$id_gejala] = 
		 	 	($jumlah + ($jml_gejala * (1/$jml_penyakit)) )  / (1+$jml_gejala);

		 	 	// $arr_nilai_p[$row->id] = $sum
		 	 	$p = $arr_hitung[$row->id][$id_gejala];

		 	 	 $sum = $sum *  $p;

		 	 	// echo "$p  <br />";
		 	 	// echo "$sum = $sum *  $arr_hitung['$row->id']['$id_gejala']";


		 	 endforeach;
		 	 // echo "$sum <hr />";
		 	 $arr_nilai_p[$row->id] =$sum;  
		 	 $arr_insert = array("id_penyakit"=>$row->id, "skor"=>$arr_nilai_p[$row->id]);
		 	 $this->db->insert("tmp",$arr_insert);
		 endforeach;
		// show_array($arr);
		// show_array($arr_hitung);
		// show_array($arr_nilai_p);
		 $data_array['arr_nilai_p'] = $arr_nilai_p;
		 $data_array['arr'] = $arr;
		 $data_array['arr_hitung'] = $arr_hitung;
		 $data_array['post'] = $post;

		 $this->db->select("p.*, s.skor")
		 ->from("penyakit p")
		 ->join("tmp s","p.id = s.id_penyakit");

		 $this->db->order_by("skor","desc");
		 $data_array['rec_hasil'] = $this->db->get();
		 $data_array['post'] = $post;

		 $content = $this->load->view($this->controller."_view_result",$data_array,true);


		 $gejala = $post['id_gejala'];

 		 unset($post['id_gejala']);
 		 $dp['tanggal'] = date("Y-m-d");
 		 $dp['user_id'] = $_SESSION['userdata'][0]['id'];

 		 $this->db->insert("pemeriksaan",$dp);
 		 $id_pemeriksaan = $this->db->insert_id();

 		 $_SESSION['pemeriksaan_id'] = $id_pemeriksaan;

 		 foreach($gejala as $id_gejala) : 
 		 	$arr_insert = array("id_pemeriksaan"=>$id_pemeriksaan,
 		 						"id_gejala"=>$id_gejala);
 		 	$this->db->insert("pemeriksaan_detail",$arr_insert);
 		 endforeach;


		// $this->set_title("KONSULTASI PENYAKIT MATA");
		// $this->set_content($content);
		// $this->render();
 		 redirect("konsultasi/detail/$id_pemeriksaan");

	}

// function list(){
// 	echo "flow";
// }
function listview(){

$data_array = array();

$this->db->select('p.*,u.nama,u.umur,u.jk,u.alamat')
->from('pemeriksaan p')
->join('pengguna u','p.user_id = u.id');
$this->db->order_by("tanggal","desc");

if($_SESSION['userdata'][0]['level'] == 0 ) {
	$this->db->where("p.user_id",$_SESSION['userdata'][0]['id']);
}

$data_array['rec_pemeriksaan'] = $this->db->get();



$content = $this->load->view($this->controller."_list_view",$data_array,true);

$this->set_title("DATA KONSULTASI PEMERIKSAAN");
$this->set_content($content);
$this->render();

}

function detail($id){
	// echo "id " . $id; exit;
	$_SESSION['pemeriksaan_id'] = $id;
	$this->db->where("id",$id);
	$dp = $this->db->get("pemeriksaan")->row_array();

	$this->db->where("id_pemeriksaan",$id);
	$res  = $this->db->get("pemeriksaan_detail");
	$gejala = array();
	foreach($res->result() as $row): 
		$gejala[] = $row->id_gejala;
	endforeach;




		$this->db->order_by("kode");
		 $res = $this->db->get("penyakit");
$jml_penyakit = $res->num_rows();
		$arr = array();

		 $arr_hitung = array();
		 $arr_nilai_p = array();

		 $this->db->query("delete from tmp");

$jml_gejala = $this->db->get("gejala")->num_rows();
		 foreach($res->result() as $row) : 

		 	// $arr[$row->id] = array();
		 	$sum = (1/$jml_penyakit);
		 	//echo "sum awal $sum <br />";
		 	 foreach($gejala as $id_gejala) : 
		 	 	$this->db->where("id_gejala",$id_gejala);
		 	 	$this->db->where("id_penyakit",$row->id);
		 	 	$jumlah  = $this->db->get("pengetahuan")->num_rows();
		 	 	$arr[$row->id][$id_gejala] = $jumlah;

		 	 	$arr_hitung[$row->id][$id_gejala] = 
		 	 	($jumlah + ($jml_gejala * (1/$jml_penyakit)) )  / (1+$jml_gejala);

		 	 	// $arr_nilai_p[$row->id] = $sum
		 	 	$p = $arr_hitung[$row->id][$id_gejala];

		 	 	 $sum = $sum *  $p;

		 	 	// echo "$p  <br />";
		 	 	// echo "$sum = $sum *  $arr_hitung['$row->id']['$id_gejala']";


		 	 endforeach;
		 	 // echo "$sum <hr />";
		 	 $arr_nilai_p[$row->id] =$sum;  
		 	 $arr_insert = array("id_penyakit"=>$row->id, "skor"=>$arr_nilai_p[$row->id]);
		 	 $this->db->insert("tmp",$arr_insert);
		 endforeach;
		// show_array($arr);
		// show_array($arr_hitung);
		// show_array($arr_nilai_p);
		 $data_array['arr_nilai_p'] = $arr_nilai_p;
		 $data_array['arr'] = $arr;
		 $data_array['arr_hitung'] = $arr_hitung;
		 

		 $this->db->select("p.*, s.skor")
		 ->from("penyakit p")
		 ->join("tmp s","p.id = s.id_penyakit");

		 $this->db->order_by("skor","desc");
		 $data_array['rec_hasil'] = $this->db->get();






	$data_array['post'] = $dp;
	$data_array['post']['id_gejala'] = $gejala;
	$data_array['pemeriksaan_id'] = $id;

	$content = $this->load->view($this->controller."_view_result",$data_array,true);
$this->set_title("KONSULTASI PENYAKIT MATA");
		$this->set_content($content);
		$this->render();


}

function savekonsultasi(){

	$post = $this->input->post();
	$post['user_id'] = $_SESSION['userdata'][0]['id'];
	$post['waktu'] = date("Y-m-d h:i:s");
	$post['pemeriksaan_id'] = $_SESSION['pemeriksaan_id'];

	// show_array($post);
	$res = $this->db->insert("konsultasi",$post);
	// echo $this->db->last_query();
	$ret = array("message"=>"Pesan berhasil dikirim","id"=>$_SESSION['pemeriksaan_id']);
	echo json_encode($ret);
}

function get_conv(){

	$this->db->select('k.*, u.nama,u.level')
	->from('konsultasi k')
	->join('pengguna u','u.id=k.user_id');
	$this->db->order_by("waktu","asc");
	$this->db->where("pemeriksaan_id",$_SESSION['pemeriksaan_id']);
	$res = $this->db->get();
	$arr['record'] = $res; 
	$this->load->view("konsultasi_view_conv",$arr);


}



}

?>
