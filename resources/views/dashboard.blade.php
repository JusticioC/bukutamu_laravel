<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Dashboard Admin</title>
    @vite(['resources/sass/app.scss','resources/js/app.js'])
    <link href="{{ asset('assets/images/pbg.png') }}" rel="shortcut icon">
    <!-- Bootstrap core CSS -->
    <link href="{{ asset('assets/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="{{ asset('assets/css/portfolio-item.css') }}" rel="stylesheet">
    <!-- Regular Datatables CSS -->
	<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">
	<!-- Responsive Extension Datatables CSS -->
	<link href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css" rel="stylesheet">
    <style>
        body {
            background: #ffffff;
            color: #fff;
            margin: 0;
            padding: 0;
        }
        .navbar-brand img {
            width: 45px;
            height: auto;
        }
        .navbar-brand h5 {
            font-size: 18px;
            margin-left: 10px;
            flex-grow: 1;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand d-flex align-items-center" href="#">
                <img src="{{ asset('assets/images/pbg.png') }}" alt="Logo">
                <span class="navbar-brand mb-0 h1">Admin</span>
            </a>
            <form class="d-flex">
                <button class="btn btn-outline-light me-2" type="button">Logout</button>
            </form>
        </div>
    </nav>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="flex mt-5">
                        <h1>Data Pengunjung</h1>
                        <table id="example" class="table">
                            <thead>
                                <tr>
                                    <th>Nama</th>
                                    <th>Tanggal</th>
                                    <th>Jenis Kelamin</th>
                                    <th>Alamat</th>
                                    <th>No. HP</th>
                                    <th>Maksud</th>
                                    <th>Saran</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Loop untuk menampilkan data pengunjung dari tbl_pengunjung -->
                                @foreach ($pengunjung as $data)
                                <tr>
                                    <td>{{ $data->nama }}</td>
                                    <td>{{ $data->tanggal }}</td>
                                    <td>{{ $data->jenkel }}</td>
                                    <td>{{ $data->alamat }}</td>
                                    <td>{{ $data->nohp }}</td>
                                    <td>{{ $data->maksud }}</td>
                                    <td>{{ $data->saran }}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!-- Datatables -->
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script>
        $(document).ready(function() {
            var table = $('#example').DataTable({
                responsive: true
            }).columns.adjust().responsive.recalc();
        });
    </script>
</body>
</html>
