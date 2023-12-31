<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Dashboard Superadmin</title>
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

    <!--COUNT DASHBOARD SUPERADMIN-->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />

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

        .card-counter{
    box-shadow: 2px 2px 10px #DADADA;
    margin: 2px;
    padding: 20px 10px;
    background-color: #fff;
    height: 115px;
    border-radius: 5px;
    transition: .3s linear all;
    margin-left: 35px;
  }

  .card-counter:hover{
    box-shadow: 4px 4px 20px #DADADA;
    transition: .3s linear all;
    
  }

  .card-counter.primary{
    background-color: #007bff;
    color: #FFF;
  }

  .card-counter.danger{
    background-color: #ef5350;
    color: #FFF;
  }  

  .card-counter.success{
    background-color: #66bb6a;
    color: #FFF;
  }  

  .card-counter.info{
    background-color: #26c6da;
    color: #FFF;
  }  
  .card-counter.user{
    background-color: lightcoral;
    color: #FFF;
  }  
  .card-counter i{
    font-size: 5em;
    opacity: 0.3;
  }

  .card-counter .count-numbers{
    position: absolute;
    right: 35px;
    top: 20px;
    font-size: 32px;
    display: block;
  }

  .card-counter .count-name{
    position: absolute;
    right: 35px;
    top: 65px;
    font-style: italic;
    text-transform: capitalize;
    opacity: 0.5;
    display: block;
    font-size: 18px;
  }
  .l-navbarr {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: flex-end;
  height: 100%;
  background-color: #000000; /* Ubah warna latar belakang sesuai kebutuhan */
  color: #000000; /* Ubah warna teks sesuai kebutuhan */
  font-size: 5px; /* Atur ukuran font sesuai kebutuhan */
  padding-bottom: 20px; /* Atur padding bawah sesuai kebutuhan */
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
            <img src="{{ asset('assets/images/pbg.png') }}" alt="Logo">
            <h3 style="color: white;" href="superadmin/index.blade.php">Superadmin</h3>
        </a>
        <form class="d-flex">
        <a href="#" onclick="confirmLogout()" class="btn btn-outline-light me-2" role="button">Logout</a>
            </form>
    </header>
    
        <div class="l-navbar" id="nav-bar">      
            <nav class="nav">
                <div> <a href="{{ route('superadmin.index') }}" class="nav_logo"> <i class='bx bx-layer nav_logo-icon'></i> <span class="nav_logo-name">Superadmin<br> Dashboard</span> </a> </div>
                <div class="nav_list"> <a href="{{ route('superadmin.opd.dataopd') }}"class="nav_link"> <i class='bx bx-folder nav_icon'></i> <span class="nav_name">Data Perangkat<br>Daerah</span> </a></div>
                <div class="nav_list"> <a href="{{ route('superadmin.pengunjung')}}"class="nav_link"> <i class='bx bx-folder nav_icon'></i> <span class="nav_name">Data Pengunjung</span> </a></div>
                <div class="nav_list"> <a href="{{ route('superadmin.admin.user')}}" class="nav_link"> <i class='bx bx-user nav_icon'></i> <span class="nav_name">Data Admin</span> </a></div>
                <div class="nav_list"> <span class="nav_name" style="margin-left: 60px; color: #212529;"><font size="1.5px"><script>document.write(new Date().getFullYear())</script> &copy; IF UNSOED 21</font></a></span> </class></div>
            </nav>
        </div>

        
    <div class="content">
        <div class="container ml-5">
            <div class="row">
                <div class="col-md-12">
                    <div class="block mt-11" >
                        <br>
                        <br>
                        <br>
                        <br>
                    </div>
                </div>      
            </div>
        </div>
    </div>
    
    
    <div class="container">
  <div class="row">
  @if(session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
@endif
    <div class="col-md-3">
      <a href="{{ route('superadmin.opd.dataopd') }}" class="card-link">
        <div class="card-counter success">
          <i class="fa fa-database"></i>
          <span class="count-numbers">{{ $jumlah_opd }}</span>
          <span class="count-name">Data Perangkat<br>Daerah</span>
        </div>
      </a>
    </div>
    <div class="col-md-3">
      <a href="{{ route('superadmin.pengunjung') }}" class="card-link">
        <div class="card-counter info">
          <i class="fa fa-users"></i>
          <span class="count-numbers">{{ $jumlah_pengunjung }}</span>
          <span class="count-name">Data Pengunjung</span>
        </div>
      </a>
    </div>
    <div class="col-md-3">
      <a href="{{ route('superadmin.admin.user') }}" class="card-link">
        <div class="card-counter user">
          <i class="fa fa-users"></i>
          <span class="count-numbers">{{ $jumlah_user }}</span>
          <span class="count-name">Data Admin</span>
        </div>
      </a>
    </div>
  </div>
</div>

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
   
   /*===== LINK ACTIVE =====*/
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
    <!--COUNT DASHBOARD SUPERADMIN-->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
    function confirmLogout() {
        if (confirm("Apakah Anda yakin ingin logout?")) {
            window.location.href = "{{ route('actionlogout') }}";
        }
    }
</script>
</body>
</html>