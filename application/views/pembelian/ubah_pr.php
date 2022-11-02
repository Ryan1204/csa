<!DOCTYPE html>
<html lang="en">
<head>
    <?php $this->load->view('partials/head.php') ?>

</head>

<body id="page-top">
    <div id="wrapper">
        <!-- load sidebar -->
        <?php $this->load->view('partials/sidebar.php') ?>

        <div id="content-wrapper" class="d-flex flex-column">
            <div id="content" data-url="<?= base_url('mom/lihat_semua') ?>">
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
                <div class="row">
                    <div class="col-md-12">
                        <div class="card shadow">
                            <div class="card-header"><strong>Isi Form Dibawah Ini!</strong></div>
                            <div class="card-body">
    <form action="<?= base_url('pembelian/save_pr_sattle') ?>" id="form" method="POST" enctype="multipart/form-data">
 <input type="text" readonly name="id" value="<?= $hd_pr->id ?>"  class="form-control" hidden>
  <input type="text" readonly name="status_po" value="4"  class="form-control" hidden>
                                <div class="form-row">
                                        <div class="form-group col-3">
                                        <label>Tanggal</label>
                                        <input type="text" readonly name="transDate" value="<?= $hd_pr->transDate ?>"  class="form-control">
                                            </div>
                                    <div class="form-group col-3">
                                        <label>No</label>
                                        <input type="text" readonly name="number_" value="<?= $hd_pr->number_ ?>"  class="form-control">
                                            </div>
             <div class="form-group col-3" id="vendor">
            <label>Proyek</label>    
            <input type="text" readonly name="project" value="<?= $hd_pr->nama_project ?>"  class="form-control">
             </div>
        <div class="form-group col-3" id="vendor">
            <label>Pemasok</label>    
            <input type="text"  name="vendorNo" value="<?= $hd_pr->nama_project ?>"  class="form-control">
        </div>
    <input type="text" hidden name="toAddress" value="-"  class="form-control">

<?php foreach ($dt_pr as $row): ?>
    <div class="form-group col-4" id="vendor">
            <label>Nama Barang</label>    
            <input type="text"  name="detailName[]" value="<?= $row->detailName ?>"  class="form-control">
    </div>
    <div class="form-group col-1" id="vendor">
            <label>Jumlah</label>    
            <input type="text" onkeypress="return hanyaAngka(event)" name="quantity[]" value="<?= $row->quantity ?>"  class="form-control">
    </div>
    <div class="form-group col-4" id="vendor">
            <label>Harga</label>    
            <input type="text" onkeypress="return hanyaAngka(event)" placeholder="Harga satuan" name="unitPrice[]" value="<?= $row->unitPrice ?>"  class="form-control">
    </div>
        <div class="form-group col-3" id="vendor">
            <label>Diskon %</label>    
            <input type="number" onkeypress="return hanyaAngka(event)" name="itemDiscPercent[]" value="<?= $row->itemDiscPercent ?>" min='0' class="form-control" placeholder="0" >
    </div>
     <input type="text"  name="detailNotes[]" value="<?= $row->detailNotes ?>"  class="form-control" hidden>
     <input type="text"  name="itemNo[]" value="<?= $row->itemNo ?>"  class="form-control" hidden> 
     <input type="text"  name="id_dt[]" value="<?= $row->id_dt ?>"  class="form-control" hidden> 
    <?php endforeach ?>
                                    </div>



                    <input type="text" name="ket" placeholder="Masukkan Kode Barang" autocomplete="off"  class="form-control" required value="Tambah M O M" maxlength="8" hidden>
                    <input type="hidden" name="user" value="<?php echo  $this->session->login['nama'] ?>">
                    <input type="hidden" name="waktu" value="<?php date_default_timezone_set('Asia/Jakarta'); echo date('Y-m-d  H:i:s'); ?>">                                   
                        
                                    <div class="form-row">
                        
                                    <hr>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i>&nbsp;&nbsp;Simpan</button>
                                        <button type="reset" class="btn btn-danger"><i class="fa fa-times"></i>&nbsp;&nbsp;Batal</button>
                                    </div>
                                </form>
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
    <script>
    document.querySelector('#form').addEventListener('submit', function(e) {
      var form = this;
      
      e.preventDefault();
      
      swal({
          title: "Are you sure?",
          text: "Data Tidak bisa diubah kembali!",
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
              text: 'Data Berhasil diubah!',
              icon: 'success'
            }).then(function() {
              form.submit();
            });
          } else {
            swal("Cancelled", "Data tidak ada perubahan :)", "error");
          }
        });
    });
  </script>
            <script>
        function hanyaAngka(evt) {
          var charCode = (evt.which) ? evt.which : event.keyCode
           if (charCode > 31 && (charCode < 48 || charCode > 57))
 
            return false;
          return true;
        }
    </script>
    <?php $this->load->view('partials/js.php') ?>

</body>
</html>