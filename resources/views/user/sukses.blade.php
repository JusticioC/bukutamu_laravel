form

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
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }

        .card {
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 20px;
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
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
                        <button class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0" data-bs-toggle="modal" data-bs-target="#feedbackModal">

                            <span class="small">
                        <a href="{{ url('/') }}"> Kembali ke Halaman Utama </a>
                            </span>   
                        </span>
                    </button>
                    </ul>
                </div>
            </div>
        </nav>

        <br><br><br><br>
        <div class="container px-6">
            <br>
            <br>
        <h3>Terima kasih, 
        Anda telah berhasil mengisi formulir buku tamu!</h3>
        <div class="card">
            <div class="card-body">
                <p>Silakan mengisi formulir lagi jika diperlukan.</p>
                <a href="{{ url('form') }}" class="btn btn-primary">Isi Formulir Lagi</a>
            </div>
        </div>
    </div>
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
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
