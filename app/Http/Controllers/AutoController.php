<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Laracasts\Utilities\JavaScript\JavaScriptFacade as JavaSCript;
use App\Auto;

class AutoController extends Controller
{
    public function find($id){
        $auto = new Auto();
        $mi_auto = collect($auto->find($id));
        $autoConImagen = collect();
        $mi_auto->filter(function($item)use($autoConImagen){
            $auto = new Auto();
            $item = collect($item);
            $imagenX2 = $auto->buscarImagenes($item["Id"], 2);
            $item->put("ImagenX2",$imagenX2);
            $imagenX3 = $auto->buscarImagenes($item["Id"], 3);
            $item->put("ImagenX3",$imagenX3);
            $imagenX4 = $auto->buscarImagenes($item["Id"], 4);
            $item->put("ImagenX4",$imagenX4);
            $autoConImagen->push($item);
        });

        JavaScript::put([
            'auto' => $autoConImagen[0],
        ]);
        return view('ficha');
    }
}
