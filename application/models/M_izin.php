<?php

class M_izin extends CI_Model{
	protected $_table = 'cassa_kategori_izin';
    protected $_table_log = 'cassa_log';
    protected $_table_leads = 'leads_project';
    protected $_table_i = 'cassa_izin';
    protected $_table_id = 'cassa_transaksi_asset';


	public function lihat(){
		$query = $this->db->get($this->_table);
		return $query->result();
	}
	public function get3(){
		$query = $this->db->get($this->_table_status);
		return $query->result();
	}
    public function get_leads(){
        $query = $this->db->get($this->_table_leads);
        return $query->result();
    }
	public function jumlah(){
		$query = $this->db->get($this->_table);
		return $query->num_rows();
	}

	public function lihat_stok(){
		$query = $this->db->get_where($this->_table, 'stok > 1');
		return $query->result();
	}

	public function lihat_id($id_asset){
		$query = $this->db->get_where($this->_table, ['id_asset' => $id_asset]);
		return $query->row();
	}


	public function tambah($data){
		return $this->db->insert($this->_table_log, $data);
	}
    public function kode_kategori(){

        $q = $this->db->query("SELECT MAX(RIGHT(kode_kategori,3)) AS kode_kategori FROM cassa_kategori_izin WHERE DATE(createdtime)=CURDATE()");
        $kd = "";
        if($q->num_rows()>0){
            foreach($q->result() as $k){
                $tmp = ((int)$k->kode_kategori)+1;
                $kd = sprintf("%03s", $tmp);
            }
        }else{
            $kd = "001";
        }
        date_default_timezone_set('Asia/Jakarta');
        return "HRD".date('dmy').$kd;  
    }

        public function kode_fpi(){

        $q = $this->db->query("SELECT MAX(RIGHT(kode_izin,4)) AS kode_izin FROM cassa_izin WHERE DATE(tgl_pengajuan)=CURDATE()");
        $kd = "";
        if($q->num_rows()>0){
            foreach($q->result() as $k){
                $tmp = ((int)$k->kode_izin)+1;
                $kd = sprintf("%04s", $tmp);
            }
        }else{
            $kd = "0001";
        }
        date_default_timezone_set('Asia/Jakarta');
        return "FPI".date('dmy').$kd;  
    }
	public function plus_stok($stok, $nama_barang){
		$query = $this->db->set('stok', 'stok+' . $stok, false);
		$query = $this->db->where('nama_barang', $nama_barang);
		$query = $this->db->update($this->_table);
		return $query;
	}

	public function min_stok($stok, $nama_barang){
		$query = $this->db->set('stok', 'stok-' . $stok, false);
		$query = $this->db->where('nama_barang', $nama_barang);
		$query = $this->db->update($this->_table);
		return $query;
	}

	public function ubah($data, $kode_barang){
		$query = $this->db->set($data);
		$query = $this->db->where(['kode_barang' => $kode_barang]);
		$query = $this->db->update($this->_table);
		return $query;
	}


	public function hapus($id){
		return $this->db->delete($this->_table, ['kode_kategori' => $id]);
	}

    public function hapus_izin($id){
        return $this->db->delete('cassa_izin', ['kode_izin' => $id]);
    }
    public function get_by($where, $single = FALSE) {
        $this->db->where($where);
        return $this->get(NULL, $single);
    }

    public function save_kategori_izin($atdnc_data) 
    {
    $query = $this->db->query("SELECT * FROM cassa_kategori_izin WHERE kode_kategori = '{$atdnc_data['kode_kategori']}' ");
    $result = $query->result_array();
    $count = count($result);

    if (empty($count)) {

        $this->db->insert('cassa_kategori_izin', $atdnc_data); 
    }
    elseif ($count == 1) {
        $kondisi = "( ( ( kode_kategori ='" . $atdnc_data['kode_kategori'] . "')) )";
        $this->db->where($kondisi);
        $this->db->update('cassa_kategori_izin', $atdnc_data); 
    }
    }

