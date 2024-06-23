<?php

include "koneksi.php";


class guide extends database
{

	function __construct()
	{
		$this->getConnection();
	}



	function tampil_data()
	{
		$sql = "SELECT * FROM guide";
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

	function input($nama, $konten, $gambar, $sertifikat)
	{

		$sql = "insert into guide ( `nama`, `konten`, `gambar` , `sertifikat`) values('$nama','$konten','$gambar','$sertifikat')";
		$result = mysqli_query($this->getConnection(), $sql);

		move_uploaded_file($_FILES['gambar']['tmp_name'], "../images/" . $_FILES['gambar']['name']);
		move_uploaded_file($_FILES['gambar']['tmp_name'], "../images/" . $_FILES['sertifikat']['name']);

		echo "<script>alert('Gambar Berhasil diupload !');history.go(-1);</script>";
	}

	function hapus($id)
	{
		$sql = "DELETE from guide where id='$id'";
		$result = mysqli_query($this->getConnection(), $sql);
	}

	function edit($id)
	{
		$sql = "SELECT * from guide where id='$id'";
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





	function update($id, $nama, $konten, $gambar, $sertifikat)
	{


		if (empty($gambar)) {
			$sql = "UPDATE guide SET   nama='$nama', konten='$konten' WHERE id='$id'";
			$result = mysqli_query($this->getConnection(), $sql);
		}
		if (empty($sertifikat)) {
			$sql = "UPDATE guide SET   nama='$nama', konten='$konten' WHERE id='$id'";
			$result = mysqli_query($this->getConnection(), $sql);
		}

		if (!empty($gambar)) {
			$sql = "UPDATE guide SET nama='$nama', konten='$konten',gambar='$gambar' WHERE id='$id'";
			$result = mysqli_query($this->getConnection(), $sql);

			move_uploaded_file($_FILES['gambar']['tmp_name'], "../images/" . $_FILES['gambar']['name']);

			echo "<script>alert('Gambar Berhasil diupload !');history.go(-1);</script>";
		}
		if (!empty($sertifikat)) {
			$sql = "UPDATE guide SET nama='$nama', konten='$konten',sertifikat='$sertifikat' WHERE id='$id'";
			$result = mysqli_query($this->getConnection(), $sql);

			move_uploaded_file($_FILES['sertifikat']['tmp_name'], "../images/" . $_FILES['sertifikat']['name']);

			echo "<script>alert('Gambar Berhasil diupload !');history.go(-1);</script>";
		}
	}
}
