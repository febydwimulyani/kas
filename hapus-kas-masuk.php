<?php
$id = $_GET['id'];
$query = mysqli_query($koneksi,"DELETE FROM kas_masuk WHERE id_km='$id'");
if ($query) {
    echo '<script>alert("Data Berhasil dihapus");location.href="?page=kas-masuk";</script>';
}