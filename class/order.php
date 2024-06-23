<?php

include "koneksi.php";


class order extends database
{

	function __construct()
	{
		$this->getConnection();
	}

	public function input($id_user, $id_paket, $sertifikat, $id_hotel, $tgl_pesan, $tgl_tour)
	{
		$db = new database();
		$sql = "INSERT INTO `tbl_pesan`( `id_user`, `sertifikat`,`id_paket`, `id_hotel`,  `tgl_pesan`, `tgl_tour`)
		values('$id_user','$sertifikat','$id_paket', '$id_hotel',NOW(),'$tgl_tour')";


		move_uploaded_file($_FILES['sertifikat']['tmp_name'], "foto/" . $_FILES['sertifikat']['name']);
		$result = mysqli_query($this->getConnection(), $sql);
		echo $sql;
		echo "<script>alert('Gambar Berhasil diupload !');history.go(-1);</script>";
	}
	function update($id_pesan, $status)
	{

		$sql = "UPDATE tbl_pesan SET  status='$status'  WHERE id_pesan='$id_pesan'";
		$result = mysqli_query($this->getConnection(), $sql);
	}

	function hapus($id_pesan)
	{
		$sql = "DELETE from tbl_pesan where id_pesan=" . $id_pesan;
		$result = mysqli_query($this->getConnection(), $sql);
	}


	function tampil_data()
	{
		$sql = "select * from tbl_pesan,tbl_user,tbl_paket,tbl_hotel where tbl_pesan.id_user=tbl_user.id_user and tbl_pesan.id_paket=tbl_paket.id_paket and tbl_pesan.id_hotel=tbl_hotel.id_hotel ";
		$result = mysqli_query($this->getConnection(), $sql);
		$hasil = null;
		$baris = mysqli_num_rows($result);
		if ($baris > 0) {
			while ($row = mysqli_fetch_array($result)) {
				$hasil[] = $row;
			}
		}


		return $hasil;
	}

	function cek_bukti($id_pesan)
	{
		$sql = "select*from tbl_pesan,tbl_user where tbl_pesan.id_user=tbl_user.id_user and id_pesan=$id_pesan  ";
		$result = mysqli_query($this->getConnection(), $sql);
		$hasil = null;
		$baris = mysqli_num_rows($result);
		if ($baris > 0) {
			while ($row = mysqli_fetch_array($result)) {
				$hasil[] = $row;
			}
		}

		return $hasil;
	}


	function tampil_bukti()
	{
		$sql = "select tbl_user.nama_user,tbl_pesan.id_pesan,tbl_bukti.file from tbl_pesan,tbl_user,tbl_bukti where tbl_pesan.id_user=tbl_user.id_user and tbl_pesan.id_pesan=tbl_bukti.id_pesan ";
		$result = mysqli_query($this->getConnection(), $sql);
		$hasil = null;
		$baris = mysqli_num_rows($result);
		if ($baris > 0) {
			while ($row = mysqli_fetch_array($result)) {
				$hasil[] = $row;
			}
		}
		return $hasil;
	}

	function jumlah_member()
	{
		$sql = "select count(nama_user)as nama from tbl_user ";
		$result = mysqli_query($this->getConnection(), $sql);
		$hasil = null;
		$baris = mysqli_num_rows($result);
		if ($baris > 0) {
			while ($row = mysqli_fetch_array($result)) {
				$hasil[] = $row;
			}
		}
		return $hasil;
	}

	function transaksi()
	{
		$sql = "select count(status)as status from tbl_pesan ";
		$result = mysqli_query($this->getConnection(), $sql);
		$hasil = null;
		$baris = mysqli_num_rows($result);
		if ($baris > 0) {
			while ($row = mysqli_fetch_array($result)) {
				$hasil[] = $row;
			}
		}
		return $hasil;
	}

	function deal()
	{
		$sql = "select count(status)as status from tbl_pesan where status='S2' ";
		$result = mysqli_query($this->getConnection(), $sql);
		$hasil = null;
		$baris = mysqli_num_rows($result);
		if ($baris > 0) {
			while ($row = mysqli_fetch_array($result)) {
				$hasil[] = $row;
			}
		}
		return $hasil;
	}
}