        public function save_izin($atdnc_data) 
    {
    $query = $this->db->query("SELECT * FROM cassa_izin WHERE kode_izin = '{$atdnc_data['kode_izin']}' ");
    $result = $query->result_array();
    $count = count($result);

    if (empty($count)) {

        $this->db->insert('cassa_izin', $atdnc_data); 
    }
    elseif ($count == 1) {
        $kondisi = "( ( ( kode_izin ='" . $atdnc_data['kode_izin'] . "')) )";
        $this->db->where($kondisi);
        $this->db->update('cassa_izin', $atdnc_data); 
    }
    }

    public function approve_izin($atdnc_data) 
    {
    $query = $this->db->query("SELECT * FROM cassa_izin WHERE kode_izin = '{$atdnc_data['kode_izin']}' ");
    $result = $query->result_array();
    $count = count($result);

    if (empty($count)) {

        $this->db->insert('cassa_izin', $atdnc_data); 
    }
    elseif ($count == 1) {
        $kondisi = "( ( ( kode_izin ='" . $atdnc_data['kode_izin'] . "')) )";
        $this->db->where($kondisi);
        $this->db->update('cassa_izin', $atdnc_data); 
    }
    }

    public function persetujuan_atasan($dept = NULL) { 
        $this->db->select('cassa_karyawan.*', FALSE);
        $this->db->select('cassa_divisi.*', FALSE);
        $this->db->select('cassa_department.*', FALSE);
        $this->db->select('cassa_izin.*', FALSE);
         $this->db->select('cassa_kategori_izin.*', FALSE);
        $this->db->from('cassa_izin');
        $this->db->join('cassa_karyawan', 'cassa_karyawan.EmployeeID  = cassa_izin.EmployeeID', 'left');
        $this->db->join('cassa_kategori_izin', 'cassa_kategori_izin.jenis  = cassa_izin.kategori', 'left');
        $this->db->join('cassa_divisi', 'cassa_karyawan.divisi  = cassa_divisi.id_div', 'left');
        $this->db->join('cassa_department', 'cassa_divisi.id_dept  = cassa_department.id_dept', 'left');
        $this->db->order_by('cassa_izin.tgl_pengajuan','DESC');
      //  $this->db->order_by('cassa_mom.status', 'DESC');
        $kondisi = "( ( (cassa_izin.status='" . 1 . "') AND (cassa_karyawan.Active='" . 1 . "' )) )";
       
        $this->db->where($kondisi);

        if (!empty($id)) {
            $query_result = $this->db->get();
            $result = $query_result->row();
        } else {
            //$this->db->where('cassa_mom.id_lsp', $id_lsp);
            $query_result = $this->db->get();
            $result = $query_result->result();
        }

        return $result;
    }  
        public function butuh_persetujuan($id = NULL) { 
        $this->db->select('cassa_karyawan.*', FALSE);
        $this->db->select('cassa_divisi.*', FALSE);
        $this->db->select('cassa_department.*', FALSE);
        $this->db->select('cassa_izin.*', FALSE);
         $this->db->select('cassa_kategori_izin.*', FALSE);
        $this->db->from('cassa_izin');
        $this->db->join('cassa_karyawan', 'cassa_karyawan.EmployeeID  = cassa_izin.EmployeeID', 'left');
        $this->db->join('cassa_kategori_izin', 'cassa_kategori_izin.jenis  = cassa_izin.kategori', 'left');
        $this->db->join('cassa_divisi', 'cassa_karyawan.divisi  = cassa_divisi.id_div', 'left');
        $this->db->join('cassa_department', 'cassa_divisi.id_dept  = cassa_department.id_dept', 'left');
        $this->db->order_by('cassa_izin.tgl_pengajuan','DESC');
        $this->db->where('cassa_karyawan.supervisorID', $this->session->login['kode']);
      //  $this->db->order_by('cassa_mom.status', 'DESC');
        $kondisi = "( ( (cassa_izin.status='" . 1 . "') AND (cassa_karyawan.Active='" . 1 . "' )) )";
       
        $this->db->where($kondisi);
        $query_result = $this->db->get();
        $result = $query_result->result();
        return $result;
    } 
        public function butuh_persetujuan_hrd($id = NULL) { 
        $this->db->select('cassa_karyawan.*', FALSE);
        $this->db->select('cassa_divisi.*', FALSE);
        $this->db->select('cassa_department.*', FALSE);
        $this->db->select('cassa_izin.*', FALSE);
         $this->db->select('cassa_kategori_izin.*', FALSE);
        $this->db->from('cassa_izin');
        $this->db->join('cassa_karyawan', 'cassa_karyawan.EmployeeID  = cassa_izin.EmployeeID', 'left');
        $this->db->join('cassa_kategori_izin', 'cassa_kategori_izin.jenis  = cassa_izin.kategori', 'left');
        $this->db->join('cassa_divisi', 'cassa_karyawan.divisi  = cassa_divisi.id_div', 'left');
        $this->db->join('cassa_department', 'cassa_divisi.id_dept  = cassa_department.id_dept', 'left');
        $this->db->order_by('cassa_izin.tgl_pengajuan','DESC');
        $this->db->where('cassa_karyawan.supervisorID', $this->session->login['kode']);
      //  $this->db->order_by('cassa_mom.status', 'DESC');
        $kondisi = "( ( (cassa_izin.status='" . 2 . "') AND (cassa_karyawan.Active='" . 1 . "' )) )";
       
        $this->db->where($kondisi);
        $query_result = $this->db->get();
        $result = $query_result->result();
        return $result;
    } 
        public function telah_disetujui_hrd($id = NULL) { 
        $this->db->select('cassa_karyawan.*', FALSE);
        $this->db->select('cassa_divisi.*', FALSE);
        $this->db->select('cassa_department.*', FALSE);
        $this->db->select('cassa_izin.*', FALSE);
         $this->db->select('cassa_kategori_izin.*', FALSE);
        $this->db->from('cassa_izin');
        $this->db->join('cassa_karyawan', 'cassa_karyawan.EmployeeID  = cassa_izin.EmployeeID', 'left');
        $this->db->join('cassa_kategori_izin', 'cassa_kategori_izin.jenis  = cassa_izin.kategori', 'left');
        $this->db->join('cassa_divisi', 'cassa_karyawan.divisi  = cassa_divisi.id_div', 'left');
        $this->db->join('cassa_department', 'cassa_divisi.id_dept  = cassa_department.id_dept', 'left');
        $this->db->order_by('cassa_izin.tgl_pengajuan','DESC');
        $this->db->where('cassa_karyawan.supervisorID', $this->session->login['kode']);
      //  $this->db->order_by('cassa_mom.status', 'DESC');
        $kondisi = "( ( (cassa_izin.status='" . 3 . "') AND (cassa_karyawan.Active='" . 1 . "' )) )";
       
        $this->db->where($kondisi);
        $query_result = $this->db->get();
        $result = $query_result->result();
        return $result;
    } 

