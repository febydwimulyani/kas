<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Aplikasi Kas Masuk Dan Keluar</h1>
</div>

<!-- Content Row -->
<div class="row">

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-4 col-md-6 mb-4">
        <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                            Kas Masuk</div>
                            <?php 
                            $query = mysqli_query($koneksi, "SELECT SUM(total) AS total FROM kas_masuk");
                            $sum = mysqli_fetch_assoc($query);
                            ?>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">Rp <?php echo number_format($sum['total'], 2,  ",", ".") ?></div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-4 col-md-6 mb-4">
        <div class="card border-left-success shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                            jumlah kelas</div>
                            <?php 
                            $query = mysqli_query($koneksi, "SELECT COUNT(*) AS total FROM kelas");
                            $sum = mysqli_fetch_assoc($query);
                            echo $sum['total'];
                            ?>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-user fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-4 col-md-6 mb-4">
        <div class="card border-left-info shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                         jumlah petugas</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800"> 
                            <?php 
                            $query = mysqli_query($koneksi, "SELECT COUNT(*) AS total FROM petugas");
                            $sum = mysqli_fetch_assoc($query);
                            echo $sum['total'];
                            ?>
                           </div>
                           </div>
                        </div>
                    <div class="col-auto">
                        <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>