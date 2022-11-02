<!DOCTYPE html>
<html lang="en">
<head>
	<?php $this->load->view('partials/head.php') ?>
</head>
<?php error_reporting(0);  ?>
<body id="page-top">
	<div id="wrapper">
		<!-- load sidebar -->
		<?php $this->load->view('partials/sidebar.php') ?>

		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content" data-url="<?= base_url('asst') ?>">
				<!-- load Topbar -->
				<?php $this->load->view('partials/topbar.php') ?>

				<div class="container-fluid">
				<div class="clearfix">
					<div class="float-left">
						<h1 class="h3 m-0 text-gray-800"><?= $title ?></h1>
					</div>
					<div class="float-right"> 
						<?php if ($this->session->login['role'] == 'admin'): ?>

							<a href="<?= base_url('mod_kerja/tambah') ?>" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i>&nbsp;&nbsp;Tambah</a>
						<?php endif ?> 
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
					<div class="card-header"><strong>LAPORAN MENGGGU DIPROSES</strong></div>

					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr>
										<td>No</td>
										<td>Tanggal</td>
										<td>Kode</td>
										<td>Proyek</td>
										<td>Jumlah</td>
										<td>Moderator</td>
										<td>Penerima</td>
										<td>Durasi Pekerjaan</td>
										<td>Status</td>
										<td>Lihat</td>
										<?php if ($this->session->login['role'] == 'admin'): ?>
											<td>Aksi</td>
										<?php endif ?>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($all_dept_info as $mdl): ?>
										<tr>
											<td width="3"><?= $no++ ?></td>
											<td width="10"><?php echo date('Y-m-d', strtotime($mdl->waktu)); ?></td>
											<td width="10"><?= $mdl->kode_daily ?></td>
											<td>
												<?php 
												echo $mdl->proyek ?></td>
											<td align="center"><?= $mdl->jumlah_foto ?></td>
											<td><?= $mdl->dibuat ?></td>
											<td><?= $mdl->nama_karyawan ?></td>
											<td><?= $mdl->durasi ?></td>
                                       		<td><span class="badge badge-warning">Menunggu</span></td>

											<td align="center"><a href="<?= base_url('mod_kerja/progress_view_detail/' . $mdl->kode_daily) ?>" class="btn btn-primary btn-sm">Lihat</a></td>
											<?php if ($this->session->login['role'] == 'admin'): ?>
												<td>
													 <?php if ($mdl->status_modul == 1) : ?>
													<a href="<?= base_url('mod_kerja/ubah/' . $mdl->kode_modul) ?>" class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
													 <?php endif; ?>
												
													 <?php if ($mdl->status == 1) : ?>
													<a onclick="return confirm('apakah anda yakin?')" href="<?= base_url('mod_kerja/hapus_daily/' . $mdl->kode_daily) ?>" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a> <?php endif; ?>
													<?php if ($mdl->status_modul == 2) : ?>
														<a data-toggle="modal" style="color:white" data-target="#right_modal<?= $mdl->kode_modul ?>" class="btn btn-warning btn-sm"><i class="fa fa-check"></i> Selesai</a> <?php endif; ?>
												</td>
											<?php endif ?>
										</tr>
									<?php endforeach ?>
								</tbody>
							</table>
						</div>
					</div>				
				</div>
<br><br>
				<div class="card shadow">
					<div class="card-header"><strong>LAPORAN SEDANG DIPROSES</strong></div>

					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr>
										<td>No</td>
										<td>Tanggal</td>
										<td>Kode</td>
										<td>Proyek</td>
										<td>Jumlah</td>
										<td>Moderator</td>
										<td>Penerima</td>
										<td>Durasi Pekerjaan</td>
										<td>Status</td>
										<td>Lihat</td>
										<?php if ($this->session->login['role'] == 'admin'): ?>
											<td>Aksi</td>
										<?php endif ?>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($all_dept_info1 as $mdl): ?>
										<tr>
											<td width="3"><?= $no++ ?></td>
											<td width="10"><?php echo date('Y-m-d', strtotime($mdl->waktu)); ?></td>
											<td width="10"><?= $mdl->kode_daily ?></td>
											<td>
												<?php 
												echo $mdl->proyek ?></td>
											<td align="center"><?= $mdl->jumlah_foto ?></td>
											<td><?= $mdl->dibuat ?></td>
											<td><?= $mdl->nama_karyawan ?></td>
											<td><?= $mdl->durasi ?></td>
                                       		<td><span class="badge badge-info">Proses</span></td>
                                       		
                                       		

											<td align="center"><a href="<?= base_url('mod_kerja/progress_view_detail/' . $mdl->kode_daily) ?>" class="btn btn-primary btn-sm">Lihat</a></td>
											<?php if ($this->session->login['role'] == 'admin'): ?>
												<td>
													 <?php if ($mdl->status_modul == 1) : ?>
													<a href="<?= base_url('mod_kerja/ubah/' . $mdl->kode_modul) ?>" class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
													 <?php endif; ?>
												
													 <?php if ($mdl->status == 1) : ?>
													<a onclick="return confirm('apakah anda yakin?')" href="<?= base_url('mod_kerja/hapus/' . $mdl->kode_daily) ?>" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a> <?php endif; ?>
													<?php if ($mdl->status == 2) : ?>
														<a onclick="return confirm('Akhiri Laporan ini?')" href="<?= base_url('mod_kerja/update_reportimg/' . $mdl->kode_daily) ?>" class="btn btn-success btn-sm"><i class="fa fa-check-circle"></i></a>
														<a onclick="return confirm('Hapus Laporan ini, apakah anda yakin?')" href="<?= base_url('mod_kerja/hapus_daily/' . $mdl->kode_daily) ?>" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a> <?php endif; ?>
												</td>
											<?php endif ?>
										</tr>

									<?php endforeach ?>
								</tbody>
							</table>
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
</body>
</html>