    public function telah_ditolak_hrd($id = NULL) { 
        $this->db->select('cassa_karyawan.*', FALSE);
        $this->db->select('cassa_divisi.*', FALSE);
        $this->db->select('cassa_department.*', FALSE);
        $this->db->select('cassa_izin.*', FALSE);
         $this->db->select('cassa_kategori_izin.*', FALSE);
        $this->db->from('cassa_izin');
        $this->db->join('cassa_karyawan', 'cassa_karyawan.EmployeeID  = cassa_izin.EmployeeID', 'left');
        $this->db->join('cassa_kategori_izin', 'cassa_kategori_izin.jenis  = cassa_izin.kategori', 'left');
        $this->db->join('cassa_divisi', 'cassa_karyawan.divisi  = cassa_divisi.id_div', 'left');
        $this->db->join('cassa_department', 'cassa_divisi.id_dept  = cassa_department.id_dept', 'left');
        $this->db->order_by('cassa_izin.tgl_pengajuan','DESC');
        $this->db->where('cassa_karyawan.supervisorID', $this->session->login['kode']);
      //  $this->db->order_by('cassa_mom.status', 'DESC');
        $kondisi = "( ( (cassa_izin.status='" . 4 . "') AND (cassa_karyawan.Active='" . 1 . "' )) )";
       
        $this->db->where($kondisi);
        $query_result = $this->db->get();
        $result = $query_result->result();
        return $result;
    } 
        public function my_persetujuan_atasan($id = NULL) { 
        $this->db->select('cassa_karyawan.*', FALSE);
        $this->db->select('cassa_divisi.*', FALSE);
        $this->db->select('cassa_department.*', FALSE);
        $this->db->select('cassa_izin.*', FALSE);
         $this->db->select('cassa_kategori_izin.*', FALSE);
        $this->db->from('cassa_izin');
        $this->db->join('cassa_karyawan', 'cassa_karyawan.EmployeeID  = cassa_izin.EmployeeID', 'left');
        $this->db->join('cassa_kategori_izin', 'cassa_kategori_izin.jenis  = cassa_izin.kategori', 'left');
        $this->db->join('cassa_divisi', 'cassa_karyawan.divisi  = cassa_divisi.id_div', 'left');
        $this->db->join('cassa_department', 'cassa_divisi.id_dept  = cassa_department.id_dept', 'left');
        $this->db->order_by('cassa_izin.tgl_pengajuan','DESC');
      //  $this->db->order_by('cassa_mom.status', 'DESC');
        $kondisi = "( ( (cassa_izin.status='" . 1 . "') AND (cassa_karyawan.Active='" . 1 . "' )AND (cassa_izin.EmployeeID='" . $id . "' )) )";
       
        $this->db->where($kondisi);
      //  $this->db->where('cassa_karyawan.EmployeeID', $id);
        if (!empty($id)) {
            $query_result = $this->db->get();
            $result = $query_result->result();
        } else {
            // $this->db->where('cassa_karyawan.EmployeeID', $id);
            $query_result = $this->db->get();
            $result = $query_result->result();
        }

        return $result;
    }  
    public function my_persetujuan_hrd($id = NULL) { 
        $this->db->select('cassa_karyawan.*', FALSE);
        $this->db->select('cassa_divisi.*', FALSE);
        $this->db->select('cassa_department.*', FALSE);
        $this->db->select('cassa_izin.*', FALSE);
         $this->db->select('cassa_kategori_izin.*', FALSE);
        $this->db->from('cassa_izin');
        $this->db->join('cassa_karyawan', 'cassa_karyawan.EmployeeID  = cassa_izin.EmployeeID', 'left');
        $this->db->join('cassa_kategori_izin', 'cassa_kategori_izin.jenis  = cassa_izin.kategori', 'left');
        $this->db->join('cassa_divisi', 'cassa_karyawan.divisi  = cassa_divisi.id_div', 'left');
        $this->db->join('cassa_department', 'cassa_divisi.id_dept  = cassa_department.id_dept', 'left');
        $this->db->order_by('cassa_izin.tgl_pengajuan','DESC');
      //  $this->db->order_by('cassa_mom.status', 'DESC');
        $kondisi = "( ( (cassa_izin.status='" . 2 . "') AND (cassa_karyawan.Active='" . 1 . "' )AND (cassa_izin.EmployeeID='" . $id . "' )) )";
       
        $this->db->where($kondisi);

        if (!empty($id)) {
            $query_result = $this->db->get();
            $result = $query_result->result();
        } else {
            //$this->db->where('cassa_mom.id_lsp', $id_lsp);
            $query_result = $this->db->get();
            $result = $query_result->result();
        }

        return $result;
    } 
    public function my_disetujui($id = NULL) { 
        $this->db->select('cassa_karyawan.*', FALSE);
        $this->db->select('cassa_divisi.*', FALSE);
        $this->db->select('cassa_department.*', FALSE);
        $this->db->select('cassa_izin.*', FALSE);
         $this->db->select('cassa_kategori_izin.*', FALSE);
        $this->db->from('cassa_izin');
        $this->db->join('cassa_karyawan', 'cassa_karyawan.EmployeeID  = cassa_izin.EmployeeID', 'left');
        $this->db->join('cassa_kategori_izin', 'cassa_kategori_izin.jenis  = cassa_izin.kategori', 'left');
        $this->db->join('cassa_divisi', 'cassa_karyawan.divisi  = cassa_divisi.id_div', 'left');
        $this->db->join('cassa_department', 'cassa_divisi.id_dept  = cassa_department.id_dept', 'left');
        $this->db->order_by('cassa_izin.tgl_pengajuan','DESC');
      //  $this->db->order_by('cassa_mom.status', 'DESC');
        $kondisi = "( ( (cassa_izin.status='" . 3 . "') AND (cassa_karyawan.Active='" . 1 . "' )AND (cassa_izin.EmployeeID='" . $id . "' )) )";
       
        $this->db->where($kondisi);

        if (!empty($id)) {
            $query_result = $this->db->get();
            $result = $query_result->result();
        } else {
            //$this->db->where('cassa_mom.id_lsp', $id_lsp);
            $query_result = $this->db->get();
            $result = $query_result->result();
        }

        return $result;
    } 

