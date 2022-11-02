<!DOCTYPE html>
<html lang="en">
<head>
	<?php $this->load->view('partials/head.php') ?>
	    <style>
        .removeRow
{
 background-color: #D1D1D1;
    color:#FFFFFF;
}
    /* The container */
    .container12 {
      display: block;
      position: relative;
      padding-left: 35px;
      margin-bottom: 6px;
      cursor: pointer;
      font-size: 22px;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
    }

    /* Hide the browser's default checkbox */
    .container12 input {
      position: absolute;
      opacity: 0;
      cursor: pointer;
      height: 0;
      width: 0;
    }

    /* Create a custom checkbox */
    .checkmark {
      position: absolute;
      top: 0;
      left: 0;
      height: 15px;
      width: 15px;
      background-color: #eee;
    }

    /* On mouse-over, add a grey background color */
    .container12:hover input ~ .checkmark {
      background-color: #ccc;
    }

    /* When the checkbox is checked, add a blue background */
    .container12 input:checked ~ .checkmark {
      background-color: #2196F3;
    }

    /* Create the checkmark/indicator (hidden when not checked) */
    .checkmark:after {
      content: "";
      position: absolute;
      display: none;
    }

    /* Show the checkmark when checked */
    .container12 input:checked ~ .checkmark:after {
      display: block;
    }

    /* Style the checkmark/indicator */
    .container12 .checkmark:after {
      left: 3px;
      top: 1px;
      width: 5px;
      height: 10px;
      border: solid white;
      border-width: 0 3px 3px 0;
      -webkit-transform: rotate(25deg);
      -ms-transform: rotate(25deg);
      transform: rotate(25deg);
    }

    </style>

  
</head>

