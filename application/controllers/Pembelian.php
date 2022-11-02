<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pembelian extends CI_Controller {
	public function __construct(){
		parent::__construct();

		$this->load->model('M_kerja', 'm_kerja');
		$this->load->model('M_payment', 'm_payment');
		$this->load->model('m_pembelian', 'm_pembelian');
		$this->load->model('M_mom', 'm_mom');
			$this->load->model('M_karyawan', 'm_karyawan');
			$this->load->model('M_sop', 'm_sop');
			$this->load->model('M_reimburs', 'm_reimburs');
			$this->load->model('M_izin', 'm_izin');
			$this->load->helper(array('form', 'url'));
	}
	function action()
	{
	
				$api_url = "https://zeus.accurate.id/accurate/api/purchase-order/save.do?access_token=faf05a07-296a-4894-ad5d-05b8fae0d2ed&session=ae6a08e1-d41e-4138-9ec2-cffee26af3b3";
			

				$form_data = array(
				'number'	=>	$this->input->post('number'),
				'transDate'		=>	$this->input->post('transDate'),
				'vendorNo'		=>	$this->input->post('vendorNo'),
				'toAddress'		=>	$this->input->post('toAddress'),
				'description'		=>	$this->input->post('description'),
				'detailItem[0].detailName'		=>	$this->input->post('detailItem[0].detailName'),
				'detailItem[0].unitPrice'		=>	$this->input->post('detailItem[0].unitPrice'),
				'detailItem[0].itemNo'		=>	$this->input->post('detailItem[0].itemNo'),
				'detailItem[0].quantity'		=>	$this->input->post('detailItem[0].quantity'),
				'detailItem[0].detailNotes'		=>	$this->input->post('detailItem[0].detailNotes'),
				'detailItem[0].itemDiscPercent'		=>	$this->input->post('detailItem[0].itemDiscPercent')
				);

				$client = curl_init($api_url);

				curl_setopt($client, CURLOPT_POST, true);

				curl_setopt($client, CURLOPT_POSTFIELDS, $form_data);

				curl_setopt($client, CURLOPT_RETURNTRANSFER, true);

				$response = curl_exec($client);

				curl_close($client);

				echo $response;


			
		
	}
	public function tambah($id_lsp = NULL){
		$this->data['aktif'] = 'pembelian';
		$this->data['title'] = 'Purchase Request';
		//$this->data['all_Mom'] = $this->m_mom->lihat();
		$this->data['no'] = 1;
		$this->data['reimbursment_count'] = count($this->m_reimburs->lihat_reimburs1()); // get resutl
        	$this->data['reimbursment'] = $this->m_reimburs->lihat_reimburs1();
		$this->data['izin_atasan'] = count($this->m_izin->persetujuan_atasan()); // get resutl
		$this->data['izin_hrd'] = count($this->m_izin->persetujuan_hrd()); // get resutl
		$this->data['atasan'] = $this->m_izin->persetujuan_atasan();
		$this->data['hrd'] = $this->m_izin->persetujuan_hrd();
   		$this->data['all_leads_project'] = $this->m_mom->get_lsp();
		$this->data['proyek'] = $this->m_mom->get_project();
		$this->data['vendor'] = $this->m_payment->lihat();

		$id = $this->session->login['kode'];
		$this->data['emp'] = $this->m_karyawan->view_profile_employee($id);

		$dariDB = $this->m_pembelian->cekkode_purcahase_order();

		$nourut = substr($dariDB, 12, 5);
      	$kodenikSekarang = $nourut + 1;
      	$this->data['kode_nik']  = $kodenikSekarang ;

		$this->load->view('pembelian/tambah', $this->data);
		}
			public function kelengkapan_pr($id_pr = NULL){
		$this->data['aktif'] = 'pembelian';
		$this->data['title'] = 'Purchase Request';
		//$this->data['all_Mom'] = $this->m_mom->lihat();
		$this->data['no'] = 1;
				$this->data['reimbursment_count'] = count($this->m_reimburs->lihat_reimburs1()); // get resutl
        	$this->data['reimbursment'] = $this->m_reimburs->lihat_reimburs1();
		$this->data['izin_atasan'] = count($this->m_izin->persetujuan_atasan()); // get resutl
		$this->data['izin_hrd'] = count($this->m_izin->persetujuan_hrd()); // get resutl
		$this->data['atasan'] = $this->m_izin->persetujuan_atasan();
		$this->data['hrd'] = $this->m_izin->persetujuan_hrd();
   		$this->data['all_leads_project'] = $this->m_mom->get_lsp();
		$this->data['proyek'] = $this->m_mom->get_project();
		$this->data['vendor'] = $this->m_payment->lihat();

		$id = $this->session->login['kode'];
		$this->data['emp'] = $this->m_karyawan->view_profile_employee($id);

		$this->data['hd_pr'] = $this->m_pembelian->lihat_pr_detail_hd($id_pr);
		$this->data['dt_pr'] = $this->m_pembelian->lihat_pr_detail_dt($id_pr);


		$this->load->view('pembelian/ubah_pr', $this->data);
		}
	public function list_permintaan($id_lsp = NULL){
		$this->data['aktif'] = 'pembelian';
		$this->data['title'] = 'List Purchase Request';
		//$this->data['all_Mom'] = $this->m_mom->lihat();
		$this->data['no'] = 1;
		$this->data['reimbursment_count'] = count($this->m_reimburs->lihat_reimburs1()); // get resutl
        	$this->data['reimbursment'] = $this->m_reimburs->lihat_reimburs1();
		$this->data['izin_atasan'] = count($this->m_izin->persetujuan_atasan()); // get resutl
		$this->data['izin_hrd'] = count($this->m_izin->persetujuan_hrd()); // get resutl
		$this->data['atasan'] = $this->m_izin->persetujuan_atasan();
		$this->data['hrd'] = $this->m_izin->persetujuan_hrd();
   		$this->data['all_leads_project'] = $this->m_mom->get_lsp();
		$this->data['proyek'] = $this->m_mom->get_project();
		$this->data['vendor'] = $this->m_payment->lihat();

    		$this->data['all_pr'] = $this->m_pembelian->lihat_pr_status_1(); 

		$this->load->view('pembelian/list_pr', $this->data);
		}
		public function list_selesai($id_lsp = NULL){
		$this->data['aktif'] = 'pembelian';
		$this->data['title'] = 'List Purchase Order Finish';
		//$this->data['all_Mom'] = $this->m_mom->lihat();
		$this->data['no'] = 1;
		$this->data['reimbursment_count'] = count($this->m_reimburs->lihat_reimburs1()); // get resutl
        	$this->data['reimbursment'] = $this->m_reimburs->lihat_reimburs1();
		$this->data['izin_atasan'] = count($this->m_izin->persetujuan_atasan()); // get resutl
		$this->data['izin_hrd'] = count($this->m_izin->persetujuan_hrd()); // get resutl
		$this->data['atasan'] = $this->m_izin->persetujuan_atasan();
		$this->data['hrd'] = $this->m_izin->persetujuan_hrd();
   		$this->data['all_leads_project'] = $this->m_mom->get_lsp();
		$this->data['proyek'] = $this->m_mom->get_project();
		$this->data['vendor'] = $this->m_payment->lihat();

    		$this->data['all_pr'] = $this->m_pembelian->lihat_pr_status_7(); 

		$this->load->view('pembelian/list_pr', $this->data);
		}
	public function list_klaim($id_lsp = NULL){
		$this->data['aktif'] = 'pembelian';
		$this->data['title'] = 'List Klaim Purchase Order';
		//$this->data['all_Mom'] = $this->m_mom->lihat();
		$this->data['no'] = 1;
		$this->data['reimbursment_count'] = count($this->m_reimburs->lihat_reimburs1()); // get resutl
        	$this->data['reimbursment'] = $this->m_reimburs->lihat_reimburs1();
		$this->data['izin_atasan'] = count($this->m_izin->persetujuan_atasan()); // get resutl
		$this->data['izin_hrd'] = count($this->m_izin->persetujuan_hrd()); // get resutl
		$this->data['atasan'] = $this->m_izin->persetujuan_atasan();
		$this->data['hrd'] = $this->m_izin->persetujuan_hrd();
   		$this->data['all_leads_project'] = $this->m_mom->get_lsp();
		$this->data['proyek'] = $this->m_mom->get_project();
		$this->data['vendor'] = $this->m_payment->lihat();

    		$this->data['all_pr'] = $this->m_pembelian->lihat_pr_status_9(); 

		$this->load->view('pembelian/list_pr', $this->data);
		}

	public function list_pengiriman($id_lsp = NULL){
		$this->data['aktif'] = 'pembelian';
		$this->data['title'] = 'List Purchase Order';
		//$this->data['all_Mom'] = $this->m_mom->lihat();
		$this->data['no'] = 1;
		$id = $this->session->login['kode'];
		$this->data['emp'] = $this->m_karyawan->view_profile_employee($id);
		$this->data['count_task'] = count($this->m_kerja->my_modul()); // get resutl 
		$this->data['view_task'] = $this->m_kerja->my_modul();
   		$this->data['all_leads_project'] = $this->m_mom->get_lsp();
		$this->data['proyek'] = $this->m_mom->get_project();
		$this->data['vendor'] = $this->m_payment->lihat();

    		$this->data['all_pr'] = $this->m_pembelian->lihat_pr_status_6(); 

		$this->load->view('pembelian/list_po', $this->data);
		}
	public function detail_pr($id_pr = NULL){
		$this->data['aktif'] = 'pembelian';
		$this->data['title'] = 'Detail Purchase Request';
		//$this->data['all_Mom'] = $this->m_mom->lihat();
		$this->data['no'] = 1;
		$this->data['reimbursment_count'] = count($this->m_reimburs->lihat_reimburs1()); // get resutl
        	$this->data['reimbursment'] = $this->m_reimburs->lihat_reimburs1();
		$this->data['izin_atasan'] = count($this->m_izin->persetujuan_atasan()); // get resutl
		$this->data['izin_hrd'] = count($this->m_izin->persetujuan_hrd()); // get resutl
		$this->data['atasan'] = $this->m_izin->persetujuan_atasan();
		$this->data['hrd'] = $this->m_izin->persetujuan_hrd();

		$this->data['hd_pr'] = $this->m_pembelian->lihat_pr_detail_hd($id_pr);
    		$this->data['dt_pr'] = $this->m_pembelian->lihat_pr_detail_dt($id_pr);
    		$this->data['his_pr'] = $this->m_pembelian->lihat_pr_detail_history($id_pr); 

		$this->load->view('pembelian/detail_pr', $this->data);
		}
		public function detail_po($id_pr = NULL){
		$this->data['aktif'] = 'pembelian';
		$this->data['title'] = 'Detail Purchase Request';
		//$this->data['all_Mom'] = $this->m_mom->lihat();
		$this->data['no'] = 1;
		$this->data['reimbursment_count'] = count($this->m_reimburs->lihat_reimburs1()); // get resutl
        	$this->data['reimbursment'] = $this->m_reimburs->lihat_reimburs1();
		$this->data['izin_atasan'] = count($this->m_izin->persetujuan_atasan()); // get resutl
		$this->data['izin_hrd'] = count($this->m_izin->persetujuan_hrd()); // get resutl
		$this->data['atasan'] = $this->m_izin->persetujuan_atasan();
		$this->data['hrd'] = $this->m_izin->persetujuan_hrd();

		$this->data['hd_pr'] = $this->m_pembelian->lihat_pr_detail_hd($id_pr);
    		$this->data['dt_pr'] = $this->m_pembelian->lihat_pr_detail_dt($id_pr);
    		$this->data['his_pr'] = $this->m_pembelian->lihat_pr_detail_history($id_pr); 

		$this->load->view('pembelian/detail_pr', $this->data);
		}
	public function delete_detail_pr()
		{
			if($this->input->post('checkbox_value'))
			{
				$id = $this->input->post('checkbox_value');
				for($count = 0; $count < count($id); $count++)
					{
						$this->m_pembelian->hapus_pr_dt($id[$count]);
					}
			}
		}

	public function ubah_pr_dt(){
			date_default_timezone_set('Asia/Jakarta');
			
			$id_hd = $this->input->post('id_header');
			$update_dt['id_dt'] = $this->input->post('id_dt');
			$update_dt['detailName'] = $this->input->post('detailName');
			$update_dt['quantity'] = $this->input->post('quantity');
			$update_dt['detailNotes'] = $this->input->post('detailNotes');
			$update_dt['unitPrice'] = $this->input->post('unitPrice');
			$update_dt['itemDiscPercent'] = $this->input->post('itemDiscPercent');
      		$this->m_pembelian->save_update_pr_dt($update_dt); //simpan ke tabel pr dt

			
		  	$data_log['user'] = $this->session->login['nama'];
			$data_log['waktu'] = date('Y-m-d H:i:s');
			$data_log['ket'] = 'Update Detail PR';
			$data_log['kode'] = $this->input->post('id_dt');
			$this->m_mom->tambah_log($data_log); //simpan ke tabel log 

			$data_hs['action_by'] = $this->session->login['nama'];
			$data_hs['actiontime'] = date('Y-m-d H:i:s');
			$idnya = $this->input->post('id_dt');
			$data_hs['no_po'] = $this->input->post('no_po');
			$data_hs['status'] = 'Update Detail pr id '.$idnya;
			$this->m_pembelian->save_purchase_history($data_hs); //simpan ke tabel log status pr

			$this->session->set_flashdata('error', 'Detail PR <strong>Gagal</strong> Ditambahkan!');
			$this->session->set_flashdata('success', 'Detail PR <strong>Berhasil</strong> Diubah!');
			redirect('pembelian/detail_pr/'.$id_hd);
		
      //  echo '<pre>';
     //   print_r ($_POST);
      //  echo '</pre>';
     //   exit;
			}	
	public function proses_approve_pr(){
			date_default_timezone_set('Asia/Jakarta');
			
			$id_hd = $this->input->post('id');
			$data['status_po'] = $this->input->post('status_po');
      		$this->m_pembelian->ubah_status_pr($data,$id_hd); //simpan ke tabel jenis izin

			
		  	$data_log['user'] = $this->session->login['nama'];
			$data_log['waktu'] = date('Y-m-d H:i:s');
			$data_log['ket'] = 'PM Mengetahui PR';
			$data_log['kode'] = $this->input->post('number_');
			$this->m_mom->tambah_log($data_log); //simpan ke tabel jenis izin

			$data_hs['action_by'] = $this->session->login['nama'];
			$data_hs['actiontime'] = date('Y-m-d H:i:s');
			$data_hs['no_po'] = $this->input->post('number_');
			$data_hs['status'] = $this->input->post('status');
			$this->m_pembelian->save_purchase_history($data_hs); //simpan ke tabel jenis izin

			$this->session->set_flashdata('error', 'Detail PR <strong>Gagal</strong> Ditambahkan!');
			$this->session->set_flashdata('success', 'Detail PR <strong>Berhasil</strong> Diubah!');
			redirect('pembelian/detail_pr/'.$id_hd);
		
      //  echo '<pre>';
     //   print_r ($_POST);
      //  echo '</pre>';
     //   exit;
			}	

    public function save_pr_sattle($id = NULL) { 
		 date_default_timezone_set('Asia/Jakarta');

	 	$id_hd = $this->input->post('id');
		$data['status_po'] = $this->input->post('status_po');
		$data['vendorNo'] = $this->input->post('vendorNo');
 		$this->m_pembelian->ubah_status_pr($data,$id_hd); //Update pr hd

 		$number_ = $this->input->post('number_');
        	$detailName = $this->input->post('detailName'); 
        	$itemNo = $this->input->post('itemNo'); 
		$unitPrice = $this->input->post('unitPrice');
		$quantity = $this->input->post('quantity');
        	$detailNotes = $this->input->post('detailNotes');
        	$itemDiscPercent = $this->input->post('itemDiscPercent');
        	$id_dt = $this->input->post('id_dt');

    		$this->m_pembelian->save_pr_sattle_dt($number_,$detailName,$itemNo,$unitPrice,$quantity,$detailNotes,$itemDiscPercent,$id_dt); //untuk tabel purchase dt


			$data_hs['no_po'] = $number_;
			$data_hs['status'] = 'Purchase Update Pemasok & Harga';
			$data_hs['action_by'] = $this->session->login['nama'];
			$data_hs['actiontime'] = date('Y-m-d H:i:s');
			$this->m_pembelian->save_purchase_history($data_hs); //simpan ke tabel purchase history

			//untuk log
      		$data_log['user'] = $this->session->login['nama'];
			$data_log['waktu'] = date('Y-m-d H:i:s');
			$nama =  $this->input->post('number_');
			$keterangan =  'Purchasing Update Pemasok & Harga';
			$data_log['ket'] = $keterangan.' '.$nama;
			$data_log['kode'] = $this->input->post('number_');
			$this->m_mom->tambah_log($data_log); //simpan ke tabel log

        //   echo '<pre>';
        //  // print_r ($_POST);
        // echo '</pre>';
       //print POST
        //print_r($this->db->last_query()); //print query
        //exit;

       $this->session->set_flashdata('error', 'PR <strong>Gagal</strong> Ditambahkan!');
       $this->session->set_flashdata('success', 'PR <strong>Berhasil</strong> Ditambahkan!');
       redirect('pembelian/list_permintaan'); //redirect page
    }
	public function index($id_lsp = NULL){
		$this->data['aktif'] = 'list_payment';
		$this->data['title'] = 'List Payment Waiting Approved';
		//$this->data['all_Mom'] = $this->m_mom->lihat();
		$this->data['no'] = 1;
		$this->data['count_task'] = count($this->m_kerja->my_modul()); // get resutl 
		$this->data['view_task'] = $this->m_kerja->my_modul();
   		$this->data['all_leads_project'] = $this->m_mom->get_lsp();
		$this->data['proyek'] = $this->m_mom->get_project();
		$this->data['vendor'] = $this->m_payment->lihat();

    		$id_lsp = $this->input->post('id_lsp');
    		$this->data['all_paym'] = $this->m_payment->view_payment_status(); 

		$this->load->view('user/paym/lihat_paym', $this->data);
		}
	public function pending_($id_lsp = NULL){
		$this->data['aktif'] = 'list_payment';
		$this->data['title'] = 'List Payment Pending';
		//$this->data['all_Mom'] = $this->m_mom->lihat();
		$this->data['no'] = 1;
		$this->data['count_task'] = count($this->m_kerja->my_modul()); // get resutl 
		$this->data['view_task'] = $this->m_kerja->my_modul();
   		$this->data['all_leads_project'] = $this->m_mom->get_lsp();
		$this->data['proyek'] = $this->m_mom->get_project();
		$this->data['vendor'] = $this->m_payment->lihat();

    		$id_lsp = $this->input->post('id_lsp');
    		$this->data['all_paym'] = $this->m_payment->count_payment_status_pend(); 

		$this->load->view('user/paym/lihat_paym', $this->data);
		}
	public function finish($id_lsp = NULL){
		$this->data['aktif'] = 'list_payment';
		$this->data['title'] = 'List Payment Approved';
		//$this->data['all_Mom'] = $this->m_mom->lihat();
		$this->data['no'] = 1;
		$this->data['count_task'] = count($this->m_kerja->my_modul()); // get resutl 
		$this->data['view_task'] = $this->m_kerja->my_modul();
   		$this->data['all_leads_project'] = $this->m_mom->get_lsp();
		$this->data['proyek'] = $this->m_mom->get_project();
		$this->data['vendor'] = $this->m_payment->lihat();

	    	$id_lsp = $this->input->post('id_lsp');
	    	$this->data['all_paym'] = $this->m_payment->view_payment_status_f(); 

		$this->load->view('user/paym/lihat_paym_apprvd', $this->data);
	}
	public function finishh($id_lsp = NULL){
		$this->data['aktif'] = 'list_payment';
		$this->data['title'] = 'List Payment Paid';
		//$this->data['all_Mom'] = $this->m_mom->lihat();
		$this->data['no'] = 1;
		$this->data['count_task'] = count($this->m_kerja->my_modul()); // get resutl 
		$this->data['view_task'] = $this->m_kerja->my_modul();
   		$this->data['all_leads_project'] = $this->m_mom->get_lsp();
		$this->data['proyek'] = $this->m_mom->get_project();
		$this->data['vendor'] = $this->m_payment->lihat();

	    	$id_lsp = $this->input->post('id_lsp');
	    	$this->data['all_paym'] = $this->m_payment->view_payment_status_4(); 

		$this->load->view('user/paym/lihat_paym_finish', $this->data);
	}
	public function add_pay($id_lsp = NULL){
		$this->data['aktif'] = 'list_payment';
		$this->data['title'] = 'List Payment';
		//$this->data['all_Mom'] = $this->m_mom->lihat();
		$this->data['no'] = 1;
		$this->data['count_task'] = count($this->m_kerja->my_modul()); // get resutl 
		$this->data['view_task'] = $this->m_kerja->my_modul();
   		$this->data['all_leads_project'] = $this->m_mom->get_lsp();
		$this->data['proyek'] = $this->m_mom->get_project();
		$this->data['vendor'] = $this->m_payment->lihat();

			$id = $this->session->login['kode'];
		$this->data['emp'] = $this->m_karyawan->view_profile_employee($id);

		$this->load->view('user/paym/add_payment', $this->data);
	}
	public function finish_($id_lsp = NULL){
		$this->data['aktif'] = 'list_payment';
		$this->data['title'] = 'Print report payment approved';
		//$this->data['all_Mom'] = $this->m_mom->lihat();
		$this->data['no'] = 1;
		$this->data['count_task'] = count($this->m_kerja->my_modul()); // get resutl 
		$this->data['view_task'] = $this->m_kerja->my_modul();
   		$this->data['all_leads_project'] = $this->m_mom->get_lsp();
		$this->data['proyek'] = $this->m_mom->get_project();
		$this->data['vendor'] = $this->m_payment->lihat(); 


	    	$tanggal = $this->input->post('tanggal');
	    	$header_payment = $this->input->post('header_payment');
        	$ket = 'LAPORAN PAYMENT '.$header_payment.' TANGGAL '.date('d-m-Y', strtotime($tanggal));
        	$absensi = $this->m_payment->view_payment_status_ff($tanggal,$header_payment); 
        	$count = $this->m_payment->view_payment_status_fff($tanggal,$header_payment);  
		$url_cetak = 'user/payment/export?filter=1&tanggal='.$tanggal.'&header_payment='.$header_payment;
		$url_cetak_excel = 'user/payment/export_excel?filter=1&tanggal='.$tanggal.'&header_payment='.$header_payment;
		$this->data['url_cetak'] = base_url($url_cetak);
		$this->data['url_cetak_excel'] = base_url($url_cetak_excel);
		$this->data['all_paym'] = $absensi;
		$this->data['count'] = $count;
	    //	$this->data['all_paym'] = $this->m_payment->view_payment_status_f($tanggal,$header_payment); 

		$this->load->view('user/paym/report_paym', $this->data);
	}
	
	public function export_excel(){  
        $tanggal = $_GET['tanggal']; 
        $header_payment = $_GET['header_payment'];
    //    $tanggal = $this->input->post('tanggal');
	//   $header_payment = $this->input->post('header_payment');
$ket = 'LAPORAN PAYMENT '.$header_payment.' TANGGAL '.date('d-m-Y', strtotime($tanggal));
        	$url_cetak = 'user/payment/export_excel?filter=1&tanggal='.$tanggal.'&header_payment='.$header_payment;
        	$url_cetak_excel = 'user/payment/export_excel?filter=1&tanggal='.$tanggal.'&header_payment='.$header_payment;
        	$absensi = $this->m_payment->view_payment_status_ff($tanggal,$header_payment);  
        	$count = $this->m_payment->view_payment_status_fff($tanggal,$header_payment);
        	$this->data['ket'] = $ket;
        	$this->data['status'] = 'APPROVED';
        	$this->data['url_cetak'] = base_url($url_cetak);
        	$this->data['all_paym'] = $absensi;
		$this->data['count'] = $count;

        		$this->load->view('user/paym/export_excel', $this->data); 
    }
	public function export(){
       $this->data['title'] = "CASSA DESIGN"; 
     
        //$tgl_sekarang = $_GET['tanggal_sekarang'];
        
             // Jika filter nya 1 (per tanggal)
        $tanggal = $_GET['tanggal']; 
        $header_payment = $_GET['header_payment'];
    //    $tanggal = $this->input->post('tanggal');
	//   $header_payment = $this->input->post('header_payment');
         $nama_fle ='CSA-MSA-GFY-';
        $ket = $nama_fle.date('dmY', strtotime($tanggal));
        $url_cetak = 'user/payment/export?filter=1&tanggal='.$tanggal.'&header_payment='.$header_payment;
        $absensi = $this->m_payment->view_payment_status_ff($tanggal,$header_payment);  
        $count = $this->m_payment->view_payment_status_fff($tanggal,$header_payment);
        $this->data['ket'] = $ket;
        $this->data['status'] = 'APPROVED';
        $this->data['url_cetak'] = base_url($url_cetak);
        $this->data['all_paym'] = $absensi;
		$this->data['count'] = $count;
        $this->load->library('pdf'); // change to pdf_ssl for ssl
		$filename = $ket;
		$html = $this->load->view('user/paym/report_pdf', $this->data, true);
        $this->pdf->create($html,$ket);
    }
	public function print_p($id_lsp = NULL){
		$this->data['aktif'] = 'list_payment';
		$this->data['title'] = 'Print report waiting approved';
		//$this->data['all_Mom'] = $this->m_mom->lihat();
		$this->data['no'] = 1;
		$this->data['count_task'] = count($this->m_kerja->my_modul()); // get resutl 
		$this->data['view_task'] = $this->m_kerja->my_modul();
   		$this->data['all_leads_project'] = $this->m_mom->get_lsp();
		$this->data['proyek'] = $this->m_mom->get_project();
		$this->data['vendor'] = $this->m_payment->lihat(); 


	    	$tanggal = $this->input->post('tanggal');
	    	$header_payment = $this->input->post('header_payment');
        	$ket = 'LAPORAN PAYMENT '.$header_payment.' TANGGAL '.date('d-m-Y', strtotime($tanggal));
        	$absensi = $this->m_payment->view_payment_status_pp($tanggal,$header_payment); 
        	$count = $this->m_payment->view_payment_status_fffp($tanggal,$header_payment);  
		$url_cetak = 'user/payment/export_p?filter=1&tanggal='.$tanggal.'&header_payment='.$header_payment;
		$url_cetak_excel = 'user/payment/export_excel_pending?filter=1&tanggal='.$tanggal.'&header_payment='.$header_payment;
		$this->data['url_cetak'] = base_url($url_cetak);
		$this->data['url_cetak_excel'] = base_url($url_cetak_excel);
		$this->data['all_paym'] = $absensi;
		$this->data['count'] = $count;
	    //	$this->data['all_paym'] = $this->m_payment->view_payment_status_f($tanggal,$header_payment); 

		$this->load->view('user/paym/report_paym', $this->data);
	}
		public function export_p(){
       $this->data['title'] = "CASSA DESIGN"; 
      	
        //$tgl_sekarang = $_GET['tanggal_sekarang'];
        
             // Jika filter nya 1 (per tanggal)
        $tanggal = $_GET['tanggal']; 
        $header_payment = $_GET['header_payment'];
       // $this->data['judul'] = "CSA-MSA-GFY-".$tanggal;	
    //    $tanggal = $this->input->post('tanggal');
	//   $header_payment = $this->input->post('header_payment');
        $nama_fle ='CSA-MSA-GFY-';
        $ket = 'Waiting Approve '.$nama_fle.date('dmY', strtotime($tanggal));
        $url_cetak = 'user/payment/export_p?filter=1&tanggal='.$tanggal.'&header_payment='.$header_payment;
        $absensi = $this->m_payment->view_payment_status_pp($tanggal,$header_payment);  
        $count = $this->m_payment->view_payment_status_fffp($tanggal,$header_payment);
        $this->data['ket'] = $ket;
        $this->data['status'] = 'BELUM DIAPPROVE';
        $this->data['url_cetak'] = base_url($url_cetak);
        $this->data['all_paym'] = $absensi;
		$this->data['count'] = $count;
        $this->load->library('pdf'); // change to pdf_ssl for ssl
		$filename = $ket;
		$html = $this->load->view('user/paym/report_pdf', $this->data, true);
        $this->pdf->create($html,$ket);
    }
    	public function export_excel_pending(){  
        $tanggal = $_GET['tanggal']; 
        $header_payment = $_GET['header_payment'];
    //    $tanggal = $this->input->post('tanggal');
	//   $header_payment = $this->input->post('header_payment');
        $nama_fle ='CSA-MSA-GFY-';
       // $kalimat2=addcslashes($nama_fle);
        $ket = $nama_fle.date('dmY', strtotime($tanggal));
        $url_cetak = 'user/payment/export_excel_pending?filter=1&tanggal='.$tanggal.'&header_payment='.$header_payment;
        	$url_cetak_excel = 'user/payment/export_excel_pending?filter=1&tanggal='.$tanggal.'&header_payment='.$header_payment;
        	$absensi = $this->m_payment->view_payment_status_pp($tanggal,$header_payment);  
        	$count = $this->m_payment->view_payment_status_fffp($tanggal,$header_payment);
        	$this->data['ket'] = $ket;
        	$this->data['status'] = 'BELUM DIAPPROVE';
        	$this->data['url_cetak'] = base_url($url_cetak);
        	$this->data['all_paym'] = $absensi;
		$this->data['count'] = $count;

        		$this->load->view('user/paym/export_excel', $this->data); 
    }

    	public function print_paid($id_lsp = NULL){
		$this->data['aktif'] = 'list_payment';
		$this->data['title'] = 'Print report payment paid';
		//$this->data['all_Mom'] = $this->m_mom->lihat();
		$this->data['no'] = 1;
		$this->data['count_task'] = count($this->m_kerja->my_modul()); // get resutl 
		$this->data['view_task'] = $this->m_kerja->my_modul();
   		$this->data['all_leads_project'] = $this->m_mom->get_lsp();
		$this->data['proyek'] = $this->m_mom->get_project();
		$this->data['vendor'] = $this->m_payment->lihat(); 


	    	$tanggal = $this->input->post('tanggal');
	    	$header_payment = $this->input->post('header_payment');
        	$ket = 'LAPORAN PAYMENT '.$header_payment.' TANGGAL '.date('d-m-Y', strtotime($tanggal));
        	$absensi = $this->m_payment->view_payment_status_ppaid($tanggal,$header_payment); 
        	$count = $this->m_payment->view_payment_status_paid($tanggal,$header_payment);  
		$url_cetak = 'user/payment/export_paid?filter=1&tanggal='.$tanggal.'&header_payment='.$header_payment;
		$url_cetak_excel = 'user/payment/export_excel_paid?filter=1&tanggal='.$tanggal.'&header_payment='.$header_payment;
		$this->data['url_cetak'] = base_url($url_cetak);
		$this->data['url_cetak_excel'] = base_url($url_cetak_excel);
		$this->data['all_paym'] = $absensi;
		$this->data['count'] = $count;
	    //	$this->data['all_paym'] = $this->m_payment->view_payment_status_f($tanggal,$header_payment); 

		$this->load->view('user/paym/report_paym', $this->data);
	}
		public function export_paid(){
       $this->data['title'] = "CASSA DESIGN"; 
     
        //$tgl_sekarang = $_GET['tanggal_sekarang'];
        
             // Jika filter nya 1 (per tanggal)
        $tanggal = $_GET['tanggal']; 
        $header_payment = $_GET['header_payment'];
    //    $tanggal = $this->input->post('tanggal');
	//   $header_payment = $this->input->post('header_payment');
        $nama_fle ='CSA-MSA-GFY-';
        $ket = $nama_fle.date('dmY', strtotime($tanggal));
        $url_cetak = 'user/payment/export_paid?filter=1&tanggal='.$tanggal.'&header_payment='.$header_payment;
        $absensi = $this->m_payment->view_payment_status_ppaid($tanggal,$header_payment);  
        $count = $this->m_payment->view_payment_status_paid($tanggal,$header_payment);
        $this->data['ket'] = $ket;
        	$this->data['status'] = 'PAID';
        $this->data['url_cetak'] = base_url($url_cetak);
        $this->data['all_paym'] = $absensi;
		$this->data['count'] = $count;
        $this->load->library('pdf'); // change to pdf_ssl for ssl
		$filename = $ket;
		$html = $this->load->view('user/paym/report_pdf', $this->data, true);
        $this->pdf->create($html,$ket);
    }
    	public function export_excel_paid(){  
        $tanggal = $_GET['tanggal']; 
        $header_payment = $_GET['header_payment'];
    //    $tanggal = $this->input->post('tanggal');
	//   $header_payment = $this->input->post('header_payment');
$ket = 'LAPORAN PAYMENT '.$header_payment.' TANGGAL '.date('d-m-Y', strtotime($tanggal));
        	$url_cetak = 'user/payment/export_excel_paid?filter=1&tanggal='.$tanggal.'&header_payment='.$header_payment;
        	$url_cetak_excel = 'user/payment/export_excel_paid?filter=1&tanggal='.$tanggal.'&header_payment='.$header_payment;
        	$absensi = $this->m_payment->view_payment_status_ppaid($tanggal,$header_payment);  
        	$count = $this->m_payment->view_payment_status_paid($tanggal,$header_payment);
        	$this->data['ket'] = $ket;
        		$this->data['status'] = 'PAID';
        	$this->data['url_cetak'] = base_url($url_cetak);
        	$this->data['all_paym'] = $absensi;
		$this->data['count'] = $count;

        		$this->load->view('user/paym/export_excel', $this->data); 
    }
    public function save_laporan($id = NULL) { 
		  	
        	$data['header_payment'] = $this->input->post('header_payment'); 
		$data['kod_payment'] = $this->input->post('kod_payment');
        	$data['no_spk'] = $this->input->post('no_spk'); 
		$data['tgl_payment'] = $this->input->post('tgl_payment');
		$data['project_payment'] = $this->input->post('project_payment');
        	$data['vendor'] = $this->input->post('vendor');
        	$data['almount'] = $this->input->post('almount');
        	$data['note_payment'] = $this->input->post('note_payment');
        	$data['createdBy_payment'] = $this->session->login['nama'];
        	$data['createdTime_payment'] = $this->input->post('createdTime_payment');
    	$this->m_payment->simpan_payment($data);

			//untuk log
      		$data_log['user'] = $this->session->login['nama'];
			$data_log['waktu'] = $this->input->post('createdTime_payment');
			$nama =  $this->input->post('kod_payment');
			$keterangan =  'Add Payment';
			$data_log['ket'] = $keterangan.' '.$nama;
			$data_log['kode'] = $this->input->post('kod_payment');
			$this->m_mom->tambah_log($data_log); //simpan ke tabel log

        //   echo '<pre>';
        //  // print_r ($_POST);
        // echo '</pre>';
       //print POST
        //print_r($this->db->last_query()); //print query
        //exit;

       	$this->session->set_flashdata('error', 'Payment <strong>Gagal</strong> Ditambahkan!');
        $this->session->set_flashdata('success', 'Payment <strong>Berhasil</strong> Ditambahkan!');
        redirect('user/payment'); //redirect page
    }

        public function save_purchase_order($id = NULL) { 
		 date_default_timezone_set('Asia/Jakarta');

        	$transDate = $this->input->post('transDate'); 
        	$number_ = $this->input->post('number_');
        	$number_pr = $this->input->post('number_pr');

        	$project = $this->input->post('project'); 
			$toAddress = $this->input->post('toAddress');
			$created_po = $this->session->login['nama'];
        	$createdtime_po = date('Y-m-d H:i:s');

        	$detailName = $this->input->post('detailName');
        	$quantity = $this->input->post('quantity');
        	$detailNotes = $this->input->post('detailNotes');

    		$this->m_pembelian->save_purchase_dt($number_,$detailName,$quantity,$detailNotes); //untuk tabel purchase dt

			
      		$data_hd['transDate'] = $transDate;
			$data_hd['number_'] = $number_;
			$data_hd['number_pr'] = $number_pr;
			$data_hd['project'] = $project;
			$data_hd['toAddress'] = $toAddress;
			$data_hd['created_po'] = $created_po;
			$data_hd['createdtime_po'] = $createdtime_po;
			$this->m_pembelian->save_purchase_hd($data_hd); //simpan ke tabel purchase hd

			$data_hs['no_po'] = $number_;
			$data_hs['status'] = 'PR Dibuat';
			$data_hs['action_by'] = $created_po;
			$data_hs['actiontime'] = $createdtime_po;
			$this->m_pembelian->save_purchase_history($data_hs); //simpan ke tabel purchase history

			//untuk log
      		$data_log['user'] = $this->session->login['nama'];
			$data_log['waktu'] = date('Y-m-d H:i:s');
			$nama =  $this->input->post('number_');
			$keterangan =  'Add PR';
			$data_log['ket'] = $keterangan.' '.$nama;
			$data_log['kode'] = $this->input->post('number_');
			$this->m_mom->tambah_log($data_log); //simpan ke tabel log

        //   echo '<pre>';
        //  // print_r ($_POST);
        // echo '</pre>';
       //print POST
        //print_r($this->db->last_query()); //print query
        //exit;

       $this->session->set_flashdata('error', 'PR <strong>Gagal</strong> Ditambahkan!');
       $this->session->set_flashdata('success', 'PR <strong>Berhasil</strong> Ditambahkan!');
       redirect('pembelian/list_permintaan'); //redirect page
    }


    		  public function update_payment($id = NULL) { 
     $data['header_payment'] = $this->input->post('header_payment');
	$data['id_payment'] = $this->input->post('id_payment');
     $data['no_spk'] = $this->input->post('no_spk'); 
	$data['tgl_payment'] = $this->input->post('tgl_payment');
	$data['project_payment'] = $this->input->post('project_payment');
     $data['vendor'] = $this->input->post('vendor');
     $data['almount'] = $this->input->post('almount');
     $data['total_pajak'] = $this->input->post('total_pajak');
	$data['total_payment'] = $this->input->post('total_payment');
	$data['note_payment'] = $this->input->post('note_payment');
	$data['update_payBy'] = $this->session->login['nama'];
	$data['timeupdate_pay'] = $this->input->post('timeupdate_pay');
    	$this->m_payment->simpan_payment($data);

			//untuk log
      		$data_log['user'] = $this->session->login['nama'];
			$data_log['waktu'] = $this->input->post('timeupdate_pay');
			$nama =  $this->input->post('id_payment');
			$keterangan =  'Update Payment';
			$data_log['ket'] = $keterangan.' '.$nama;
			$data_log['kode'] = $this->input->post('id_payment');
			$this->m_mom->tambah_log($data_log); //simpan ke tabel log

        //   echo '<pre>';
        //  // print_r ($_POST);
        // echo '</pre>';
       //print POST
        //print_r($this->db->last_query()); //print query
        //exit;

       	$this->session->set_flashdata('error', 'Payment <strong>Gagal</strong> Ditambahkan!');
        $this->session->set_flashdata('success', 'Payment <strong>Berhasil</strong> Ditambahkan!');
        redirect('user/payment'); //redirect page
    }

    	public function hapus_laporan($id){

				date_default_timezone_set('Asia/Jakarta');
		  	$data_log['user'] = $this->session->login['nama'];
			$data_log['waktu'] = date('Y-m-d H:i:s');
			$data_log['ket'] = 'Hapus Payment';
			$data_log['kode'] = $id;
			$this->m_mom->tambah_log($data_log); //simpan ke tabel jenis izin

		if($this->m_payment->hapus_laporan_payment($id)){
			$this->session->set_flashdata('success', 'Laporan Payment <strong>Berhasil</strong> Dihapus!');
			redirect('user/payment'); //redirect page
		} else {
			$this->session->set_flashdata('error', 'Laporan Payment<strong>Gagal</strong> Dihapus!');
			redirect('user/payment'); //redirect page
		}
	}

	public function d_supp($id_lsp = NULL){
		$this->data['aktif'] = 'list_payment';
		$this->data['title'] = 'List Supplier';
		//$this->data['all_Mom'] = $this->m_mom->lihat();
		$this->data['no'] = 1;
		$this->data['count_task'] = count($this->m_kerja->my_modul()); // get resutl 
		$this->data['view_task'] = $this->m_kerja->my_modul();

		$this->data['supplier'] = $this->m_payment->lihat_supp();

		$this->load->view('user/paym/lihat_supplier', $this->data);
	}
		public function d_vend($id_lsp = NULL){
		$this->data['aktif'] = 'list_payment';
		$this->data['title'] = 'List Vendor';
		//$this->data['all_Mom'] = $this->m_mom->lihat();
		$this->data['no'] = 1;
		$this->data['count_task'] = count($this->m_kerja->my_modul()); // get resutl 
		$this->data['view_task'] = $this->m_kerja->my_modul();

		$this->data['vendor'] = $this->m_payment->lihat();

		$this->load->view('user/paym/lihat_vendor', $this->data);
	}

		public function proses_simpan_vendor(){
			date_default_timezone_set('Asia/Jakarta');
			$atdnc_data['nama_bank_vendor'] = $this->input->post('nama_bank_vendor');
			$atdnc_data['atas_nama_bank'] = $this->input->post('atas_nama_bank');
			$atdnc_data['nama_vendor'] = $this->input->post('nama_vendor');
			$atdnc_data['norek_vendor'] = $this->input->post('norek_vendor');
			$atdnc_data['createdBy_vn'] = $this->session->login['nama'];
      		$atdnc_data['createdTime_vn'] = date('Y-m-d H:i:s');
      		$this->m_payment->save_vendor($atdnc_data); //simpan ke tabel jenis izin

			
		  	$data_log['user'] = $this->session->login['nama'];
			$data_log['waktu'] = date('Y-m-d H:i:s');
			$data_log['ket'] = 'Add Vendor';
			$data_log['kode'] = $this->input->post('nama_vendor');
			$this->m_mom->tambah_log($data_log); //simpan ke tabel jenis izin


			$this->session->set_flashdata('error', 'Vendor <strong>Gagal</strong> Ditambahkan!');
			$this->session->set_flashdata('success', 'Vendor <strong>Berhasil</strong> Ditambahkan!');
			redirect('user/payment/d_vend');
		
      //  echo '<pre>';
     //   print_r ($_POST);
      //  echo '</pre>';
     //   exit;

	}
			public function proses_update_vendor(){
			date_default_timezone_set('Asia/Jakarta');
			$atdnc_data['id_ven'] = $this->input->post('id_ven');
			$atdnc_data['nama_bank_vendor'] = $this->input->post('nama_bank_vendor');
			$atdnc_data['atas_nama_bank'] = $this->input->post('atas_nama_bank');
			$atdnc_data['nama_vendor'] = $this->input->post('nama_vendor');
			$atdnc_data['norek_vendor'] = $this->input->post('norek_vendor');
			$atdnc_data['updateBy_vn'] = $this->session->login['nama'];
      		$atdnc_data['updateTime_vn'] = date('Y-m-d H:i:s');
      		$this->m_payment->update_vendor($atdnc_data); //simpan ke tabel jenis izin

			
		  	$data_log['user'] = $this->session->login['nama'];
			$data_log['waktu'] = date('Y-m-d H:i:s');
			$data_log['ket'] = 'Update Vendor';
			$data_log['kode'] = $this->input->post('nama_vendor');
			$this->m_mom->tambah_log($data_log); //simpan ke tabel jenis izin


			$this->session->set_flashdata('error', 'Vendor <strong>Gagal</strong> Diubah!');
			$this->session->set_flashdata('success', 'Vendor <strong>Berhasil</strong> Diubah!');
			redirect('user/payment/d_vend');
		
      //  echo '<pre>';
     //   print_r ($_POST);
      //  echo '</pre>';
     //   exit;

	}
	    	public function hapus_vendor($id){
			date_default_timezone_set('Asia/Jakarta');
		  	$data_log['user'] = $this->session->login['nama'];
			$data_log['waktu'] = date('Y-m-d H:i:s');
			$data_log['ket'] = 'Hapus Vendor';
			$data_log['kode'] = $id;
			$this->m_mom->tambah_log($data_log); //simpan ke tabel jenis izin

		if($this->m_payment->hapus_vendor($id)){
			$this->session->set_flashdata('success', 'Vendor <strong>Berhasil</strong> Dihapus!');
			redirect('user/payment/d_vend'); //redirect page
		} else {
			$this->session->set_flashdata('error', 'Vendor<strong>Gagal</strong> Dihapus!');
			redirect('user/payment/d_vend'); //redirect page
		}
	}
			public function proses_simpan_supplier(){
			date_default_timezone_set('Asia/Jakarta');
			$atdnc_data['supp_name'] = $this->input->post('supp_name');
			$atdnc_data['supp_rekname'] = $this->input->post('supp_rekname');
			$atdnc_data['supp_norek'] = $this->input->post('supp_norek');
			$atdnc_data['createdBy_supp'] = $this->session->login['nama'];
      		$atdnc_data['createdTime_supp'] = date('Y-m-d H:i:s');
      		$this->m_payment->save_supplier($atdnc_data); //simpan ke tabel jenis izin

			
		  	$data_log['user'] = $this->session->login['nama'];
			$data_log['waktu'] = date('Y-m-d H:i:s');
			$data_log['ket'] = 'Add Supplier';
			$data_log['kode'] = $this->input->post('supp_name');
			$this->m_mom->tambah_log($data_log); //simpan ke tabel jenis izin


			$this->session->set_flashdata('error', 'Vendor <strong>Gagal</strong> Ditambahkan!');
			$this->session->set_flashdata('success', 'Vendor <strong>Berhasil</strong> Ditambahkan!');
			redirect('user/payment/d_supp');
		
      //  echo '<pre>';
     //   print_r ($_POST);
      //  echo '</pre>';
     //   exit;

	}
				public function proses_update_supplier(){
			date_default_timezone_set('Asia/Jakarta');
			$atdnc_data['id_supp'] = $this->input->post('id_supp');
			$atdnc_data['supp_name'] = $this->input->post('supp_name');
			$atdnc_data['supp_rekname'] = $this->input->post('supp_rekname');
			$atdnc_data['supp_norek'] = $this->input->post('supp_norek');
			$atdnc_data['updateBy_supp'] = $this->session->login['nama'];
      		$atdnc_data['updateTime_supp'] = date('Y-m-d H:i:s');
      		$this->m_payment->update_supplier($atdnc_data); //simpan ke tabel jenis izin

			
		  	$data_log['user'] = $this->session->login['nama'];
			$data_log['waktu'] = date('Y-m-d H:i:s');
			$data_log['ket'] = 'Update Supplier';
			$data_log['kode'] = $this->input->post('supp_name');
			$this->m_mom->tambah_log($data_log); //simpan ke tabel jenis izin


			$this->session->set_flashdata('error', 'Vendor <strong>Gagal</strong> Ditambahkan!');
			$this->session->set_flashdata('success', 'Vendor <strong>Berhasil</strong> Ditambahkan!');
			redirect('user/payment/d_supp');
		
      //  echo '<pre>';
     //   print_r ($_POST);
      //  echo '</pre>';
     //   exit;

	}
		   public function hapus_supplier($id){
			date_default_timezone_set('Asia/Jakarta');
		  	$data_log['user'] = $this->session->login['nama'];
			$data_log['waktu'] = date('Y-m-d H:i:s');
			$data_log['ket'] = 'Hapus Supplier';
			$data_log['kode'] = $id;
			$this->m_mom->tambah_log($data_log); //simpan ke tabel jenis izin

		if($this->m_payment->hapus_supplier($id)){
			$this->session->set_flashdata('success', 'Supplier <strong>Berhasil</strong> Dihapus!');
			redirect('user/payment/d_supp'); //redirect page
		} else {
			$this->session->set_flashdata('error', 'Supplier <strong>Gagal</strong> Dihapus!');
			redirect('user/payment/d_supp'); //redirect page
		}
	}
}
