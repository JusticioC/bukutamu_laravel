<!DOCTYPE html>
<html>
<head>
    <title>Dashboard Admin</title>
    <link rel="stylesheet" href="{{ asset('assets/css/dashboard.css') }}">
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <h2>Admin Dashboard</h2>
        <ul>
            <li><a href="#form">Form</a></li>
            <li><a href="#data">Data Pengunjung</a></li>
            <!-- Tambahkan menu navigasi lainnya sesuai kebutuhan -->
        </ul>
    </div>

    <!-- Content -->
    <div class="content">
        <h1>Dashboard Admin</h1>

        <!-- Tabel Data Pengunjung -->
        <section id="data">
            <h2>Data Pengunjung</h2>
            <table>
                <thead>
                    <tr>
                        <th>Nama</th>
                        <th>Tanggal</th>
                        <th>Jenis Kelamin</th>
                        <th>Alamat</th>
                        <th>No. HP</th>
                        <th>Maksud</th>
                        <th>Saran</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Loop untuk menampilkan data pengunjung dari tbl_pengunjung -->
                    @foreach ($pengunjung as $data)
                    <tr>
                        <td>{{ $data->nama }}</td>
                        <td>{{ $data->tanggal }}</td>
                        <td>{{ $data->jenkel }}</td>
                        <td>{{ $data->alamat }}</td>
                        <td>{{ $data->nohp }}</td>
                        <td>{{ $data->maksud }}</td>
                        <td>{{ $data->saran }}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </section>
    </div>
</body>
</html>
