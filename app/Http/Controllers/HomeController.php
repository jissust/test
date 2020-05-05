<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Laracasts\Utilities\JavaScript\JavaScriptFacade as JavaSCript;
use App\Auto;

class HomeController extends Controller
{
    function index(){
        $auto = new Auto();
        $autos =collect($auto->todos());
        JavaScript::put([
            'autos' => $autos,
        ]);
        return view("home");
    }

    function filtrar(Request $request){
        $id = $request[0];
        $auto = new Auto();
        return $auto->autosPorTipo($id);
    }

    function ordenarLista(Request $request){
        $orden = $request["orden"];
        $lista = collect($request["lista"]);
        $ordenado = "";
        if($orden == 1){
            $ordenado = $lista->sortBy(function($item){
                return $item["Precio"];
            })->values();
        }elseif($orden == 2){
            $ordenado = $lista->sortByDesc(function($item){
                return $item["Precio"];
            })->values();
        }elseif($orden == 3){
            $ordenado = $lista->sortByDesc(function($item){
                return $item["Anio"];
            })->values();
        }elseif ($orden == 4){
            $ordenado = $lista->sortBy(function($item){
                return $item["Anio"];
            })->values();
        }

        return $ordenado;

    }
}
