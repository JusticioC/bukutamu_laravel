<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>DINAS KOMUNIKASI DAN INFORMATIKA</title>
    <link href="{{ asset('assets/images/pbg.png') }}" rel="shortcut icon">
    <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">
    <style>
    .form-group label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    .form-control {
        display: block;
        width: 100%;
        padding: 10px;
        font-size: 14px;
        border-radius: 5px;
        border: 1px solid #ccc;
        transition: border-color 0.3s ease-in-out;
    }

    .form-control:focus {
        outline: none;
        border-color: #0062cc;
    }

    textarea.form-control {
        resize: vertical;
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

    label {
        font-weight: bold;
    }

    .form-control {
        margin-bottom: 10px;
    }

    .btn {
        background-color: #0062cc;
        color: #ffffff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
    }

    .alert {
        margin-bottom: 10px;
        padding: 10px;
        border-radius: 5px;
    }

    .alert-success {
        background-color: #c3e6cb;
        color: #155724;
    }

    .alert-danger {
        background-color: #f8d7da;
        color: #721c24;
    }
    </style>
</head>
<body>
    <div class="container">
        <h1>Isikan Data Anda</h1>
        <div class="card">
            <div class="card-header">
                <b>Pengunjung Hari Ini</b>
            </div>
            <div class="card-body">
                <h1>
                    <font color="#0062cc">
                        {{ $hari_ini }}
                    </font>
                </h1>
            </div>
        </div>

        <div class="card">
            <div class="card-header">
                <b>Total Pengunjung</b>
            </div>
            <div class="card-body">
                <h1>
                    <font color="#0062cc">{{ $total }}</font>
                </h1>
            </div>
        </div>

        @if (session('alert'))
            <div class="alert alert-success">
                {{ session('alert') }}
            </div>
        @endif

        @if (session('alert1'))
            <div class="alert alert-danger">
                {{ session('alert1') }}
            </div>
        @endif
            <!-- Tambahkan bagian untuk pilihan OPD -->
    <div class="card">
        <div class="card-header">
            <b>Pilih OPD</b>
        </div>
        <div class="card-body">
            <select name="opd" class="form-control" required>
                <!-- Loop untuk menampilkan opsi dari tabel 'opd' -->
                @foreach ($opd as $dataOpd)
                    <option value="{{ $dataOpd->id }}">{{ $dataOpd->nama }}</option>
                @endforeach
            </select>
        </div>
    </div>
        <form action="{{ route('form.submit', 'user') }}" method="POST">
            @csrf
            <div class="form-group">
                <label>Nama Lengkap</label>
                <input type="text" name="nama" class="form-control" required placeholder="Nama Lengkap">
            </div>

            <div class="form-group">
                <label>Jenis Kelamin</label>
                <select name="jenkel" class="form-control" required>
                    <option value="Pilih Jenis Kelamin" selected>Pilih Jenis Kelamin</option>
                    <option value="Laki-laki">Laki-laki</option>
                    <option value="Perempuan">Perempuan</option>
                </select>
            </div>
           
            <div class="form-group">
                <label>Alamat</label>
                <textarea name="alamat" class="form-control" placeholder="Alamat Anda" required></textarea>
            </div>

            <div class="form-group">
                <label>No Telepon</label>
                <input type="text" name="nohp" class="form-control" required placeholder="08XXXXXXXXXX">
            </div>

            <div class="form-group">
                <label>E-mail</label>
                <input type="text" name="email" class="form-control" required placeholder="Alamat E-mail">
            </div>


            <div class="form-group">
                <label>Maksud dan Tujuan</label>
                <textarea name="maksud" class="form-control" placeholder="Maksud dan Tujuan Anda" required></textarea>
            </div>

            <div class="form-group">
                <label>Kritik & Saran</label>
                <textarea name="saran" class="form-control" placeholder="Kritik dan Saran"></textarea>
            </div>

            <input type="submit" name="submit" class="btn" required value="Kirim">
            <a href="{{ url('/') }}" class="btn btn-primary">Kembali</a>
        </form>
    </div>
</body>
</html>
