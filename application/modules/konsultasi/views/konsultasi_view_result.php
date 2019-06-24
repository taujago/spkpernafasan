<style type="text/css">
	.merah {
		
		background-color: blue;
	}
	.kuning {
		background-color: green;
	}
</style>
<div class="card">
<div class="card-header">
	<h3 class="card-title">DATA DIAGNOSA </h3>
</div>
<div class="card-body">

<div class="row">
	<div class="col-md-3"><strong> Kode Pasien </strong></div>
	<div class="col-md-3">: <?php echo $userdata['kd_pasien']; ?> </div>
	<div class="col-md-3"><strong> Nama Pasien </strong></div>
	<div class="col-md-3">: <?php echo $userdata['nama']; ?> </div>

	<div class="col-md-3"><strong> Umur Pasien </strong></div>
	<div class="col-md-3">: <?php echo $userdata['umur']; ?> Tahun </div>

	<div class="col-md-3"><strong> JK </strong></div>
	<div class="col-md-3">: <?php echo $userdata['jk']; ?> </div>

	<div class="col-md-3"><strong> E-mail </strong></div>
	<div class="col-md-3">: <?php echo $userdata['email']; ?> </div>

	<div class="col-md-3"><strong> Alamat </strong></div>
	<div class="col-md-3">: <?php echo $userdata['alamat']; ?> </div>
	<div class="col-md-3"><strong> Tanggal Pemeriksaan </strong></div>
	<div class="col-md-3">: <?php echo flipdate($userdata['tanggal']); ?> </div>

</div>
<HR />

<div class="row">
	
<div class="col-md-12">

<strong>Gejala yang dialami : </strong> <br />
<ol>
	<?php foreach($rec_gejala_hasil->result() as $row): ?>
		<li><?php echo $row->kode." ".$row->gejala; ?></li>
	<?php endforeach; ?>
</ol>
 
<br />
<strong>Hasil Diagnosa </strong>
<br />
<strong>Nama Penyakit : </strong> <br />
<?php echo $penyakit->penyakit." ( $penyakit->keterangan ) "; ?>
<br /><br />
<strong>Pengobatan : </strong><br />
<?php echo $penyakit->pengobatan; ?>

</div>
<div class=" mt-5 col-md-12">
	<strong> Gambar : </strong><br />
	<?php 
		$image = (!empty($penyakit->gambar))?$penyakit->gambar:"noimage.png";

	?>
	<img width="200" height="200" src="<?php echo base_url("uploads/$image") ?>">
</div>

</div>	
</div>
</div> 



<div class="mt-5 table-responsive">

<!-- <table class="table table-bordered" >
	<tr>
		<?php foreach($rec_gejala_hasil->result() as $gj): ?>
			<td><?php echo $gj->kode." ".$gj->gejala; ?></td>
		<?php endforeach; ?>
	</tr>
	
</table> -->




<h3>HASIL PERHITUNGAN</h3>




	<table id="tabel" class="table table-bordered card-table table-vcenter text-nowrap">

<thead >
		
		<tr>
			<th rowspan="3" >NO. </th>
			<th rowspan="3" > ALTERNATIF </th>
			<th colspan="<?php echo count($data_gejala); ?>" > GEJALA DAN BOBOT </th>
			<th rowspan="3" > SKOR DAN BOBOT </th>
		</tr>
		<tr>
			<?php 
				foreach($data_gejala as $idg => $dg) : 

				$class = in_array($idg, $post['gejala_id'])?"merah":"";
			?>
				<th class="<?php echo $class; ?>"><?php echo $dg['kode'] ?></th>
			<?php endforeach; ?>
		</tr>

		<tr>
			<?php 
			$total_bobot = 0; 
				foreach($data_gejala as $dg) : 
				$total_bobot += $dg['bobot']; 
			?>
				<th><?php echo $dg['bobot'] ?></th>
			<?php endforeach; ?>
		</tr>
		 
</thead>
<TBODY>
	<?php 
	$n=0;
	foreach($arr_ref as $id => $row):
		$n++;
	?>
	<tr>
		<td>
			<?php echo $n; ?>
		</td>
		<td>
			<?php echo $row['nama']; ?>
		</td>
		<?php 
		// $total_bobot = 0;
		$total_jumlah = 0; 
		foreach($row['kemiripan'] as $id_gejala => $bobot ) :  
			// $total_bobot += empty($bobot)?"0":$bobot;
			$total_jumlah += $arr_ref[$id]['jumlah'][$id_gejala];

			$class = (in_array($id_gejala,$arr_ref[$id]['gejala']))?"kuning":"";

			?>
			<td class="<?php echo $class;  ?>"><?php echo empty($bobot)?"0":$bobot; ?> / 
				<?php echo  $arr_ref[$id]['jumlah'][$id_gejala]; ?>
			 </td>
		<?php endforeach; ?>
		<TD>
			<?php echo $total_jumlah."/".$total_bobot."=". ($total_jumlah/$total_bobot); ?>
		</TD>
	</tr>
	<?php endforeach; ?>
	
</TBODY>

<tbody>
 

		</tbody>
	</table>
</div>





<div class="card">
<div class="card-header">
	<h3 class="card-title">DATA KEMIRIPAN </h3>
</div>
<div class="card-body">
<table class="table table-striped">
	<thead>
		<tr>
			<th>No.</th>
			<TH>Nama Pasien</TH>
			<th>Range Nilai </th>
			<th>Kriteria</th>
		</tr>
	</thead>
	<tbody>
		<?php $n=0; 
		foreach($arr_hasil as $id => $bobot ) : 
		$n++; 
		?>
			<tr>
				<td><?php echo $n; ?> </td>
				<td><?php echo $arr_ref[$id]['nama']; ?></td>
				<td><?php echo number_format($bobot,2); ?></td>
				<td><?php echo $arr_ref[$id]['penyakit']; ?></td>
			</tr>
		<?php endforeach; ?>
	</tbody>
</table>
</div>
</div>
 



<!-- 

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
 

		</tbody>
	</table>
</div>
</div>  -->


 