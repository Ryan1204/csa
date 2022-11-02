<!DOCTYPE html>
<html lang="en">
<head>
	<?php $this->load->view('partials/head.php') ?>
    <script type="text/javascript">
// 1 detik = 1000
window.setTimeout("waktu()",1000);  
function waktu() {   
var tanggal = new Date();  
setTimeout("waktu()",1000);  
document.getElementById("jam").innerHTML = tanggal.getHours()+":"+tanggal.getMinutes()+":"+tanggal.getSeconds();
}
</script>
  <script language="JavaScript">
    var tanggallengkap = new String();
    var namahari = ("Minggu Senin Selasa Rabu Kamis Jumat Sabtu");
    namahari = namahari.split(" ");
    var namabulan = ("Januari Februari Maret April Mei Juni Juli Agustus September Oktober November Desember");
    namabulan = namabulan.split(" ");
    var tgl = new Date();
    var hari = tgl.getDay();
    var tanggal = tgl.getDate();
    var bulan = tgl.getMonth();
    var tahun = tgl.getFullYear();
    tanggallengkap = namahari[hari] + ", " +tanggal + " " + namabulan[bulan] + " " + tahun;
    </script>


    <style type="text/css">
      .leave_apps{
    list-style: none;  
    margin-left: -42px;
    margin-top: -9px;
}
.ex3 {
  height: 338px;
  width: auto;

  overflow-y: auto;
}
    </style>
</head>

<body id="page-top">
	<div id="wrapper">
		<!-- load sidebar -->
		<?php $this->load->view('partials/sidebar.php') ?>

		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content" data-url="<?= base_url('kasir') ?>">
				<!-- load Topbar -->
				<?php $this->load->view('partials/topbar.php', $this->data) ?>

				<div class="container-fluid">
					<div class="clearfix">
						<div class="float-left">
							<h1 class="h3 m-0 text-gray-800"> Welcome To ICOS</h1>
						</div>
                        <div class="float-right " id='jam'>
                           
                        </div>
                        <div class="float-right" >
                            <h1 class="h3 m-0 text-gray-800"><script language='JavaScript'>document.write(tanggallengkap);</script>
                        </div>
					</div>
				 <hr style="height:2px;border-width:0;color:red;background-color:#cacad3">
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
					               <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-12 col-md-6 mb-4">
                          <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Papan Pengumuman <i class="fa fa-bullhorn" style="color:red"></i></h6>
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                            aria-labelledby="dropdownMenuLink">
                                   
                                            <a class="dropdown-item" href="setting/tambah_p">Tambah</a>
                                            <a class="dropdown-item" href="setting/lihat_p">Lihat</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card Body -->
           <div class="card-body ex3">
             <table class="table table"  width="100%" cellspacing="0">
                 <thead>
                                <tr>
                                    <th width="200">Dibuat</th> 
                                    <th>Uraian</th>
                                                                            
                                </tr>
                            </thead>
                  <tbody>   

              </table>
                 

                                </div>
                            </div>
                        </div>

                    </div>
					<div class="row">

			            <!-- Earnings (Monthly) Card Example -->
	


                    </div> <!-- end hrms info -->
                   <div class="row">

                        <!-- Area Chart -->
                        <div class="col-xl-8 col-lg-5">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary"></h6>
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                            aria-labelledby="dropdownMenuLink">
                                            <div class="dropdown-header">Dropdown Header:</div>
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card Body -->
                           
                            </div>
                        </div>

                        <!-- Pie Chart -->
   
                    </div>
                    <div class="row">

                        <!-- Content Column -->
                        <div class="col-lg-8 mb-4">

                            <!-- Project Card Example -->
 

                            <!-- Color System -->


                        </div>

                        <div class="col-lg-4 mb-4">

                            <!-- Illustrations
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Illustrations</h6>
                                </div>
                                <div class="card-body">
         
              <table class="table table"  width="100%" cellspacing="0">
                 <thead>
                                <tr>
                                    <th >Asset</th>
                                    <th >Pajak</th>  
                                    <th>Masa Berlaku</th>                                            
                                </tr>
                            </thead>
                  <tbody>                                                        
                                    <tr>
                                        <td>c</td>
                                        <td>c</td>
                                        <td>c</td>                                                
                                    </tr>
                                   
                                                           
                        </tbody>
              </table>
                 
                                </div>
                            </div> --> 

                            <!-- Approach
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Development Approach</h6>
                                </div>
                                <div class="card-body">
                                    <p>SB Admin 2 makes extensive use of Bootstrap 4 utility classes in order to reduce
                                        CSS bloat and poor page performance. Custom CSS classes are used to create
                                        custom components and custom utility classes.</p>
                                    <p class="mb-0">Before working with this theme, you should become familiar with the
                                        Bootstrap framework, especially the utility classes.</p>
                                </div>
                            </div> -->

                        </div>
                    </div>
			    <!--    <div class="row">
			          	<div class="col-md-6">
							<div class="card shadow">
								<div class="card-header"><strong>Profil Toko</strong></div>
								<div class="card-body">
									<strong>Nama Toko : </strong><br>
									<input  type="text" value="<?= $toko->nama_toko ?>" readonly class="form-control mt-2 mb-2">
									<strong>Nama Pemilik : </strong><br>
									<input  type="text" value="<?= $toko->nama_pemilik ?>" readonly class="form-control mt-2 mb-2">
									<strong>No Telepon : </strong><br>
									<input  type="text" value="<?= $toko->no_telepon ?>" readonly class="form-control mt-2 mb-2">
									<strong>Alamat : </strong><br>
									<input  type="text" value="<?= $toko->alamat ?>" readonly class="form-control mt-2">
								</div>				
							</div>
			          	</div>
			          	<div class="col-md-6">
							<div class="card shadow">
								<div class="card-header"><strong>User Sedang Login</strong></div>
								<div class="card-body">
									<strong>Nama : </strong><br>
									<input type="text" value="<?= $this->session->login['nama'] ?>" readonly class="form-control mt-2 mb-2">
									<strong>Username : </strong><br>
									<input type="text" value="<?= $this->session->login['username'] ?>" readonly class="form-control mt-2 mb-2">
									<strong>Role : </strong><br>
									<input type="text" value="<?= $this->session->login['role'] ?>" readonly class="form-control mt-2 mb-2">
									<strong>Jam Login : </strong><br>
									<input type="text" value="<?= $this->session->login['jam_masuk'] ?>" readonly class="form-control mt-2">
								</div>				
							</div>
			          	</div>
			        </div> -->

				</div>
			</div>
			<!-- load footer -->
			<?php $this->load->view('partials/footer.php') ?>
		</div>
	</div>
	<?php $this->load->view('partials/js.php') ?>