<body id="page-top">
	<div id="wrapper">
		<!-- load sidebar -->
		

		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content" data-url="<?= base_url('pengeluaran') ?>">
				<!-- load Topbar -->
				<?php $this->load->view('partials/topbar.php') ?>

				<div class="container-fluid">
				<div class="clearfix">
					<div class="float-left">
						<h1 class="h3 m-0 text-gray-800"><?= $title ?></h1>
					</div>
					<div class="float-right">
					
				     <button  class="btn btn-secondary btn-sm" onclick="history.back()"><i class="fa fa-reply"></i> &nbsp;&nbsp;Kembali</button> 
					</div>
				</div>
				<hr>
				<?php if ($this->session->flashdata('success')) : ?>
					<div class="alert alert-success alert-dismissible fade show" role="alert">
						<?= $this->session->flashdata('success') ?>
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
				<?php elseif($this->session->flashdata('error')) : ?>
					<div class="alert alert-danger alert-dismissible fade show" role="alert">
						<?= $this->session->flashdata('error') ?>
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
				<?php endif ?>
				<div class="card shadow">
					<div class="card-header"><strong><?= $title ?> - <?= $hd_pr->created_po ?>, <?= $hd_pr->createdtime_po ?></strong>
					      <div class="float-right">
					<a href="<?= base_url('pembelian/list_permintaan') ?>" class="btn btn-info btn-sm"><i class="fa fa-list"></i>&nbsp;&nbsp;List Permintaan </a>
				</div></div>
					<div class="card-body">
						<div class="row">
							<div class="col-md-5">
									<div class="table-responsive">
								<table class="table table-borderless">
									<tr>
										<td><strong>No </strong></td>
										<td width="5">:</td>
										<?php if($hd_pr->status_po == '6' or $hd_pr->status_po == '7' or $hd_pr->status_po == '8'):?>
										<td><?= $hd_pr->number_ ?></td>
									<?php else:?>
									<td><?= $hd_pr->number_pr ?></td>
										<?php endif;?>
									</tr>
									<tr>
										<td><strong>Tanggal</strong></td>
										<td>:</td>
										<td><?= $hd_pr->transDate ?></td>
									</tr>
									<tr>
										<td><strong>Project</strong></td>
										<td>:</td>
										<td><?= $hd_pr->nama_project ?></td>
									</tr>
									<tr>
										<td><strong>Status</strong></td>
										<td>:</td>
										<td>     <?php $status_pr = $hd_pr->status_po  ?>
                                            <?php if ($status_pr == 1):?>
                                              <span class="badge badge-warning">PR- Menunggu Approval PM </span>
                                            <?php endif;?>
                                            <?php if ($status_pr == 2):?>
                                              <span class="badge badge-info">PR- Menunggu Approval Estimator </span>
                                            <?php endif;?>
                                            <?php if ($status_pr == 3):?>
                                            <span class="badge badge-info">Purchasing Mencari Supplier </span>
                                            <?php endif;?>
                                            <?php if ($status_pr == 4):?>
                                            <span class="badge badge-info">PR Settle -Menunggu Approval Estimator </span>
                                            <?php endif;?>
                                            <?php if ($status_pr == 5):?>
                                            <span class="badge badge-primary">PR Settle- Menunggu Approval Direksi</span>
                                            <?php endif;?>
                                            <?php if ($status_pr == 6):?>
                                            <span class="badge badge-primary">Menunggu Barang dikirim dari supplier</span>
                                            <?php endif;?>
                                            <?php if ($status_pr == 7):?>
                                            <span class="badge badge-success">Barang sudah diterima</span>
                                            <?php endif;?>
                                            <?php if ($status_pr == 8):?>
                                            <span class="badge badge-danger">Barang direject</span>
                                            <?php endif;?>
                                          <?php if ($status_pr == 9):?>
                                            <span class="badge badge-secondary">Klaim, Barang Tidak Sesuai</span>
                                            <?php endif;?>
                                            <?php if ($status_pr == 10):?>
                                            <span class="badge badge-info">Proses Pengiriman Ulang </span>
                                            <?php endif;?></td>
									</tr>
									<?php if (!empty($hd_pr->vendorNo)):?>
									<tr>
										<td><strong>Pemasok</strong></td>
										<td>:</td>
										<td><?= $hd_pr->vendorNo ?></td>
									</tr><?php endif ;?>
									<?php if($hd_pr->status_po == 7):?>     

                  <tr>
                    <td ><strong> Surat Jalan </strong></td>
                    <td >:</td>
                    <td><a target="blank" href="<?php echo base_url(); ?>img/uploads/<?= $hd_pr->surat_jalan ?>" class="btn btn-primary btn-sm"><i class="fa fa-file"></i>&nbsp;Lihat</a></td>
                  </tr>
                  <tr>
                    <td ><strong> Penerima </strong></td>
                    <td >:</td>
                    <td><?= $hd_pr->update_po_by ?></td>
                  </tr>
                  <tr>
                    <td ><strong> Waktu </strong></td>
                    <td >:</td>
                    <td><?= $hd_pr->updateTime_po ?></td>
                  </tr>
								<?php endif;?>
								</table></div>
							</div>
							
							<div class="col-md-7">
								<div class="table-responsive">
								<table class="table table-bordered">
									<thead>
										<tr>
											<td width="155" ><font size="2">Waktu</font></td>
											<td width="250"><font size="2">Keterangan</font></td>
											<td width="200"><font size="2">Nama</font></td>
										</tr>
									</thead>
									<tbody>
									<?php foreach ($his_pr as $row): ?>
											<tr>
												<td><font size="2"><?= $row->actiontime ?></font></td>
												<td><font size="2"><?= $row->status ?></font> </td>
												<td><font size="2"><?= $row->action_by ?></font> </td>
											</tr>
									<?php endforeach ?>
									</tbody>
								</table></div>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-md-12">
								<div class="table-responsive">
								<table class="table table-bordered">
									<thead>
										<tr>
											
												<th width="5%">
													<?php if($hd_pr->status_po == 7):?>
													<button type="button" disabled  name="delete_all" id="delete_all" class="btn btn-danger btn-xs"><font size="2px">Delete</font></button>
												<?php else:?>
													<button type="button"  name="delete_all" id="delete_all" class="btn btn-danger btn-xs"><font size="2px">Delete</font></button>
												<?php endif;?>

												</th>
											<td width="10"><strong>Id</strong></td>
											<td><strong>Nama Barang</strong></td>
											<td width="10"><strong>Jumlah</strong></td>
											<td><strong>Keterangan</strong></td>
											
											<td width="150"><strong>Harga</strong></td>
											<td width="50"><strong>Disc %</strong></td>
											<td width="150"><strong>Total Harga</strong></td>
											
											<td width="100"><strong>Aksi</strong></td>
											</td>
										</tr>
									</thead>
									<tbody>
										<?php foreach ($dt_pr as $row): ?>
											<tr>
												
												<td align="center"><input type="checkbox" class="delete_checkbox_daily" value="<?php echo $row->id_dt ; ?>" /></td>
												<td><?= $row->id_dt ?></td>
												<td><?= $row->detailName ?></td>
												<td align="center"><?= $row->quantity ?></td>
												<td><?= $row->detailNotes ?></td>
								
												<td>
													<?php if(!empty($row->unitPrice)):?>
													<?php
                                                 $hasil_rupiah = "Rp " . number_format($row->unitPrice,0,',','.');
                                                  echo $hasil_rupiah; ?> <?php endif;?>
												</td>
												<td><?= $row->itemDiscPercent ?></td>
												<td> 
													<?php if(!empty($row->unitPrice)):?>
													<?php 
													
													if (!empty($row->itemDiscPercent)) {
														$disc = $row->itemDiscPercent;
													}else{
														$disc = 0;
													}
												$harga = $row->unitPrice * $row->quantity;
												
												$hasilnya_disc = $harga * $disc / 100 ;
												$total_harga = $harga - $hasilnya_disc;
												
												$hasil_rupiah = "Rp " . number_format($total_harga,0,',','.');
                                                  echo $hasil_rupiah;
												?><?php endif;?>
													
												</td>
												
												<td><a  data-toggle="modal" style="color:white" data-target="#right_modalupdate<?php echo $row->id_dt ; ?>" class="btn btn-success btn-sm"><i class="fa fa-eye"></i>&nbsp;&nbsp;Ubah</a> </td>
											</tr>
