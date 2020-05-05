@extends('master')
@push('js')
    <script>
        var app = new Vue({
            el: '#app',
            data: {
                autos:{},
                todos:null
            },
            created:function(){
                this.autos = laravel.autos;
                this.todos = laravel.autos;
            },
            methods:{
                desplegarMenu: function () {
                    $( ".lista-filtro1" ).toggle();
                },
                filtrar: function($id){
                    console.log(event.target.id);
                    var clase = event.target.id;
                    $(".seleccionado-gris").removeClass("seleccionado-gris").addClass("seleccionado-blanco");
                    $("#"+clase).removeClass("seleccionado-blanco").addClass("seleccionado-gris");
                    this.$http.post('/filtrar', $id, {
                        headers: {
                            'X-CSRF-TOKEN': document.querySelector('input[name="_token"]').getAttribute('value')
                        }
                    }).then(
                        function (response) {
                            this.autos = response.data;
                            console.log(response.data);
                        }, function (error) {
                            if (error.data !== null && typeof error.data === 'object') {
                                this.errores = error.data;
                            }
                        }
                    );
                },
                restaurar:function(){
                    var clase = event.target.id;
                    $(".seleccionado-gris").removeClass("seleccionado-gris").addClass("seleccionado-blanco");
                    $("#"+clase).removeClass("seleccionado-blanco").addClass("seleccionado-gris");
                    this.autos = this.todos;
                },
                ordenarLista: function($orden){
                    var lista = {
                        orden : $orden,
                        lista : this.autos
                    }
                    var clase = event;
                    console.log(clase);
                    /*$(".cada_item").removeClass("fondo-gris");
                    $("#"+clase).addClass("fondo-gris");*/

                    this.$http.post('/ordenar_lista', lista, {
                        headers: {
                            'X-CSRF-TOKEN': document.querySelector('input[name="_token"]').getAttribute('value')
                        }
                    }).then(
                        function (response) {
                            //this.autos = response.data;
                            this.autos = response.data;
                            console.log(response.data);
                        }, function (error) {
                            if (error.data !== null && typeof error.data === 'object') {
                                this.errores = error.data;
                            }
                        }
                    );
                }
            }
        })
    </script>
@endpush
@section('content')
<div id="app">
    @csrf
    <section id="grilla-menu">
        <div class="container">
            <h1 class="titulo_modelo">
                Descubrí todos los modelos
            </h1>
            <div class="tipo_auto">
                <div id="ordenarPor" class="">
                    <div class="menu-horizontal">
                        <div class="text-one" type="button"  style="float:left; margin-right: 20px">
                            Ordenar por
                        </div>
                        <ul class="ul-ordenar">
                            <li class="nav-item">
                                <a id="todos_menu"  class="text-two seleccionado-gris" href="#" v-on:click="restaurar">
                                    Todos
                                </a>
                            </li>
                            <li class="nav-item">
                                <a id="menu_autos" class="text-two seleccionado-blanco menu_autos" href="#" v-on:click="filtrar(1)">
                                    Autos
                                </a>
                            </li>
                            <li class="nav-item">
                                <a id="menu_pickups" class="text-two seleccionado-blanco" href="#" v-on:click="filtrar(2)">
                                    Pickups
                                </a>
                            </li>
                            <li class="nav-item">
                                <a id="menu_comerciales" class="text-two seleccionado-blanco" href="#" v-on:click="filtrar(3)">
                                    Comerciales
                                </a>
                            </li>
                            <li class="nav-item">
                                <a id="menu_suv" class="text-two seleccionado-blanco" href="#" v-on:click="filtrar(4)">
                                    SUV
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="menu-vertical">
                        <div class="text-one" type="button"  style="float:left; margin-right: 20px" v-on:click="desplegarMenu">
                            Ordenar por
                        </div>
                        <div class="card lista-filtro1" >
                            <ul id="asd" class="list-group list-group-flush" >
                                <li class="list-group-item" >
                                    <a id="resp_todos" v-on:click="restaurar">
                                        Todos
                                    </a>
                                </li>
                                <li class="list-group-item">
                                    <a id="resp_autos" v-on:click="filtrar(1)">
                                        Autos
                                    </a>
                                </li>
                                <li class="list-group-item">
                                    <a id="resp_pickups" v-on:click="filtrar(2)">
                                        Pickups
                                    </a>
                                </li>
                                <li class="list-group-item">
                                    <a id="resp_comerciales" v-on:click="filtrar(3)">
                                        Comerciales
                                    </a>
                                </li>
                                <li class="list-group-item">
                                    <a id="resp_suv" v-on:click="filtrar(4)">
                                        SUV
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="menu-derecha-tipo" >
                    <span id="filtro" class="filtro" onclick="listarFiltro()">
                        <span class="text-one">
                            Filtrar por
                        </span>
                        <span>
                            <img src="img/nav-tipo-auto/fill-1.svg">
                        </span>
                    </span>
                    <div class="card lista-filtro" style="display: none;">
                        <ul class="list-group list-group-flush" >
                            <li class="list-group-item">
                                Nada
                            </li>
                            <li  class="list-group-item">
                                <a id="menor" class="cada_item" v-on:click="ordenarLista(1)">
                                    De <b>menor</b> a <b>mayor</b> precio
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a id="mayor" class="cada_item" v-on:click="ordenarLista(2)">
                                    De <b>mayor</b> a <b>menor</b> precio
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a id="nuevo" class="cada_item" v-on:click="ordenarLista(3)">
                                    Más <b>nuevos</b> primero
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a id="viejo" class="cada_item" v-on:click="ordenarLista(4)">
                                    Más <b>viejos</b> primero
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="galeria">
        <div class="container">
            <div class="row">
                <a class="col-sm-3" v-for="(auto, index) in autos" :href="'/auto/'+auto.Id">
                    <div class="auto_titulo">
                        @{{ auto.Nombre }}
                    </div>
                    <div class="auto_valor">
                        @{{ auto.Anio }}  |  $ @{{ auto.Precio }}
                    </div>
                    <img v-for="(imagen, index) in auto.Imagenes" class="auto" :src="imagen.Path">
                </a>
            </div>
        </div>
    </section>
</div>
@endsection
