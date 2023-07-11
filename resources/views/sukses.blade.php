<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Formulir Sukses</title>
    <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">
    <style>
    body {
        background-color: #f1f1f1;
        font-family: Arial, sans-serif;
    }

    .container {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
    }

    h1 {
        text-align: center;
        color: #0062cc;
    }

    .card {
        background-color: #ffffff;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        padding: 20px;
        margin-bottom: 20px;
    }

    .card-header {
        background-color: #0062cc;
        color: #ffffff;
        padding: 10px;
        border-radius: 5px 5px 0 0;
    }

    .card-body {
        padding: 10px;
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
        background-color: #0062cc;
    }

    .btn-primary:hover {
        background-color: #005cbf;
    }
    </style>
</head>
<body>
    <div class="container">
        <h1>Terimakasih! Anda telah berhasil mengisi formulir buku tamu</h1>
        <div class="card">
            <div class="card-body">
                <p>Silakan mengisi formulir lagi jika diperlukan.</p>
                <a href="{{ url('form') }}" class="btn btn-primary">Isi Formulir Lagi</a>
            </div>
        </div>
        <a href="{{ url('/') }}" class="btn btn-primary">Kembali ke Halaman Utama</a>
    </div>
</body>
</html>
