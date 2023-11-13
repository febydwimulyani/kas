<?php
$id = $_GET['id'];
$query = mysqli_query($koneksi,"DELETE FROM kas_keluar WHERE id_kk='$id'");
if ($query) {
    echo '<script>alert("Data Berhasil dihapus");location.href="?page=kas-keluar";</script>';
}