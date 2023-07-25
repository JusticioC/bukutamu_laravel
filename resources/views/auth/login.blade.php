<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>BUKU TAMU PERANGKAT DAERAH PURBALINGGA</title>
        <link href="{{ asset('assets/images/pbg.png') }}" rel="shortcut icon">
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="landing/css/styles.css" rel="stylesheet" />

    
        <style>

        .card {
            padding: 10px;
        }

        .card-header {
            background-color: #f1f1f1;
            padding: 5px;
            font-weight: bold;
        }

        .card-body {
            padding: 10px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        textarea,
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
        }


        .btn {
        display: inline-block;
        padding: 10px 20px;
        font-size: 14px;
        font-weight: bold;
        text-align: center;
        text-decoration: none;
        white-space: nowrap;
        vertical-align: middle;
        cursor: pointer;
        border-radius: 5px;
        border: none;
        transition: background-color 0.3s ease-in-out;
    }

    .btn-primary {
        color: #ffffff;
        
    }


    .btn-primary:hover {
        background-color: #005cbf;
    }

    .btn {
        background-color: #0062cc;
        color: #ffffff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
    }

    </style>
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top shadow-sm" id="mainNav">
            <div class="container">
                <img src="{{ asset('assets/images/pbg.png') }}" alt="Logo" width="50">
                    <a class="navbar-brand fw-bold" href="">BUKU TAMU PERANGKAT DAERAH KABUPATEN PURBALINGGA</a>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
                        <button class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0" data-bs-toggle="modal" data-bs-target="#feedbackModal">

                            <span class="small">
                        <a href="{{ url('/') }}"> Kembali </a>
                            </span>   
                        </span>
                    </button>
                    </ul>
                </div>
            </div>
        </nav>
        
         <!-- Page Content -->
         <header class="masthead">
    <div class="container">
        <h1 class="my-4">
            <small></small>
        </h1>
        <div class="row">
            <div class="col-md-7">
                <div class="card card">
                    <div class="card-block">
                        @if(session('error'))
                             <div class="alert alert-danger">
                          <b> {{session('error')}}</b>
                      </div>
                    @endif
                        <h3><center><font color="black"> <br>LOGIN ADMINISTRATOR</font></center></h3>
                        <form method="post" action= "{{ route ('actionlogin') }}">
                            @csrf
                            <div class="form-group">
                                <label>Username</label>
                                <input type="text" name="name" class="form-control" placeholder="Username" required="" value="{{ old ('name')}}">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="password" class="form-control" placeholder="Password" required="" value="{{ old ('password')}}">
                            </div>
                            <button class="btn btn-primary pull-right" name="submit">LOG IN</button> 
                        </form>
                        <br>
                    </div>
                </div>
            </div>
            <div class="col-md-5">
                <center>
                    <a href="https://www.kindpng.com/imgv/ihmhiRo_receptionist-cartoon-png-png-download-receptionist-cartoon-png/" >
                    <img src="{{ asset('assets/images/pns2.png') }}" width="80%" alt="">
                    </a>
                    <br>
                </center>
            </div>
        </div>
    </div>
</header>
<footer class="bg-black text-center py-4">
            <div class="container px-5">
                <div class="text-white-50 small">
                    <div class="mb-2">&copy; 2023. Dinas Pemerintahan Kabupaten Purbalingga.</div>
                </div>
            </div>
        </footer>
</script>

        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
         <!-- Bootstrap core JavaScript -->
    <script src="{{ asset('assets/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    </body>
</html>
