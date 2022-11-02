<?php

class Dashboard extends CI_Controller{
	public function __construct(){
		parent::__construct();
		if($this->session->login['role'] != 'petugas' && $this->session->login['role'] != 'admin') redirect(logout);
		$this->data['aktif'] = 'dashboard';
		$this->load->model('M_mom', 'm_mom');
		$this->load->model('M_izin', 'm_izin');
		$this->load->model('M_leads', 'm_leads');
		$this->load->model('M_karyawan', 'm_karyawan');
		$this->load->model('M_kehadiran', 'm_kehadiran');
		$this->load->model('M_log', 'm_log');
		$this->load->model('M_asset', 'm_asset');
		$this->load->model('M_kerja', 'm_kerja');
		$this->load->model('M_admin', 'm_admin'); 
		$this->load->model('Notify_Model');
		$this->load->model('M_reimburs', 'm_reimburs');
		$this->load->model('M_payment', 'm_payment');
	}
	 public function user_notifi()
    {
                
          $v=$this->input->post('view');
        echo  $op= $this->Notify_Model->fetch_data($v);
         
          return $op;
    
    }
	public function index(){
		$this->data['title'] = 'Halaman Dashboard';
		$this->data['jumlah_leads'] = $this->m_leads->jumlah();
		$this->data['pending'] = count($this->m_leads->pending()); // get resutl 
		$this->data['tender'] = count($this->m_leads->tender()); // get resutl 
		$this->data['ongoing'] = count($this->m_leads->ongoing()); // get resutl
		$this->data['finish'] = count($this->m_leads->finish()); // get resutl 
		$this->data['loose'] = count($this->m_leads->loose()); // get resutl

		$this->data['jumlah_mom'] = count($this->m_mom->view_mom_all()); // get resutl 
		$this->data['jumlah_mom_goal'] = count($this->m_mom->mom_goal()); // get resutl
		$this->data['jumlah_no_goal'] = count($this->m_mom->mom_nogoal()); // get resutl  

		$this->data['employee_aktif'] = count($this->m_karyawan->lihat_aktif()); // get resutl
		$this->data['employee_percobaan'] = count($this->m_karyawan->get_karyawan_percobaan()); // get resutl
		$this->data['employee_kontrak'] = count($this->m_karyawan->get_karyawan_kontrak()); // get resutl
		$this->data['employee_tetap'] = count($this->m_karyawan->get_karyawan_tetap()); // get resutl
		$this->data['employee_nonaktif'] = count($this->m_karyawan->lihat_nonaktif()); // get resutl

		$this->data['izin_atasan'] = count($this->m_izin->persetujuan_atasan()); // get resutl
		$this->data['izin_hrd'] = count($this->m_izin->persetujuan_hrd()); // get resutl
		$this->data['izin_disetujui'] = count($this->m_izin->disetujui()); // get resutl
		$this->data['izin_ditolak'] = count($this->m_izin->ditolak()); // get resutl
		$this->data['count_absen'] = count($this->m_kehadiran->jumalh_absen_hari_ini()); // get resutl
		$this->data['count_modulkerjaproses'] = count($this->m_kerja->lihat_modul_proses()); // get resutl
		$this->data['count_modulkerja'] = count($this->m_kerja->lihat_modul()); // get resutl
		$this->data['count_modulkerja_finish'] = count($this->m_kerja->modul_finish()); // get resutl

		$this->data['count_comment']= count($this->m_kerja->notif_penerima_count()); // get resutl
		$this->data['view_comment']= $this->m_kerja->notif_penerima_count1();

		$this->data['masa_kerja'] = $this->m_karyawan->get_masa_kerja(); // get resutl
		$this->data['wajib_pajak'] = $this->m_asset->tampil_wajib_pajak(); // get resutl
		$this->data['log'] = $this->m_log->lihat();

		$this->data['atasan'] = $this->m_izin->persetujuan_atasan();
		$this->data['hrd'] = $this->m_izin->persetujuan_hrd();

		$this->data['reimbursment_count'] = count($this->m_reimburs->lihat_reimburs1()); // get resutl
		$this->data['reimbursment_count2'] = count($this->m_reimburs->lihat_reimburs2()); // get resutl
		$this->data['reimbursment_count3'] = count($this->m_reimburs->lihat_reimburs3()); // get resutl
		$this->data['reimbursment_count4'] = count($this->m_reimburs->lihat_reimburs4()); // get resutl
		
		$this->data['payment_count2'] = count($this->m_payment->lihat_payment1()); // get resutl
    $this->data['payment_count3'] = count($this->m_payment->lihat_payment2()); // get resutl
    $this->data['payment_count4'] = count($this->m_payment->lihat_payment3()); // get resutl

		$this->data['reimbursment_count'] = count($this->m_reimburs->lihat_reimburs1()); // get resutl
		$this->data['reimbursment'] = $this->m_reimburs->lihat_reimburs1();
		$this->data['pngumuman'] = $this->m_admin->get_pengumuman_aktif(); // get resutl
		$this->data['count_paymen1'] = count($this->m_payment->count_payment_status()); // get resutl
		$this->load->view('dashboard', $this->data);
	}

		function data_log(){

		$this->data= $this->m_log->lihat();
		echo json_encode($this->data);
		
	}

		function proses_update(){
 
             date_default_timezone_set('Asia/Jakarta');
            $where = array('kepada' => $this->session->login['nama']);
            $updata['status_baca'] = '2';

            $this->m_reimburs->set_action($where, $updata, 'tbl_notif');
            redirect('mod_kerja/proses');
		
	}

	    	 public function user_notifi_admin()
    {      
        $v=$this->input->post('view');
        echo  $op= $this->m_admin->fetch_data_admin($v);
        return $op;
    
    }
}