<!-- modal update System -->
<div  class="modal modal-right fade" id="right_modalupdate<?php echo $row->id_dt; ?>" tabindex="-1" role="dialog" aria-labelledby="right_modal">
  <div class="modal-dialog modal-small" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Update Detail PR <?php echo $row->id_dt; ?></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div> 
<form action="<?= base_url('pembelian/ubah_pr_dt') ?>" enctype="multipart/form-data" id="from2" method="POST">
      <div class="modal-body">
                                 <!-- Content Column -->

                        <div class="col-lg-12 mb-4">

                            <!-- Project Card Example -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                  
                                </div>
                                <div class="card-body">
                         
                            <div class="form-group col-md-12">
                                            <label for="nama_barang"><span class="badge badge-success">Nama Barang </span></label>
                                             <input  type="text" maxlength="50"  name="detailName" placeholder="Masukkan Nama Lengkap" autocomplete="off" value="<?php echo $row->detailName; ?>"  class="form-control">
                                </div>
                                <div class="form-group col-md-12">
                                            <label for="nama_barang"> <span class="badge badge-success">Jumlah</span></label>
                                             <input  type="number" maxlength="50"  name="quantity" placeholder="Masukkan Nama Lengkap" autocomplete="off" value="<?php echo $row->quantity; ?>"  class="form-control">
                                </div>
                                <div class="form-group col-md-12">
                                            <label for="nama_barang"> <span class="badge badge-success">Keterangan</span></label>
                                            <textarea class="form-control" name="detailNotes"><?php echo $row->detailNotes; ?></textarea>
                                  
                                </div> 
                              <?php if(!empty($row->unitPrice)):?>  
                              <div class="form-group col-md-12">
                                            <label for="nama_barang"><span class="badge badge-success">Harga </span></label>
                                             <input  type="text" maxlength="50" onkeypress="return hanyaAngka(event)" name="unitPrice" placeholder="Harga" autocomplete="off" value="<?php echo $row->unitPrice; ?>"  class="form-control">
                                </div>

                                <div class="form-group col-md-12">
                                            <label for="nama_barang"><span class="badge badge-success">Disc % </span></label>
                                             <input  type="number" maxlength="50"  name="itemDiscPercent" placeholder="%" autocomplete="off" value="<?php echo $row->itemDiscPercent; ?>" min="0" class="form-control">
                                </div><?php endif ?>
                               <input type="text" name="id_header" placeholder="Id HD" autocomplete="off"  class="form-control"  value="<?php echo $row->id_hd; ?>" hidden>
                               <input type="text" name="id_dt" placeholder="Id HD" autocomplete="off"  class="form-control"  value="<?php echo $row->id_dt; ?>" hidden>
                               <input type="text" name="no_po" placeholder="Id HD" autocomplete="off"  class="form-control"  value="<?php echo $row->number_; ?>" hidden>

                                <input type="text" name="createdby" placeholder="Masukkan Kode Barang" autocomplete="off"  class="form-control" required value="<?= $this->session->login['nama'] ?>" maxlength="8" hidden>

                                <input type="text" id="datepicker" name="timeupdate_pay" value="<?php date_default_timezone_set('Asia/Jakarta');
                                        echo date('Y-m-d H:i:s');
                                        ?>"  class="form-control" hidden>

                                        <hr>

       <div class="form-group col-12">
       														<?php if($hd_pr->status_po == 7):?>
                                        <button type="submit" disabled class="btn btn-success"><i class="fa fa-check"></i>&nbsp;&nbsp;PO Telah Selesai</button>
                                  <?php else:?>
																			<button type="submit" class="btn btn-primary"><i class="fa fa-save"></i>&nbsp;&nbsp;Update</button>
                                <?php endif;?>
                                    </div>
                                </div>
                                    <hr>
                                </div>
                            </div>

                            <!-- Color System -->
                             <div class="modal-footer modal-footer-fixed">
       <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

                        </div>
        </div></form>
  

    </div>
  </div>
