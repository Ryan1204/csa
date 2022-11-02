<?php

class M_leads extends CI_Model{
	protected $_table = 'leads_project';
	protected $_table_log = 'cassa_log';
	protected $_table1 = 'cassa_status_project'; 
	protected $_table_issueDT = 'tbl_issue_sub'; 
public function tambah_log($data){
        return $this->db->insert($this->_table_log, $data);
    }
 function deleted_daily($id)
 	{
  $this->db->where('id_stts_log', $id);
  $this->db->delete('tbl_status_log_proyek');
 	}
	public function lihat(){
		$query = $this->db->get($this->_table);
		return $query->result();
	}
	public function lihat_status_project(){
		$query = $this->db->get($this->_table1);
		return $query->result();
	}
	public function jumlah(){ 
		$query = $this->db->get($this->_table);
		return $query->num_rows();
	}
	public function pending(){ 
		$query = $this->db->get_where($this->_table, 'status_project = "PENDING"');
		return $query->result();
	}
	public function tender(){ 
		$query = $this->db->get_where($this->_table, 'status_project = "TENDER"');
		return $query->result();
	}
	public function ongoing(){ 
		$query = $this->db->get_where($this->_table, 'status_project = "ON GOING"');
		return $query->result();
	}
	public function finish(){ 
		$query = $this->db->get_where($this->_table, 'status_project = "FINISH"');
		return $query->result();
	}
	public function loose(){ 
		$query = $this->db->get_where($this->_table, 'status_project = "LOOSE"');
		return $query->result();
	}
	public function lihat_stok(){
		$query = $this->db->get_where($this->_table, 'stok > 1');
		return $query->result();
	}

	public function lihat_id($id_lsp){
		$query = $this->db->get_where($this->_table, ['id_lsp' => $id_lsp]);
		return $query->row();
	}

	public function lihat_nama_barang($nama_barang){
		$query = $this->db->select('*');
		$query = $this->db->where(['nama_barang' => $nama_barang]);
		$query = $this->db->get($this->_table);
		return $query->row();
	}

	public function tambah($data){
		return $this->db->insert($this->_table, $data);
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

	public function hapus($id_lsp){
		return $this->db->delete($this->_table, ['id_lsp' => $id_lsp]);
	}
	public function hapus_issue_dt($id_sub_issue){
		return $this->db->delete($this->_table_issueDT, ['id_sub_issue' => $id_sub_issue]);
	}
	public function kode_leadsproject(){

        $q = $this->db->query("SELECT MAX(RIGHT(id_lsp,4)) AS id_lsp FROM leads_project WHERE DATE(createdtime)=CURDATE()");
        $kd = "";
        if($q->num_rows()>0){
            foreach($q->result() as $k){
                $tmp = ((int)$k->id_lsp)+1;
                $kd = sprintf("%04s", $tmp);
            }
        }else{
            $kd = "0001";
        }
        date_default_timezone_set('Asia/Jakarta');
        return "LDP".date('dmy').$kd;  
	}

	public function save_project($atdnc_data) 
    {
    $query = $this->db->query("SELECT * FROM leads_project WHERE id_lsp = '{$atdnc_data['id_lsp']}' ");
    $result = $query->result_array();
    $count = count($result);

    if (empty($count)) {

        $this->db->insert('leads_project', $atdnc_data); 
    }
    elseif ($count == 1) {
        $kondisi = "( ( ( id_lsp ='" . $atdnc_data['id_lsp'] . "')) )";
        $this->db->where($kondisi);
        $this->db->update('leads_project', $atdnc_data); 
    }
}
}