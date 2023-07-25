<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>DINAS KOMUNIKASI DAN INFORMATIKA</title>
    <link href="{{ asset('assets/images/pbg.png') }}" rel="shortcut icon">
    <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">
    <style>
body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
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

        @media screen and (max-width: 768px) {
            .container {
                width: 90%;
            }
        }

        @media screen and (max-width: 480px) {
            .container {
                width: 100%;
            }
        }
    </style>
</head>
<body>
<div class="container">
        <h1>Isikan Data Anda</h1>
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
        <form action="{{ route('form.submit', 'user') }}" method="POST">

        
        <b>Pilih OPD Tujuan</b>
        <div class="card-body">
            <select name="id_opd" class="form-control" required>
                <!-- Loop untuk menampilkan opsi dari tabel 'opd' -->
                @foreach ($opd as $dataOpd)
                    <option value="{{ $dataOpd->id }}">{{ $dataOpd->nama }}</option>
                @endforeach
            </select>

    </div>
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
                <textarea name="maksud" class="form-control" placeholder="Maksud dan Tujuan Anda" required oninput="checkInputLength(this, 100)"></textarea>
            </div>
            
            <div class="form-group">
                <label>Kritik & Saran</label>
                <textarea name="saran" class="form-control" placeholder="Kritik dan Saran" required oninput="checkInputLength(this, 100)"></textarea>
            </div>

            <input type="submit" name="submit" class="btn" required value="Kirim">
            <a href="{{ url('/') }}" class="btn btn-primary">Kembali</a>
        </form>
    </div>

    <div class="container">
        <h1>Jumlah Pengunjung</h1>
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

    <script>
    function checkInputLength(input, maxLength) {
        if (input.value.length > maxLength) {
            input.value = input.value.substring(0, maxLength);
        }
    }
</script>
</body>
</html>
