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
    <link rel="stylesheet" href="{{ asset('assets/bootstrap/css/bootstrap.min.css') }}">

    <!-- Custom styles for this template -->
    <link href="{{ asset('assets/css/portfolio-item.css') }}" rel="stylesheet">

    <style>
    .card {
        margin: 0 auto; /* Added */
        float: none; /* Added */
        margin-bottom: 10px; /* Added */
    }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-custome  fixed-top">
        <div class="container">
            <a class="navbar-brand" href="{{ url('pengunjung') }}" data-toggle="tooltip" title="Koneksine Wong Purbalingga">
                <h3><center>WEB TAMU DINAS KOMUNIKASI DAN INFORMATIKA</center></h3>
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
                    <img src="{{ asset('assets/images/pbg.png') }}" width="50%" alt="">
                    <br>
                    <h5>Pemerintah Kabupaten Purbalingga</h5>
                </center>
            </div>
            <div class="col-md-7">
                <div class="card card">
                    <div class="card-block">
                        @if(session('alert'))
                        <div class="alert alert-danger">
                            {{ session('alert') }}
                        </div>
                        @endif

                        @if(session('alert1'))
                        <div class="alert alert-danger">
                            {{ session('alert1') }}
                        </div>
                        @endif

                        <form method="POST" action="{{ url('login/auth') }}">
                            @csrf
                            <h3><center><font color="#0062cc">LOGIN ADMINISTRATOR</font></center></h3>
                            <table>
                                <label>Username</label>
                                <input type="text" name="username" value="" class="form-control">
                                <label>Password</label>
                                <input type="password" name="password" value="" class="form-control">
                                <br>
                                <button class="btn btn-primary pull-right" name="Submit" value="Login">LOGIN</button>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5">
        <div class="container">
            <p class="m-0 text-center text-dark">
                <a href="https://dinkominfo.purbalinggakab.go.id/" target="_blank"><font size="2"><script>document.write(new Date().getFullYear())</script> &copy; Dinas Komunikasi dan Informatika Kab. Purbalingga</font></a>
            </p>
        </div>
        <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="{{ asset('assets/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
</body>
</html>