        public function my_ditolak($id = NULL) { 
        $this->db->select('cassa_karyawan.*', FALSE);
        $this->db->select('cassa_divisi.*', FALSE);
        $this->db->select('cassa_department.*', FALSE);
        $this->db->select('cassa_izin.*', FALSE);
         $this->db->select('cassa_kategori_izin.*', FALSE);
        $this->db->from('cassa_izin');
        $this->db->join('cassa_karyawan', 'cassa_karyawan.EmployeeID  = cassa_izin.EmployeeID', 'left');
        $this->db->join('cassa_kategori_izin', 'cassa_kategori_izin.jenis  = cassa_izin.kategori', 'left');
        $this->db->join('cassa_divisi', 'cassa_karyawan.divisi  = cassa_divisi.id_div', 'left');
        $this->db->join('cassa_department', 'cassa_divisi.id_dept  = cassa_department.id_dept', 'left');
        $this->db->order_by('cassa_izin.tgl_pengajuan','DESC');
      //  $this->db->order_by('cassa_mom.status', 'DESC');
        $kondisi = "( ( (cassa_izin.status='" . 4 . "') AND (cassa_karyawan.Active='" . 1 . "' )AND (cassa_izin.EmployeeID='" . $id . "' )) )";
       
        $this->db->where($kondisi);

        if (!empty($id)) {
            $query_result = $this->db->get();
            $result = $query_result->result();
        } else {
            //$this->db->where('cassa_mom.id_lsp', $id_lsp);
            $query_result = $this->db->get();
            $result = $query_result->result();
        }

        return $result;
    } 
        public function persetujuan_hrd($dept = NULL) { 
        $this->db->select('cassa_karyawan.*', FALSE);
        $this->db->select('cassa_divisi.*', FALSE);
        $this->db->select('cassa_department.*', FALSE);
        $this->db->select('cassa_izin.*', FALSE);
         $this->db->select('cassa_kategori_izin.*', FALSE);
        $this->db->from('cassa_izin');
        $this->db->join('cassa_karyawan', 'cassa_karyawan.EmployeeID  = cassa_izin.EmployeeID', 'left');
        $this->db->join('cassa_kategori_izin', 'cassa_kategori_izin.jenis  = cassa_izin.kategori', 'left');
        $this->db->join('cassa_divisi', 'cassa_karyawan.divisi  = cassa_divisi.id_div', 'left');
        $this->db->join('cassa_department', 'cassa_divisi.id_dept  = cassa_department.id_dept', 'left');
        $this->db->order_by('cassa_izin.tgl_pengajuan','DESC');
      //  $this->db->order_by('cassa_mom.status', 'DESC');
        $kondisi = "( ( (cassa_izin.status='" . 2 . "') AND (cassa_karyawan.Active='" . 1 . "' )) )";
       
        $this->db->where($kondisi);

        if (!empty($id)) {
            $query_result = $this->db->get();
            $result = $query_result->row();
        } else {
            //$this->db->where('cassa_mom.id_lsp', $id_lsp);
            $query_result = $this->db->get();
            $result = $query_result->result();
        }

        return $result;
    } 

