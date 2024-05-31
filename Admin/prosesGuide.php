 <?php

	include '../class/guide.php';

	$db = new guide();



	$aksi = $_GET['aksi'];
	if ($aksi == "tambah") {
		$db->input($_POST['nama'], $_POST['konten'], $_FILES['gambar']['name']);
		echo $db->sql;
		//header("location:admin.php#ajax/guide.php");
	} elseif ($aksi == "hapus") {
		$db->hapus($_GET['id']);
		header("location:admin.php#ajax/guide.php");
	} elseif ($aksi == "update") {
		$db->update($_POST['id'], $_POST['nama'], $_POST['konten'], $_FILES['gambar']['name']);
		header("location:admin.php#ajax/guide.php");
	}