</div>
										<?php endforeach ?>
									</tbody>
								</table> </div>

							</div>
<div class="form-group col-12">
	 <div class="bg-light text-right">
<form  enctype="multipart/form-data" id="from1" method="POST">

 <!--  data untuk update database lokal  action="<?= base_url('pembelian/proses_approve_pr') ?>" -->
 <input type="text" name="id" placeholder="" autocomplete="off"  class="form-control"  value="<?php echo $hd_pr->id; ?>" >
<input type="text" name="status_po" placeholder="" autocomplete="off"  class="form-control"  value="6" >
	<input type="text" name="status" placeholder="" autocomplete="off"  class="form-control"  value="Approved Direksi" > 
<input type="text" name="number_" placeholder="" autocomplete="off"  class="form-control"  value="<?php echo $hd_pr->number_; ?>" ><!--  data untuk update database lokal  -->

	<!-- mulai data header untuk integrasi dengan accurate -->	
<input type="text" name="number" placeholder="" autocomplete="off"  class="form-control"  value="<?php echo $hd_pr->number_; ?>" id="number"> <!-- nomor po, accurate parameter = number  -->
<input type="text" name="transDate" placeholder="" autocomplete="off"  class="form-control"  value="<?php echo date('d/m/Y', strtotime($hd_pr->transDate)); ?>" id="transDate"> <!-- transDate, accurate parameter = transDate  -->
<input type="text" name="vendorNo" placeholder="" autocomplete="off"  class="form-control"  value="<?php echo $hd_pr->vendorNo; ?>" id="vendorNo"> <!-- vendorNo, accurate parameter = vendorNo  -->
<input type="text" name="toAddress" placeholder="" autocomplete="off"  class="form-control"  value="<?php echo $hd_pr->toAddress; ?>" id="toAddress"> <!-- toAddress, accurate parameter = toAddress  -->
<input type="text" name="description" placeholder="" autocomplete="off"  class="form-control"  value="-" id="description"> <!-- toAddress, accurate parameter = description  -->

	<!-- mulai data detail untuk integrasi dengan accurate -->	
<?php foreach ($dt_pr as $row): ?>
<input type="text" name="detailItem[0].detailName" placeholder="" autocomplete="off"  class="form-control"  value="<?php echo $row->detailName; ?>" id="detailName"> <!-- detailName, accurate parameter = detailItem[n].detailName  -->
<input type="text" name="detailItem[0].unitPrice" placeholder="" autocomplete="off"  class="form-control"  value="<?php echo $row->unitPrice; ?>" id="unitPrice"> <!-- detailItem[0].unitPrice, accurate parameter = detailItem[0].unitPrice  -->
<input type="text" name="detailItem[0].itemNo" placeholder="" autocomplete="off"  class="form-control"  value="<?php echo $row->itemNo; ?>" id="itemNo"> <!-- itemNo, accurate parameter = detailItem[0].itemNo  -->
<input type="text" name="detailItem[0].quantity" placeholder="" autocomplete="off"  class="form-control"  value="<?php echo $row->quantity; ?>" id="quantity"> <!-- quantity, accurate parameter = detailItem[0].quantity  -->
<input type="text" name="detailItem[0].detailNotes" placeholder="" autocomplete="off"  class="form-control"  value="<?php echo $row->detailNotes; ?>" id="detailNotes"> <!-- detailNotes, accurate parameter = detailItem[0].detailNotes  -->
<input type="text" name="detailItem[0].itemDiscPercent" placeholder="" autocomplete="off"  class="form-control"  value="<?php echo $row->itemDiscPercent; ?>" id="itemDiscPercent"> <!-- detailNotes, accurate parameter = detailItem[0].itemDiscPercent  -->
<?php endforeach ?>
	<!-- selesai data detail untuk integrasi dengan accurate -->	

	<?php  	$cek_jabatan 	= $this->session->login['jabatan'];
	$cek_status_pr 	= $hd_pr->status_po; ?>
	<?php if($cek_jabatan == 'Direktur' and $cek_status_pr == 5):?>
 
	<button type="submit"  id="simpan" class="btn btn-primary"><i class="fa fa-save"></i>&nbsp;&nbsp;Direksi Approve</button>
	 <?php endif;?>	
 </form>
