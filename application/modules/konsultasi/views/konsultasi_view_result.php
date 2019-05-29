<div class="card">
<div class="card-header">
	<h3 class="card-title">DATA PASIEN </h3>
</div>
<div class="card-body">

<div class="row">
	<div class="col-md-3"><strong> Nama Pasien </strong></div>
	<div class="col-md-3">: <?php echo $_SESSION['userdata'][0]['nama']; ?> </div>

	<div class="col-md-3"><strong> Umur Pasien </strong></div>
	<div class="col-md-3">: <?php echo $_SESSION['userdata'][0]['umur']; ?> Tahun </div>

	<div class="col-md-3"><strong> JK </strong></div>
	<div class="col-md-3">: <?php echo $_SESSION['userdata'][0]['jk']; ?> </div>

	<div class="col-md-3"><strong> No. HP </strong></div>
	<div class="col-md-3">: <?php echo $_SESSION['userdata'][0]['hp']; ?> </div>

	<div class="col-md-3"><strong> Alamat </strong></div>
	<div class="col-md-3">: <?php echo $_SESSION['userdata'][0]['alamat']; ?> </div>

</div>

 

</div>	
</div> 



 





<div class="card">
<div class="card-header">
	<h3 class="card-title">HASIL PERHITUNGAN   </h3>
</div>
								


<div class="table-responsive">
	<table id="tabel" class="table card-table table-vcenter text-nowrap">

<thead >
		
		<tr><th>NO. </th>
			<th > PENYAKIT </th>
			<th > SCORE </th>
		</tr>
		 
</thead>

<tbody>

<?php
$nn=0; 
foreach($rec_hasil->result() as $row ): 
	$nn++;
?>
<tr>
	<TD><?php echo $nn; ?> </TD>
<td><?php echo $row->kode." ".$row->penyakit;  ?></td>
<td><?php echo $row->skor;  ?></td>	 

</tr>
<?php endforeach; ?>

		</tbody>
	</table>
</div>
</div> <!-- card --> 




<div class="card">
	<div class="card-header">
		<h3 class="card-title">RINCIAN TABEL PERHITUNGAN</h3>
	</div>
	<div class="card-body">
		<div class="panel-group1" id="accordion1">
			<div class="panel panel-default mb-4">
				<div class="panel-heading1 ">
					<h4 class="panel-title1">
						<a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false">PENJABARAN GEJALA PENYAKIT</a>
					</h4>
				</div>
				<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
					<div class="panel-body">
						<div class="card">
<div class="card-header">
	<h3 class="card-title">PENJABARAN GEJALA PENYAKIT</h3>
</div>
								


<div class="table-responsive">
	<table id="tabel" class="table card-table table-vcenter text-nowrap">

<thead >
		
		<tr>
			<th rowspan="2"> PENYAKIT </th>
			<th style="text-align: center;" colspan="<?php echo count($post['id_gejala']); ?>"> GEJALA </th>
		</tr>
		<tr>
			<?php 
			$x = array(1=>"0",2=>"");
			foreach($post['id_gejala'] as $gejala) : 
			?>
			<th>
				G<?php echo $x[strlen($gejala)].$gejala; ?>
			</th>

		<?php endforeach; ?>
		</tr>
</thead>

<tbody>

<?php 
foreach($arr as $id => $arr_gejala): 
?>
<tr>
<td>P<?php echo $x[strlen($id)].$id ?></td>
	<?php 
		foreach($arr_gejala as $kode => $skor) : 
	?>
			<td> <?php echo $skor ?> </td>
	<?php endforeach; ?>

</tr>
<?php endforeach; ?>

		</tbody>
	</table>
</div>
</div> <!-- card --> 
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading1">
					<h4 class="panel-title1">
						<a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false">TABEL PERHITUNGAN </a>
					</h4>
				</div>
				<div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
					<div class="panel-body">
						 

						 <div class="card">
<div class="card-header">
	<h3 class="card-title">TABEL PERHITUNGAN </h3>
</div>
								


<div class="table-responsive">
	<table id="tabel" class="table card-table table-vcenter text-nowrap">

<thead >
		
		<tr>
			<th rowspan="2"> PENYAKIT </th>
			<th style="text-align: center;" colspan="<?php echo count($post['id_gejala']); ?>"> GEJALA </th>
		</tr>
		<tr>
			<?php 
			// $x = array(1=>"0",2=>"");
			foreach($post['id_gejala'] as $gejala) : 
			?>
			<th>
				G<?php echo $x[strlen($gejala)].$gejala; ?>
			</th>

		<?php endforeach; ?>
		</tr>
</thead>

<tbody>

<?php 
foreach($arr_hitung as $id => $arr_gejala): 
?>
<tr>
<td>P<?php echo $x[strlen($id)].$id ?></td>
	<?php 
		foreach($arr_gejala as $kode => $skor) : 
	?>
			<td> <?php echo number_format($skor,4); ?> </td>
	<?php endforeach; ?>

</tr>
<?php endforeach; ?>

		</tbody>
	</table>
</div>
</div> <!-- card --> 




					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- kONSULTASI = --> 
<div class="card">
<div class="card-header">
	<h3 class="card-title">KONSULTASI DENGAN PAKAR </h3>
</div> 
<div class="card-body">
	
	<div id="conversation">
	</div>


	<div class="formulir">
		<form id="frmkonsultasi" method="post">
			<div class="form-group">
				<label for="pesan"><strong>Pesan anda : </strong> </label>
				<textarea rows="5" class="form-control" name="pesan" id="pesan"></textarea>
			</div>
			<button class="btn btn-success"><i class="fa fa-paper-plane"></i> Kirim </button>
		</form>
	</div> 
</div>
</div>
							 

<script type="text/javascript">


function loadconv(){

	$.ajax({
		url : '<?php echo site_url("konsultasi/get_conv") ?>',
		success : function(htmldata) {
			$("#conversation").html(htmldata);
		}
	});
}



$(document).ready(function(){
	loadconv();
	$("#frmkonsultasi").submit(function(){
		$.ajax({
			url : '<?php echo site_url("$this->controller/savekonsultasi") ?>',
			data : $(this).serialize(),
			type : 'post',
			dataType : 'json',
			success : function(obj){
				swal.fire('Info',obj.message,'success').then((result) => {

					loadconv();
					$("#pesan").val('');

				}  );

			}
		});
		return false;
	});
});
</script>