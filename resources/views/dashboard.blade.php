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
            background: linear-gradient(to right, #667eea, #764ba2);
            color: #fff;
            margin: 0;
            padding: 0;
        }
        .sidebar {
            background: linear-gradient(to right, #667eea, #764ba2);
            width: 200px;
            height: 100vh;
            padding: 20px;
            color: #fff;
            position: fixed;
            z-index: 999;
            transition: left 0.3s ease;
            overflow-y: auto;
        }
        .sidebar h2 {
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
        }
        .sidebar ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }
        .sidebar ul li {
            margin-bottom: 10px;
        }
        .sidebar ul li a {
            text-decoration: none;
            color: #fff;
            display: block;
            padding: 10px;
            border-radius: 5px;
        }
        .sidebar ul li a:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }
        .navbar-brand img {
            width: 57px;
            height: auto;
        }
        .navbar-brand h3 {
            font-size: 24px;
            margin-left: 10px;
        }
        .navbar-toggler {
            border: none;
            padding: 0;
        }
        .navbar-toggler-icon {
            background: linear-gradient(to right, #667eea, #764ba2);
            width: 24px;
            height: 24px;
            filter: invert(1);
        }
        .navbar-nav.ml-auto li {
            margin-left: 10px;
        }
        .flex {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
        }
        h1 {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .table {
            width: 100%;
            background-color: #fff;
            border-radius: 10px;
            overflow: hidden;
        }
        th {
            text-align: center;
            font-weight: bold;
            background-color: #333;
            color: #fff;
        }
        td {
            text-align: center;
            vertical-align: middle;
            padding: 10px;
        }
        tbody tr:nth-child(even) {
            background-color: #f8f8f8;
        }
        tbody tr:hover {
            background-color: #e8e8e8;
        }
        .dataTables_wrapper .dataTables_paginate .paginate_button {
            color: #333 !important;
            background-color: #f8f8f8 !important;
            border: none !important;
            border-radius: 30px !important;
            padding: 6px 12px !important;
        }
        .dataTables_wrapper .dataTables_paginate .paginate_button.current {
            color: #fff !important;
            background-color: #333 !important;
        }
        @media (max-width: 767px) {
            .content {
                margin-left: 0;
            }
            .navbar-toggler-icon {
                background-color: #fff;
            }
            .navbar-nav.ml-auto li {
                margin-left: 0;
            }
            .navbar-collapse {
                text-align: center;
            }
            .navbar-nav {
                flex-direction: column;
            }
            .navbar-nav.ml-auto {
                margin-bottom: 10px;
            }
            .navbar-toggler {
                display: block;
            }
            .overlay {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 0, 0, 0.5);
                z-index: 998;
                display: none;
            }
            .show-sidebar .overlay {
                display: block;
            }
        }
        .navbar { z-index: 1000; }
        .sidebar.fixed { position: sticky; top: 0; }
        .navbar.fixed-top { position: sticky; top: 0; }
        .navbar.fixed-top + .content { margin-top: 56px; }
        .navbar.fixed-top + .content + .sidebar.fixed { top: 56px; }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-2">
                <div class="sidebar" id="sidebar">
                    <h2>Admin Dashboard</h2>
                    <ul>
                        <li><a href="#form">Form</a></li>
                        <li><a href="#data">Data Pengunjung</a></li>
                        <li><a href="{{ url('auth.dashboard') }}">Logout</a></li>
                        <!-- Tambahkan menu navigasi lainnya sesuai kebutuhan -->
                    </ul>
                </div>
                <div class="overlay"></div>
            </div>
            <div class="col-md-10">
                <nav class="navbar navbar-expand-lg navbar-dark bg-custom fixed-top">
                    <div class="container">
                        <a class="navbar-brand" href="{{ url('pengunjung') }}" data-toggle="tooltip" title="Koneksine Wong Purbalingga">
                            <div class="d-flex align-items-center">
                                <img src="{{ asset('assets/images/pbg.png') }}" alt="Logo">
                                <h3 class="ml-2 mb-0">DASHBOARD ADMIN</h3>
                            </div>
                        </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation" onclick="toggleSidebar()">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarResponsive">
                            <ul class="navbar-nav ml-auto">
                            </ul>
                        </div>
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

        window.addEventListener('scroll', function() {
            var sidebar = document.getElementById("sidebar");
            var navbar = document.querySelector('.navbar');
            var navbarHeight = navbar.offsetHeight;
            var content = document.querySelector('.content');
            var sidebarFixed = document.querySelector('.sidebar.fixed');
            if (window.pageYOffset >= navbarHeight) {
                navbar.classList.add('fixed-top');
                content.style.marginTop = navbarHeight + 'px';
                sidebarFixed.style.top = navbarHeight + 'px';
            } else {
                navbar.classList.remove('fixed-top');
                content.style.marginTop = '0';
                sidebarFixed.style.top = '0';
            }
        });

        function toggleSidebar() {
            var sidebar = document.getElementById("sidebar");
            sidebar.classList.toggle("show");
            var overlay = document.querySelector(".overlay");
            overlay.classList.toggle("show-sidebar");
        }
    </script>
</body>
</html>
