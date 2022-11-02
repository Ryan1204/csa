 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
			<a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url('dashboard') ?>"	>
				<div class="sidebar-brand-icon rotate-n-11">
					<img style="width: 60px;height: 60px" src="<?php echo base_url(); ?>img/logo.png"  alt="" class="img-circle"/>
				</div>
				
			</a>
                 <br>
			<hr class="sidebar-divider my-0">

			<li class="nav-item <?= $aktif == 'dashboard' ? 'active' : '' ?>">
				<a class="nav-link" href="<?= base_url('dashboard') ?>">
					<i class="fas fa-fw fa-tachometer-alt"></i>
					<span>Dashboard</span></a>
			</li>

			<hr class="sidebar-divider">	
			<div class="sidebar-heading">
				Proyek
			</div>
			<!-- Master Data -->




	

<!-- MENU Payment ADMIN 
-->

 <script>
 
$(document).ready(function(){
 
 //updating the view with notifications using ajax

function load_unseen_notification(view = '')
 
{

 $.ajax({
 
   url:"<?php echo base_url();?>user/dashboard/user_notifi_payment",
  method:"POST",
  data:{"view":view},
  dataType:"json",
  success:function(data)
  {
   $('#count_pay').show();
   if(data.unseen_notification > 0)
   {
       
    $('#count_pay').html(data.unseen_notification);
   }  else if(data.unseen_notification == ''){

       $('#count_pay').hide();
   }
  }
 });
}
setInterval(function(){
 
 load_unseen_notification();;
 
}, 2000);
 
});
 
</script>

            <li class="nav-item <?= $aktif == 'pembelian' ? 'active' : '' ?>">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pembelian"
                    aria-expanded="false" aria-controls="petty_cash">
                    <i class="fas fa-fw fa fa-list-alt"></i>
                    <span>Pembelian</span> 
                    <span class="badge badge-danger badge-counter" id="count_pr_direksi"></span>
                </a>
                <div id="pembelian" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="<?= base_url('pembelian/tambah') ?>">Tambah</a>
                    <a class="collapse-item" href="<?= base_url('pembelian/list_permintaan') ?>">Pesanan </a>
                    <a class="collapse-item" href="<?= base_url('pembelian/list_pengiriman') ?>">Pengiriman </a>
                    <a class="collapse-item" href="<?= base_url('pembelian/list_klaim') ?>">Komplain</a>
                    <a class="collapse-item" href="<?= base_url('pembelian/list_selesai') ?>">Selesai</a>
                    <a class="collapse-item" href="<?= base_url('pembelian/list_permintaan') ?>">Reject</a>
                    </div>
                </div>
            </li>

 				<li class="nav-item <?= $aktif == 'mod_kerja' ? 'active' : '' ?>">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#mod_kerja"
                    aria-expanded="false" aria-controls="mod_kerja">
                    <i class="fas fa-fw fa fa-list-alt"></i>
                    <span>Task</span>
                </a>
                <div id="mod_kerja" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                       <a class="collapse-item" href="<?= base_url('mod_kerja/tambah') ?>">Tambah</a>
                        <a class="collapse-item" href="<?= base_url('mod_kerja/lihat_semua') ?>">Menunggu</a>
                        <a class="collapse-item" href="<?= base_url('mod_kerja/proses') ?>">Proses</a>
                        <a class="collapse-item" href="<?= base_url('mod_kerja/mykontribusi') ?>">Kontribusi</a>
                        <a class="collapse-item" href="<?= base_url('mod_kerja/modul_finish') ?>">Selesai</a>
                    </div>
                </div>
            </li><!-- END MENU MODUL KERJA -->
 <!-- MENU KARYAWAN -->
<!-- MENU KARYAWAN -->
			<hr class="sidebar-divider">



		

<!--
			<li class="nav-item <?= $aktif == 'penerimaan' ? 'active' : '' ?>">
				<a class="nav-link" href="<?= base_url('penerimaan') ?>">
					<i class="fas fa-fw fa-file-invoice"></i>
					<span>Transaksi Penerimaan</span></a>
			</li>

			<li class="nav-item <?= $aktif == 'pengeluaran' ? 'active' : '' ?>">
				<a class="nav-link" href="<?= base_url('pengeluaran') ?>">
					<i class="fas fa-fw fa-file-invoice"></i>
					<span>Transaksi Pengeluaran</span></a>
			</li>

			<hr class="sidebar-divider">
			<?php if ($this->session->login['role'] == 'admin'): ?>
				
				<div class="sidebar-heading">
					Pengaturan
				</div>

				<li class="nav-item <?= $aktif == 'pengguna' ? 'active' : '' ?>">
					<a class="nav-link" href="<?= base_url('pengguna') ?>">
						<i class="fas fa-fw fa-users"></i>
						<span>Manajemen Pengguna</span></a>
				</li>

				<li class="nav-item <?= $aktif == 'toko' ? 'active' : '' ?>">
					<a class="nav-link" href="<?= base_url('toko') ?>">
						<i class="fas fa-fw fa-building"></i>
						<span>Profil Perusahaan</span></a>
				</li>
				<!-- Divider -->
			<?php endif; ?>
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>
		</ul>
<script>
 
$(document).ready(function(){
 
 //updating the view with notifications using ajax

function load_unseen_notification(view = '')
{
 $.ajax({
   url:"<?php echo base_url();?>user/dashboard/notif_pr_direksi",
  method:"POST",
  data:{"view":view},
  dataType:"json",
  success:function(data)
  {
  // $('.show_data').html(data.notification);
   $('#count_pr_direksi').show();
   if(data.unseen_notification > 0)
   {
       
    $('#count_pr_direksi').html(data.unseen_notification);
   }  else if(data.unseen_notification == ''){

       $('#count_pr_direksi').hide();

   }
  }
 });
}
setInterval(function(){
 
 load_unseen_notification();;
 
},2000);
 
});
 
</script>