       public function disetujui($dept = NULL) { 
        $this->db->select('cassa_karyawan.*', FALSE);
        $this->db->select('cassa_divisi.*', FALSE);
        $this->db->select('cassa_department.*', FALSE);
        $this->db->select('cassa_izin.*', FALSE);
        $this->db->from('cassa_izin');
        $this->db->join('cassa_karyawan', 'cassa_karyawan.EmployeeID  = cassa_izin.EmployeeID', 'left');
        $this->db->join('cassa_divisi', 'cassa_karyawan.divisi  = cassa_divisi.id_div', 'left');
        $this->db->join('cassa_department', 'cassa_divisi.id_dept  = cassa_department.id_dept', 'left');
        $this->db->order_by('cassa_izin.tgl_pengajuan','DESC');
      //  $this->db->order_by('cassa_mom.status', 'DESC');
        $kondisi = "( ( (cassa_izin.status='" . 3 . "') AND (cassa_karyawan.Active='" . 1 . "' )) )";
       
        $this->db->where($kondisi);

        if (!empty($id)) {
            $query_result = $this->db->get();
            $result = $query_result->row();
        } else {
            //$this->db->where('cassa_mom.id_lsp', $id_lsp);
            $query_result = $this->db->get();
            $result = $query_result->result();
        }

        return $result;
    } 

