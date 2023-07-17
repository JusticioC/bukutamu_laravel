<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>DINAS KOMUNIKASI DAN INFORMATIKA</title>
    <link href="{{ asset('assets/images/pbg.png') }}" rel="shortcut icon">
    <!-- Bootstrap core CSS -->
    <link href="{{ asset('assets/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="{{ asset('assets/css/portfolio-item.css') }}" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        h1 {
            color: #333333;
        }
        .logo {
            margin-bottom: 20px;
        }
        .bukutamu-link {
            display: inline-block;
            padding: 10px 20px;
            background-color: #336699;
            color: #ffffff;
            text-decoration: none;
            border-radius: 4px;
            font-size: 18px;
            margin-top: 20px;
        }
        .bukutamu-link:hover {
            background-color: #235179;
        }
        /* Tambahan CSS */
        .navbar-nav.ml-auto .nav-link {
            
            white-space: nowrap; /* Menjaga tulisan "Login Admin" agar satu baris */
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-custome fixed-top">
    <div class="container">
        <a class="navbar-brand" href="{{ url('pengunjung') }}" data-toggle="tooltip" title="Koneksine Wong Purbalingga">
            <div class="d-flex align-items-center">
                <img src="{{ asset('assets/images/pbg.png') }}" alt="Logo" width="50">
                <h3 class="ml-2 mb-0">BUKU TAMU DINAS KOMUNIKASI DAN INFORMATIKA</h3>
            </div>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <marquee behavior="scroll"><font color="#FFFFFF">
                <b>
                    Selamat Datang di Dinas Komunikasi dan Informatika, Jl. Isdiman No. 5 Purbalingga. Tulis maksud dan tujuan berkunjung ke dinas kominfo.
                </b>
                </font></marquee>
            </ul>
            <!-- Navbar untuk Login Admin -->
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="{{ url('login') }}">Login Admin</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<br>
<br>
<!-- Page Content -->
<div class="container">
    <h1 class="my-4">
        <small></small>
    </h1>
    <div class="row">
        <div class="col-md-5">
            <center>
                <br>
                <img src="{{ asset('assets/images/pbg.png') }}" width="50%" alt="">
                <h5>Pemerintah Kabupaten Purbalingga</h5>
            </center>
        </div>
        <div class="col-md-7">
            <div class="card-block">
                <br>
                <br>
                <h1>Selamat Datang di Buku Tamu</h1>
                <p>Terima kasih telah mengunjungi website Dinas Komunikasi dan Informatika Kabupaten Purbalingga. Silakan tulis keperluan Anda di buku tamu kami.</p>
                <a class="bukutamu-link" href="{{ url('form') }}">Buka Buku Tamu</a>
            </div>
        </div>
    </div>
</div>
<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
<!-- Footer -->
<footer class="py-5">
    <div class="container">
        <p class="m-0 text-center text-dark">
            <a href="https://dinkominfo.purbalinggakab.go.id/" target="_blank"><font size="2"><script>document.write(new Date().getFullYear())</script> &copy; Dinas Komunikasi dan Informatika Kab. Purbalingga</font></a>
        </p>
    </div>
    <!-- /.container -->
</footer>
</body>
</html>