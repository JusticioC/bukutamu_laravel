<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BUKU TAMU KABUPATEN PURBALINGGA</title>
    <link rel="shortcut icon" href="{{ asset('assets/images/pbg.png') }}"/>

    <!-- Bootstrap core CSS -->
    <link href="{{ asset('assets/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('assets/bootstrap/css/bootstrap.min.css') }}">

    <!-- Custom styles for this template -->
    <link href="{{ asset('assets/css/portfolio-item.css') }}" rel="stylesheet">

    <style>
    .card {
        margin: 0 auto;
        float: none;
        margin-bottom: 10px; 
    }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-custome fixed-top">
    <div class="container">
        <a class="navbar-brand" href="{{ url('landing') }}">
            <div class="d-flex align-items-center">
                <img src="{{ asset('assets/images/pbg.png') }}" alt="Logo" width="50">
                <h3 class="ml-2 mb-0">BUKU TAMU OPD KABUPATEN PURBALINGGA </h3>
            </div>
        </a>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
            </ul>
            <!-- Navbar untuk Login Admin -->
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
                    <img src="{{ asset('assets/images/pbg.png') }}" width="50%" alt="">
                    <br>
                    <h5>Pemerintah Kabupaten Purbalingga</h5>
                </center>
            </div>
            <div class="col-md-7">
                <div class="card card">
                    <div class="card-block">
                        @if(session('error'))
                             <div class="alert alert-danger">
                          <b> {{session('error')}}</b>
                      </div>
                    @endif
                        <h3><center><font color="#0062cc">LOGIN ADMINISTRATOR</font></center></h3>
                        <form method="post" action= "{{ route ('actionlogin') }}">
                            @csrf
                            <div class="form-group">
                                <label>Username</label>
                                <input type="text" name="name" class="form-control" placeholder="username" required="" value="{{ old ('name')}}">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="password" class="form-control" placeholder="Password" required="" value="{{ old ('password')}}">
                            </div>
                            <button class="btn btn-primary pull-right" name="submit">LOG IN</button>
                        </form>
                    </div>
                </div>
                <a href="{{ url('/') }}" class="btn btn-primary">Kembali ke Halaman Utama</a>

            </div>
        </div>
    </div>
   

    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5">
        <div class="container">
            <p class="m-0 text-center text-dark">
                <a href="https://purbalinggakab.go.id/" target="_blank"><font size="2"><script>document.write(new Date().getFullYear())</script> &copy; Dinas Pemerintahan Kabupaten Purbalingga</font></a>
            </p>
        </div>
        <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="{{ asset('assets/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
</body>
</html>
