<?php
include '../koneksi.php';

$nama = $_POST['nama'];
$kelas = $_POST['kelas'];
$alamat = $_POST['alamat'];
$no_tlp = $_POST['no_tlp'];

if(isset($_POST['simpan'])){
    mysqli_query($con, "INSERT INTO anggota (nama,kelas,alamat,no_tlp) VALUES ('$nama','$kelas','$alamat','$no_tlp')");
    echo "<script>alert('Tambah Data Berhasil!');
        window.location='../index_admin.php?p=anggota';</script>";
}

?>