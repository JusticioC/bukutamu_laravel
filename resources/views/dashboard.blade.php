<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Dashboard Admin</title>
    <link href="{{ asset('assets/images/pbg.png') }}" rel="shortcut icon">
   <!-- Bootstrap core CSS -->
   <link href="{{ asset('assets/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
   <!-- Custom styles for this template -->
   <link href="{{ asset('assets/css/portfolio-item.css') }}" rel="stylesheet">



    <link rel="stylesheet" href="{{ asset('assets/css/dashboard.css') }}">

    <!--Regular Datatables CSS-->
	<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">
	<!--Responsive Extension Datatables CSS-->
	<link href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css" rel="stylesheet">

    <style>
       .sidebar {
    background-color: black;
    width: 200px;
    height: 100%;
    padding: 20px;
} 
.sidebar h2 {
    color: white;
    font-size: 24px;
    margin-bottom: 20px;
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
    color: white;
}
.sidebar ul li a:hover {
    color: white;
}

/*styledatatablesnya*/
/*Overrides for Tailwind CSS */

		/*Agar tabel berada di tengah halaman*/
		/*Align center text in th*/
		.centered-header {
			text-align: center;
		}

		/*Form fields*/
		.dataTables_wrapper select,
		.dataTables_wrapper .dataTables_filter input {
			color: #4a5568;
			/*text-gray-700*/
			padding-left: 1rem;
			/*pl-4*/
			padding-right: 1rem;
			/*pl-4*/
			padding-top: .4rem;
			/*pl-2*/
			padding-bottom: .4rem;
			/*pl-2*/
			line-height: 1.25;
			/*leading-tight*/
			border-width: 2px;
			/*border-2*/
			border-radius: .25rem;
			border-color: #edf2f7;
			/*border-gray-200*/
			background-color: #dadee2;
		}

		/*Row Hover*/
		table.dataTable.hover tbody tr:hover,
		table.dataTable.display tbody tr:hover {
			background-color: #ebf4ff;
			/*bg-indigo-100*/
		}

		/*Pagination Buttons*/
		.dataTables_wrapper .dataTables_paginate .paginate_button {
			font-weight: 700;
			/*font-bold*/
			border-radius: .25rem;
			/*rounded*/
			border: 1px solid transparent;
			/*border border-transparent*/
		}

		/*Pagination Buttons - Current selected */
		.dataTables_wrapper .dataTables_paginate .paginate_button.current {
			color: #fff !important;
			/*text-white*/
			box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0 rgba(0, 0, 0, .06);
			/*shadow*/
			font-weight: 700;
			/*font-bold*/
			border-radius: .25rem;
			/*rounded*/
			background: #667eea !important;
			/*bg-indigo-500*/
			border: 1px solid transparent;
			/*border border-transparent*/
		}

		/*Pagination Buttons - Hover */
		.dataTables_wrapper .dataTables_paginate .paginate_button:hover {
			color: #fff !important;
			/*text-white*/
			box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0 rgba(0, 0, 0, .06);
			/*shadow*/
			font-weight: 700;
			/*font-bold*/
			border-radius: .25rem;
			/*rounded*/
			background: #667eea !important;
			/*bg-indigo-500*/
			border: 1px solid transparent;
			/*border border-transparent*/
		}

		/*Add padding to bottom border */
		table.dataTable.no-footer {
			border-bottom: 1px solid #e2e8f0;
			/*border-b-1 border-gray-300*/
			margin-top: 0.75em;
			margin-bottom: 0.75em;
		}

		/*Change colour of responsive icon*/
		table.dataTable.dtr-inline.collapsed>tbody>tr>td:first-child:before,
		table.dataTable.dtr-inline.collapsed>tbody>tr>th:first-child:before {
			background-color: #667eea !important;
			/*bg-indigo-500*/
		}

    </style>
</head>

<body>

<!-- Sidebar -->
<div class="sidebar">
        <!--<h2>Admin Dashboard</h2>-->
        <BR>
        <br>
        <br>
        <br>
        <br>
        <ul>
            <li><a href="#form">Form</a></li>
            <li><a href="#data">Data Pengunjung</a></li>
            <li><a href="href={{ url('auth.dashboard') }}">Logout</a></li>
            <!-- Tambahkan menu navigasi lainnya sesuai kebutuhan -->
        </ul>
    </div>

<nav class="navbar navbar-expand-lg navbar-dark bg-custome fixed-top">
    <div class="container">
        <a class="navbar-brand" href="{{ url('pengunjung') }}" data-toggle="tooltip" title="Koneksine Wong Purbalingga">
            <div class="d-flex align-items-center">
            <!--&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  -->
                <img src="{{ asset('assets/images/pbg.png') }}" alt="Logo" width="57">
                <h3 class="ml-2 mb-0">DASHBOARD ADMIN</h3>
                
            </div>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
            </ul>
        </div>
    </div>
</nav>


<!--style datatables-->
<div class="flex mt-5">

		<body class="bg-gray-100 text-gray-900 tracking-wider leading-normal">
            <!--Container-->
                <!--Title-->
				<h1 class="flex items-center font-sans font-bold break-normal text-black-500 px-2 py-8 text-xl md:text-2xl">
					Data Pengunjung
				</h1>

                <!--Card
				<div id='recipients' class="p-4 mt-2 lg:mt-0 rounded shadow bg-white"> -->

                
                
    

    <!-- Content -->
    <div class="content">
        <!-- <h1>Dashboard Admin</h1> -->

        <!-- Tabel Data Pengunjung -->
        <section id="data">
            
            <h2>Data Pengunjung</h2>

            <table id="example" class="stripe hover" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
                <thead>
                    <tr color="#A9A9A9">

                        <th class="centered-header" data-priority="1">Nama</th>
                        <th class="centered-header" data-priority="2">Tanggal</th>
                        <th class="centered-header" data-priority="3">Jenis Kelamin</th>
                        <th class="centered-header" data-priority="4">Alamat</th>
                        <th class="centered-header" data-priority="5">No. HP</th>
                        <th class="centered-header" data-priority="6">Maksud</th>
                        <th class="centered-header" data-priority="7">Saran</th>
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

        </section>
    </div>
    <!-- jQuery -->
			<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<!--Datatables -->
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
<script>
    $(document).ready(function() {

        var table = $('#example').DataTable({
                responsive: true
            })
            .columns.adjust()
            .responsive.recalc();
    });
</script>
</body>
</html>
