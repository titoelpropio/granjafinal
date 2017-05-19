<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\RangoEdad;
use App\RangoTemperatura;
use App\Http\Requests;
use App\Http\Requests\ControlAlimentoRequest;
use Session;
use Redirect;
use DB;
use Hash;

class RangoEdadController extends Controller {

    public function __construct() {
       
    }

    var $var1 = 1;

    function index() {

        return view('controlalimento.crear_rango');
    }

    function cargar_tabla_rtemperatura() {

        $rango_temperatura = DB::select("SELECT * from rango_temperatura where deleted_at IS NULL order by temp_min");
        return response()->json($rango_temperatura);
    }

    function cargar_tabla_redad() {
        $rango_edad = DB::select("SELECT * from rango_edad where deleted_at IS NULL order by edad_min");
        return response()->json($rango_edad);
    }

    public function create() {
        return view('controlalimento.create');
    }

    public function store(Request $request) {
        if ($this->verificar_edad($request->edad_min,0) == 1) {
            if ($this->verificar_edad($request->edad_max,0) == 1) {
                // if ($request->ajax()) {
                    $controlalimento = RangoEdad::create($request->all());
                       Session::flash('message','USUARIO CREADO CORRECTAMENTE');
        return Redirect::to('/rango');
                 
                    // return response()->json($request->all());
                // }
            } else {
                    Session::flash('message','USUARIO CREADO CORRECTAMENTE');
        return Redirect::to('/rango');
                // return response()->json(['mensaje' => 'YA EXISTE ESE RANGO DE EDAD']);
            }
        } else {
                Session::flash('message','USUARIO CREADO CORRECTAMENTE');
        return Redirect::to('/rango');
            // return response()->json(['mensaje' => 'YA EXISTE ESE RANGO DE EDAD']);
        }
    }

    public function verificar_edad($valor,$id) {
        $resultado = DB::select('SELECT * from rango_edad where deleted_at IS NULL and id<>'.$id);
        if (count($resultado) != 0) {
            for ($i = 0; $i < count($resultado); $i++) {
                if ($valor >= $resultado[$i]->edad_min and $valor <= $resultado[$i]->edad_max) {

                    $var1 = 0;
                    return $var1;
                } else {

                    $var1 = 1;
                }
            }
            return $var1;
        } else {
            $var1 = 1;
            return $var1;
        }
    }

    public function rango_edades(Request $request) {
        if ($request->ajax()) {
            $resultado = DB::select("SELECT *from rango_edad WHERE deleted_at IS NULL");
            return response()->json($resultado);
        }
    }

  public function crear_rango(){
    return view('rango_edad.crear_rango');
  }

   
}