<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>BUKU TAMU OPD PURBALINGGA</title>
    <link href="{{ asset('assets/images/pbg.png') }}" rel="shortcut icon">
    <!-- Bootstrap core CSS -->
    <link href="{{ asset('assets/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="{{ asset('assets/css/portfolio-item.css') }}" rel="stylesheet">
    <style>
        body {
            font-family: sans-serif;
            background-color: #ffffff;
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
            background-color: lightsteelblue;
        }
        /* Tambahan CSS */
        .footer {
    padding: 10px 0;
    position: fixed;
    bottom: 0;
    left: 0;
    width: 100%;
        }

    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-custome fixed-top">
        <div class="container">
            <div class="d-flex align-items-center">
                <img src="{{ asset('assets/images/pbg.png') }}" alt="Logo" width="50">
                <div class="ml-2">
                    <h3 class="mb-0 text-white">BUKU TAMU OPD KABUPATEN PURBALINGGA</h3>
                    <div class="collapse navbar-collapse" id="navbarResponsive">
                        <ul class="navbar-nav ms-auto text-end">
                            <marquee behavior="scroll"><font color="#FFFFFF">
                                <p class="mb-0">Selamat Datang di Buku Tamu OPD Kabupaten Purbalingga. Tulis maksud dan tujuan berkunjung ke OPD Kabupaten Purbalingga.</p>
                            </font></marquee>
                        </ul>
                        <a class="nav-link btn btn-light" href="{{ url('login') }}" style="position: absolute; top: 25%; right: 1%;">Login Admin</a>
                    </div>
                </div>
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
                <p>Website Buku Tamu Operasi Perangkat Daerah Kabupaten Purbalingga.<br>
                Silakan tulis keperluan Anda di buku tamu kami.</p>
                <a class="bukutamu-link" href="{{ url('form') }}">Buka Buku Tamu</a>
            </div>
        </div>
    </div>
</div>
<!-- /.container -->

<footer class="footer">
    <div class="container text-center">
        <p>
            <a href="https://purbalinggakab.go.id/" target="_blank"><font size="2"><script>document.write(new Date().getFullYear())</script> &copy; Dinas Pemerintahan Kabupaten Purbalingga</font></a>
        </p>
    </div>
</footer>

<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
</body>
</html>