</div>
 </div>
						</div>
					</div>
				</div>
				</div>
			</div>
			<!-- load footer -->
			<?php $this->load->view('partials/footer.php') ?>
		</div>
	</div>
	<?php $this->load->view('partials/js.php') ?>
	<script src="<?= base_url('sb-admin/js/demo/datatables-demo.js') ?>"></script>
	<script src="<?= base_url('sb-admin') ?>/vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="<?= base_url('sb-admin') ?>/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	  <script type="text/javascript">
$(document).ready(function(){

    $('#simpan').on('click', function(){
         //$(this).find('form').trigger('reset');

  var input = $('#from1').serialize();

  $.ajax({
      url: 'https://zeus.accurate.id/accurate/api/purchase-order/save.do?access_token=faf05a07-296a-4894-ad5d-05b8fae0d2ed&session=ae6a08e1-d41e-4138-9ec2-cffee26af3b3',
      type: 'POST',
     	data: JSON.stringify(input),
      mode: 'no-cors',
      dataType : 'JSON',
  //    contentType: 'application/json; charset=utf-8',
      success:function(data){
       console.log(data)
      } 
   })
 })
});

</script>

		<script>
$(document).ready(function(){
 
 $('.delete_checkbox_daily').click(function(){
  if($(this).is(':checked'))
  {
   $(this).closest('tr').addClass('removeRow');
  }
  else
  {
   $(this).closest('tr').removeClass('removeRow');
  }
 });

 $('#delete_all').click(function(){
  var checkbox = $('.delete_checkbox_daily:checked');
  if(checkbox.length > 0)
  {
   var checkbox_value = [];
   $(checkbox).each(function(){
    checkbox_value.push($(this).val());
   });
   $.ajax({
    url:"<?php echo base_url(); ?>user/pembelian/delete_detail_pr",
    method:"POST",
    data:{checkbox_value:checkbox_value},
    success:function()
    {
     $('.removeRow').fadeOut(1500);
    }
   })
  }
  else
  {
   alert('Select atleast one records');
  }
 });

});
</script>
 <script>
    document.querySelector('#from1').addEventListener('submit', function(e) {
      var form = this;
      
      e.preventDefault();
      
      swal({
          title: "Are you sure?",
          text: "PR akan diubah Menjadi PO setelah Setujui!",
          icon: "warning",
          buttons: [
            'No, cancel it!',
            'Yes, I am sure!'
          ],
          dangerMode: true,
        }).then(function(isConfirm) {
          if (isConfirm) {
            swal({
              title: 'Success!',
              text: 'PR Diubah Menjadi PO, Approved!',
              icon: 'success'
            }).then(function() {
              form.submit();
            });
          } else {
            swal("Cancelled", "PR tidak ada perubahan :)", "error");
          }
        });
    });
  </script>
   <script>
    document.querySelector('#from2').addEventListener('submit', function(e) {
      var form = this;
      
      e.preventDefault();
      
      swal({
          title: "Are you sure?",
          text: "Data PR akan diubah!",
          icon: "warning",
          buttons: [
            'No, cancel it!',
            'Yes, I am sure!'
          ],
          dangerMode: true,
        }).then(function(isConfirm) {
          if (isConfirm) {
            swal({
              title: 'Success!',
              text: 'PR Detail Berhasil diubah!',
              icon: 'success'
            }).then(function() {
              form.submit();
            });
          } else {
            swal("Cancelled", "Data tidak diupdate :)", "error");
          }
        });
    });
  </script>
  

</body>
</html>