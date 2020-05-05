<?php
namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Auto extends Model
{
    public function todos(){
        $autos = collect(DB::table('auto')->select('*')->get()->all());
        return $this->armarObjeto($autos);
    }

    private function armarObjeto($autos){
        $tipos = $this->tipos();
        $autosConTipo = collect([]);
        $autos->filter(function($item)use($tipos,$autosConTipo){
            $item = collect($item);
            $tipos->each(function($i)use($item,$autosConTipo){
                if($i->Id == $item["TipoAutoId"] ){
                    $item->put("TipoNombre",$i);
                    $autosConTipo->push($item);
                }
            });
        });

        $autosConImagen = collect([]);
        $autosConTipo->filter(function($item)use($autosConImagen){
            $item = collect($item);
            $autoConImagen = $this->buscarImagenes($item["Id"],1);
            $item->put("Imagenes", $autoConImagen);
            $autosConImagen->push($item);
        });
        return $autosConImagen;
    }
    private function tipos(){
        return  DB::table('tipo_auto')->select('*')->get();
    }
    public function buscarImagenes($id, $tipo){
        return DB::table('imagen_auto')->where("AutoId",$id)->where("TipoImagen",$tipo)->get();
    }

    public function autosPorTipo($id){
        $autos = DB::table('auto')->where('TipoAutoId',$id)->get();
        return $this->armarObjeto($autos);
    }

    public function find($id){
        $find_auto = DB::table('auto')->where("Id",$id)->get();
        return $this->armarObjeto($find_auto);
    }


}
