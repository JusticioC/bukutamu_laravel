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
                    body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }
        footer {
            margin-top: auto;
            padding: 1rem 0;
            background-color: #000;
            color: #fff;
            text-align: center;
        }
        </style>
    </head>
    <body id="page-top">

        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top shadow-sm" id="mainNav">
            <div class="container">
                <img src="{{ asset('assets/images/pbg.png') }}" alt="Logo" width="50">
                    <a class="navbar-brand fw-bold" href="">BUKU TAMU PERANGKAT DAERAH KABUPATEN PURBALINGGA</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="bi-list"></i>
                        </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
                        <button class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0" data-bs-toggle="modal" data-bs-target="#feedbackModal">
                            <span class="d-flex align-items-center">
                            <i class="bi-box-arrow-in-right me-2"></i>

                            <span class="small">
                        <a href="{{ url('login') }}"> Login Admin</a>
                            </span> 
                            
                        </span>
                    </button>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Mashead header-->
        <header class="masthead">
            <div class="container px-5">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-6">
                        <!-- Mashead text and app badges-->
                        <div class="mb-5 mb-lg- text-center text-lg-start">
                            <h1>Selamat Datang di Buku Tamu Perangkat Daerah Kabupaten Purbalingga.</h1>
                            <p class="lead fw-normal text-muted mb-5">
                                Silakan tulis keperluan Anda di buku tamu.</p>
                        </div>
                        <button class="btn btn-primary rounded-pill px-1 mb-1 mb-lg-4" data-bs-toggle="modal">
                        <span class="d-flex align-items-center">
                            <span class="small-buku">
                            <a href="{{ url('form')}}">Buka Buku Tamu</a>
                            </span> 
                        </span>
                    </button>
                    </div>
                    
                    <div class="col-lg-2">
                        <!-- Masthead device mockup feature-->
                            <div class="device-wrapper">
                            <div>
                                 <a href="https://id.pngtree.com/so/karakter-wanita"><img src="landing/assets/img/bajupns.png" width="500px"> </a>
                            </div>
                            </div>
                        </div>
                    </div>
        </header>

        <!-- Footer-->
        <footer class="bg-black text-center py-4">
            <div class="container px-5">
                <div class="text-white-50 small">
                    <div class="mb-2">&copy; 2023. Dinas Pemerintahan Kabupaten Purbalingga.</div>
                </div>
            </div>
        </footer>

        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="landing/js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