<script type="text/javascript">
    setInterval(function(){
        tampil_data_barang();   //pemanggilan fungsi tampil barang.
        
      //  $('#mydata').dataTable();
         
        //fungsi tampil barang
        function tampil_data_barang(){
             //   var url = window.location.href;
              //  var id = url.substring(url.lastIndexOf('/') + 1);
            $.ajax({
                type  : 'GET',
                url   : '<?php echo base_url()?>dashboard/data_log',
                async : false,
                dataType : 'json',  
                success : function(data){
                    var html = '';
                    var i;
                    for(i=0; i<data.length; i++){
                        html +='<ul class="leave_apps">'+'<li>'+'<a>'+'<h5>'+
                                '<small >'+ data[i].ket+'</small>'+
                                '<i><font size="1">'+'&nbsp;'+data[i].user+'&nbsp;'+data[i].waktu+'</font></i>'+
                                ' <hr style="height:1px;border-width:auto;color:red;background-color:#cacad3">'+'</h5>'+'</a>'+'</li>'+'</ul>';

              
                                   
                    }
                    $('#show_data').html(html);
                }

            });
        }

    }, 2000);


</script>
	<script src="<?= base_url('sb-admin/js/demo/datatables-demo.js') ?>"></script>
	<script src="<?= base_url('sb-admin') ?>/vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="<?= base_url('sb-admin') ?>/vendor/datatables/dataTables.bootstrap4.min.js"></script>
     <script src="<?= base_url('sb-admin') ?>/js/demo/chart-area-demo.js"></script>
    <script src="<?= base_url('sb-admin') ?>/js/demo/chart-pie-demo.js"></script>
</body>
</html>