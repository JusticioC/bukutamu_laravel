<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Dashboard Admin</title>
    @vite(['resources/sass/app.scss','resources/js/app.js'])
    <link href="{{ asset('assets/images/pbg.png') }}" rel="shortcut icon">
    <!-- Bootstrap core CSS -->
    <link href="{{ asset('assets/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="{{ asset('assets/css/portfolio-item.css') }}" rel="stylesheet">
    <!-- Regular Datatables CSS -->
	<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">
	<!-- Responsive Extension Datatables CSS -->
	<link href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css" rel="stylesheet">
    
    <!--NAVBAR RESPONSIF-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" rel="stylesheet">

    <style>
        @import url("https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap");
        :root{--header-height: 3.4rem;--nav-width: 68px;--first-color: #4723D9;--first-color-light: #AFA5D9;--white-color: #F7F6FB;--body-font: 'Nunito', sans-serif;--normal-font-size: 1rem;--z-fixed: 30}*,::before,::after{box-sizing: border-box}body{position: relative;margin: var(--header-height) 0 0 0;padding: 0 1rem;font-family: var(--body-font);font-size: var(--normal-font-size);transition: .5s}a{text-decoration: none}.header{width: 100%;height: var(--header-height);position: fixed;top: 0;left: 0;display: flex;align-items: center;justify-content: space-between;padding: 0 1rem;background-color: #212529;z-index: var(--z-fixed);transition: .5s}.header_toggle{color: var(--white-color);font-size: 1.5rem;cursor: pointer}.header_img{width: 35px;height: 35px;display: flex;justify-content: center;border-radius: 50%;overflow: hidden}.header_img img{width: 40px}.l-navbar{position: fixed;top: 0;left: -30%;width: var(--nav-width);height: 100vh;background-color: #000000 ;padding: .5rem 1rem 0 0;transition: .5s;z-index: var(--z-fixed)}.nav{height: 100%;display: flex;flex-direction: column;justify-content: space-between;overflow: hidden}.nav_logo, .nav_link{display: grid;grid-template-columns: max-content max-content;align-items: center;column-gap: 1rem;padding: .5rem 0 .5rem 1.5rem}.nav_logo{margin-bottom: 2rem}.nav_logo-icon{font-size: 1.25rem;color: var(--white-color)}.nav_logo-name{color: var(--white-color);font-weight: 700}.nav_link{position: relative;color: var(--first-color-light);margin-bottom: 1.5rem;transition: .3s}.nav_link:hover{color: var(--white-color)}.nav_icon{font-size: 1.25rem}.show{left: 0}.body-pd{padding-left: calc(var(--nav-width) + 1rem)}.active{color: var(--white-color)}.active::before{content: '';position: absolute;left: 0;width: 2px;height: 32px;background-color: var(--white-color)}.height-100{height:100vh}@media screen and (min-width: 768px){body{margin: calc(var(--header-height) + 1rem) 0 0 0;padding-left: calc(var(--nav-width) + 2rem)}.header{height: calc(var(--header-height) + 1rem);padding: 0 2rem 0 calc(var(--nav-width) + 2rem)}.header_img{width: 40px;height: 40px}.header_img img{width: 45px}.l-navbar{left: 0;padding: 1rem 1rem 0 0}.show{width: calc(var(--nav-width) + 156px)}.body-pd{padding-left: calc(var(--nav-width) + 188px)}}
       
        body {
            background: #ffffff;
            margin: 0;
            padding: 0;
        }
        .navbar-brand img {
            width: 50px;
            height: auto;
            margin-right: 10px;
            margin-top: 18px;
        }
        .navbar-brand h5 {
            font-size: 18px;
            margin-left: 10px;
            flex-grow: 1;
        }

        .card{
            margin-left: 30px;
        }

    </style>
</head>

<body id="body-pd">
    <header class="header" id="header">
        <a class="navbar-brand d-flex align-items-center">
            <div class="header_toggle"> 
                
                <i class='bx bx-menu' id="header-toggle"></i>
                
            </div>
            <div class="d-flex"></div>
            <img src="{{ asset('assets/images/pbg.png') }}" alt="Logo"  href="{{ route('jumlahpengunjung') }}" >
            @auth
            <h3 style="color: white;">Admin {{ Auth::user()->name}}</h3>
            @endauth
        </a>
        <form class="d-flex">
            <a href="#" onclick="confirmLogout()" class="btn btn-outline-light me-2" role="button">Logout</a>

            </form>
    </header>
    
        <div class="l-navbar" id="nav-bar">
            <nav class="nav">
                <div> <a href="{{ route('jumlahpengunjung') }}" class="nav_logo"> <i class='bx bx-layer nav_logo-icon'></i> <span class="nav_logo-name">Admin Dashboard</span> </a>
                    <div class="nav_list"> <a href="{{ route('dashboard') }}" class="nav_link"> <i class='bx bx-folder nav_icon'></i> <span class="nav_name">Data Pengunjung</span> </a></div>
                    <div class="nav_list"> <a href="{{ route('edit-password') }}" class="nav_logo"> <i class='bx bx-folder nav_icon'></i> <span class="nav_name"> Edit Password </span></a></div>
            </nav>
        </div>

<div class="card">
    <div class="content">
        <div class="container ml-5">
            <div class="row">
                <div class="col-md-12">
                    <div id="datapengunjung">
                    <div class="block mt-11" >
                        <br>
                        <br>
                        <br>
                    <div class="container">
                    <br>
        <h1>Edit Password</h1>
        @if(session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif
        @if(session('error'))
            <div class="alert alert-danger">
                {{ session('error') }}
            </div>
        @endif
        <form method="post" action="{{ route('update-password') }}">
            @csrf
            @method('PUT')
            <div class="form-group">
                <label for="current_password">Current Password</label>
                <input type="password" name="current_password" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="new_password">New Password</label>
                <input type="password" name="new_password" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input type="password" name="confirm_password" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary">Update Password</button>
        </form>
    </div>

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!-- Datatables -->
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script>
        $(document).ready(function() {
            var table = $('#example').DataTable({
                responsive: true
            }).columns.adjust().responsive.recalc();
        });
    </script>
    <script>
        document.addEventListener("DOMContentLoaded", function(event) {
   
   const showNavbar = (toggleId, navId, bodyId, headerId) =>{
   const toggle = document.getElementById(toggleId),
   nav = document.getElementById(navId),
   bodypd = document.getElementById(bodyId),
   headerpd = document.getElementById(headerId)
   
   // Validate that all variables exist
   if(toggle && nav && bodypd && headerpd){
   toggle.addEventListener('click', ()=>{
   // show navbar
   nav.classList.toggle('show')
   // change icon
   toggle.classList.toggle('bx-x')
   // add padding to body
   bodypd.classList.toggle('body-pd')
   // add padding to header
   headerpd.classList.toggle('body-pd')
   })
   }
   }
   
   showNavbar('header-toggle','nav-bar','body-pd','header')
   

   const linkColor = document.querySelectorAll('.nav_link')
   
   function colorLink(){
   if(linkColor){
   linkColor.forEach(l=> l.classList.remove('active'))
   this.classList.add('active')
   }
   }
   linkColor.forEach(l=> l.addEventListener('click', colorLink))
   
    // Your code to run since DOM is loaded and ready
   });
    </script>

<script>
    function confirmLogout() {
        if (confirm("Apakah Anda yakin ingin logout?")) {
            window.location.href = "{{ route('actionlogout') }}";
        }
    }
</script>
</body>
</html>