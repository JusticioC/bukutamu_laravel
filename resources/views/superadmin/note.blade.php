<!DOCTYPE html>
<html lang="en">
<head>
    @extends('app')
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar OPD</title>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>
</head>
<body>

    <div class="card-body p-0 table-responsive">
        <h1>Daftar OPD</h1>
        <a href="{{ route('opd.create') }}" class="btn btn-primary mb-3">Tambah OPD</a>
        <table border="1" class="table table-bordered table-striped table-hover mb-0">
            <thead>
                <tr>
                    <th>Nama OPD</th>
                    <th>Alamat</th>
                    <th>Email</th>
                    <th>No. Telp</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            
            <tbody>
                @foreach ($opdList as $opd)
                    <tr>
                        <td>{{ $opd->nama_opd }}</td>
                        <td>{{ $opd->alamat }}</td>
                        <td>{{ $opd->email }}</td>
                        <td>{{ $opd->no_telp }}</td>
                        <td>
                            <a href="{{ route('opd.edit', ['opd' => $opd->id_opd]) }}" class="btn btn-sm btn-warning">Edit</a>
                            <form action="{{ route('opd.destroy', $opd->id_opd) }}" method="POST" style="display: inline-block;">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda yakin ingin menghapus OPD ini?')">Hapus</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <script src="{{ asset('js/jquery.min.js') }}"></script>
</body>
</html>


<!--INI BLADE CREATE-->
@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Tambah OPD</h3>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('opd.store') }}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label for="nama">Nama</label>
                                <input type="text" name="nama" id="nama" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="alamat">Alamat</label>
                                <textarea name="alamat" id="alamat" class="form-control" rows="3" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" name="email" id="email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="nohp">No. HP</label>
                                <input type="text" name="nohp" id="nohp" class="form-control" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Simpan</button>
                            <a href="{{ route('opd.index') }}" class="btn btn-secondary">Kembali</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

