<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="/node_modules/bootstrap/dist/css/bootstrap.min.css" >
    <link rel="stylesheet" href="/node_modules/@fortawesome/fontawesome-free/css/all.min.css" >
    <link rel="stylesheet" href="/node_modules/owl.carousel/dist/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/carousel.css">
    <link rel="stylesheet" href="/css/style.css">

    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
    <title>Hello, world!</title>
</head>
<body>
<div class="wrapper">
    <nav id="sidebar">
        <div class="sidebar_lateral">
            <span class="sidebar-header">
                Cerrar
            </span>
            <span id="dismiss">
                <i class="fa fa-times" aria-hidden="true"></i>
            </span>
        </div>
        <ul class="list-unstyled menu_lateral" >
            <li>
                <a href="#">
                    Modelos
                </a>
            </li>
            <li>
                <a href="#">
                    Servicios y Accesorios
                </a>
            </li>
            <li>
                <a href="#">
                    Financiación
                </a>
            </li>
            <li>
                <a href="#">
                    Reviews y Comunidad
                </a>
            </li>
        </ul>
        <ul class="list-unstyled menu_lateral" >
            <li>
                <a href="#">
                    Toyota Mobility Service
                </a>
            </li>
            <li>
                <a href="#">
                    Toyota Gazoo Racing
                </a>
            </li>
            <li>
                <a href="#">
                    Toyota Híbridos
                </a>
            </li>
        </ul>
        <ul class="list-unstyled menu_lateral" >
            <li>
                <a href="#">
                    Concesionarios
                </a>
            </li>
            <li>
                <a href="#">
                    Test Drive
                </a>
            </li>
            <li>
                <a href="#">
                    Contacto
                </a>
            </li>
        </ul>
        <ul class="list-unstyled menu_lateral" style="background: #efeeef; height: 100%">
            <li>
                <a href="#">
                    Actividades
                </a>
            </li>
            <li>
                <a href="#">
                    Servicios al Cliente
                </a>
            </li>
            <li>
                <a href="#">
                    Ventas Especiales
                </a>
            </li>
            <li>
                <a href="#">
                    Innovación
                </a>
            </li>
            <li>
                <a href="#">
                    Prensa
                </a>
            </li>
            <li>
                <a href="#">
                    Acerca de...
                </a>
            </li>
        </ul>
    </nav>
    <!-- Page Content  -->
    <nav class="navbar navbar-expand-lg nav-top">
        <a class="navbar-brand" href="{{ env('APP_URL') }}/">
            <img src="/img/nav/logo.svg" />
        </a>
        <ul class="nav navbar-nav mr-auto posicion">
            <li class="nav-item">
                <a class="text-one activo" href="#">
                    Modelos
                </a>
            </li>
            <li class="nav-item">
                <a class="text-one" href="#">
                    Ficha de modelo
                </a>
            </li>
        </ul>
        <div id="sidebarCollapse" class="menu-derecha">
            <span class="text-two">
                Menú
            </span>
            <button type="button" class="btn">
                <i class="fa fa-bars" aria-hidden="true"></i>
            </button>
        </div>
    </nav>
    <div class="overlay"></div>
    @yield('content')
    <footer>

    </footer>
</div>
<script src="/node_modules/jquery/dist/jquery.slim.min.js"></script>
<script src="/node_modules/popper.js/dist/umd/popper.min.js"></script>
<script src="/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/node_modules/owl.carousel/dist/owl.carousel.min.js"></script>
<script src="/node_modules/vue/dist/vue.js"></script>
<script src="/node_modules/vue-resource/dist/vue-resource.min.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $('#dismiss, .overlay').on('click', function () {
            $('#sidebar').removeClass('active');
            $('.overlay').removeClass('active');
        });

        $('#sidebarCollapse').on('click', function () {
            $('#sidebar').addClass('active');
            $('.overlay').addClass('active');
            $('.collapse.in').toggleClass('in');
            $('a[aria-expanded=true]').attr('aria-expanded', 'false');
        });
        $('.collapse').collapse("hide");
    });
    function listarFiltro(){
        $( ".lista-filtro" ).toggle();
    }
</script>
@stack('js')
</body>
</html>
