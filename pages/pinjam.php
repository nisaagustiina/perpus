
    <div id="page-wrapper">
        <div class="row">
                <div class="col-xs-12"><br><br>
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            Data Transaksi Peminjaman
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="tabel">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Judul</th>
                                        <th>Kategori</th>
                                        <th>Penulis</th>
                                        <th>Penerbit</th>
                                        <th>Tahun Terbit</th>
                                        <th>Status</th>
                                        <th><i class="fa fa-gear"></i></th>
                                    </tr>
                                </thead>
                                <tbody>
                                        <?php
                                        $no=1;
                                        $sql = mysqli_query($con,"SELECT * FROM buku WHERE status='Tersedia'");
                                        while($d=mysqli_fetch_array($sql)) {
                                        ?>
                                    <tr>
                                        <td><?= $no?></td>
                                        <td><?= $d['judul']?></td>
                                        <td><?= $d['kategori']?></td>
                                        <td><?= $d['penulis']?></td>
                                        <td><?= $d['penerbit']?></td>
                                        <td><?= $d['th_terbit']?></td>
                                        <td><?= $d['status']?></td>
                                        
                                        <td><button class="btn btn-xs btn-grey"><a href="index_admin.php?p=pinjam-input&id=<?=$d['id_buku'];?>">Pinjam</button> </td>
                                    </tr>
                                        <?php $no++; } ?>
                                    
                                </tbody>
                            </table>
                            </div>
                        </div>
                        <div class="panel-footer">
                            
                        </div>
                    </div>
                </div>
        </div>
    </div>

    <link href="assets/css/plugins/dataTables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <script src="assets/js/jquery-3.4.1.min.js"></script>
    <script src="assets/js/plugins/dataTables/jquery.dataTables.min.js"></script>
    <script src="assets/js/plugins/dataTables/dataTables.bootstrap4.min.js"></script>
    <script>
    $.noConflict();
    jQuery(document).ready(function($) {
    $('#tabel').DataTable();
    });
    </script>



                                