        public function ditolak($dept = NULL) { 
        $this->db->select('cassa_karyawan.*', FALSE);
        $this->db->select('cassa_divisi.*', FALSE);
        $this->db->select('cassa_department.*', FALSE);
        $this->db->select('cassa_izin.*', FALSE);
        $this->db->from('cassa_izin');
        $this->db->join('cassa_karyawan', 'cassa_karyawan.EmployeeID  = cassa_izin.EmployeeID', 'left');
        $this->db->join('cassa_divisi', 'cassa_karyawan.divisi  = cassa_divisi.id_div', 'left');
        $this->db->join('cassa_department', 'cassa_divisi.id_dept  = cassa_department.id_dept', 'left');
        $this->db->order_by('cassa_izin.tgl_pengajuan','DESC');
      //  $this->db->order_by('cassa_mom.status', 'DESC');
        $kondisi = "( ( (cassa_izin.status='" . 4 . "') AND (cassa_karyawan.Active='" . 1 . "' )) )";
       
        $this->db->where($kondisi);

        if (!empty($id)) {
            $query_result = $this->db->get();
            $result = $query_result->row();
        } else {
            //$this->db->where('cassa_mom.id_lsp', $id_lsp);
            $query_result = $this->db->get();
            $result = $query_result->result();
        }

        return $result;
    }
    public function save_ya($atdnc_dat) 
{
    $query = $this->db->query("SELECT * FROM cassa_kehadiran WHERE EmployeeID = '{$atdnc_dat['EmployeeID']}'  and tanggal = '{$atdnc_dat["tanggal"]}' ");
    $result = $query->result_array();
    $count = count($result);

    if (empty($count)) {

        $this->db->insert('cassa_kehadiran', $atdnc_dat); 
    }
    elseif ($count == 1) {
        $kondisi = "( ( ( EmployeeID ='" . $atdnc_dat['EmployeeID'] . "') AND (tanggal='" . $atdnc_dat["tanggal"] . "' )) )";
        $this->db->where($kondisi);
       // $this->db->where('userid', $atdnc_data['userid'] OR 'date', $atdnc_data["date"] );
        $this->db->update('cassa_kehadiran', $atdnc_dat); 
    }
}


}