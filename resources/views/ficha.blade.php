@extends('master')
@push('js')
    <script>
        var app = new Vue({
            el: '#app',
            data: {
                auto:null,
            },
            created:function(){
                this.auto = laravel.auto;
            }
        })
    </script>
@endpush
@section('content')
<div id="app">
    <section id="modelo">
        <div class="container">
            <div class="row">
                <div class="col-sm-7">
                    <img v-for="(im, index) in auto.ImagenX2"  id="" class="img-fluid" :src="im.Path" />
                </div>
                <div class="col-sm-5">
                    <div class="titulo_min">
                        @{{ auto.Nombre }}
                    </div>
                    <h1 class="titulo_modelo">
                        @{{ auto.Titulo }}
                    </h1>
                    <div class="descripcion">
                        @{{ auto.Descripcion }}
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="slider-modelo">
        <div class="main-content">
            <div class="owl-carousel owl-theme">
                <div class="item" v-for="(cada, index) in auto.ImagenX3">
                    <img :src="cada.Path" />
                    <div class="titulo_carousel">
                        @{{ cada.Titulo }}
                    </div>
                    <div class="texto_carousel">
                        @{{ cada.Descripcion }}
                    </div>
                </div>
            </div>
            <div class="owl-theme">
                <div class="owl-controls">
                    <div class="custom-nav owl-nav"></div>
                </div>
            </div>
        </div>
    </section>
    <section id="descripcion-model">
        <div class="container" v-for="(img, index) in auto.ImagenX4">
            <div class="row" v-if="( (index + 1) % 2) != 0">
                <div class="col-sm-6 bloque_modelo">
                    <div class="titulo_descripcion">
                        @{{ img.Titulo }}
                    </div>
                    <div class="texto_descripcion">
                        @{{ img.Descripcion }}
                    </div>
                </div>
                <div class="col-sm-6">
                    <img class="img-fluid" :src="img.Path"/>
                </div>
            </div>
            <div v-else class="row">
                <div class="col-sm-6">
                    <img class="img-fluid" :src="img.Path"/>
                </div>
                <div class="col-sm-6 bloque_modelo" >
                    <div class="titulo_descripcion">
                        @{{ img.Titulo }}
                    </div>
                    <div class="texto_descripcion">
                        @{{ img.Descripcion }}
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection

@push('js')
<script>
    $('.main-content .owl-carousel').owlCarousel({
        stagePadding: 50,
        loop: true,
        //margin: 20,
        nav: true,
        navText: [
            '<i class="fa fa-angle-left" aria-hidden="true"></i>',
            '<i class="fa fa-angle-right" aria-hidden="true"></i>'
        ],
        navContainer: '.main-content .custom-nav',
        responsive:{
            0:{
                items: 1
            },
            600:{
                items: 3
            },
            1000:{
                items: 4
            }
        }
    });
</script>
@endpush
