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

class RangoController extends Controller {

    public function __construct() {
        $this->middleware('auth');
        $this->middleware('admin');
        $this->middleware('auth', ['only' => 'admin']);
    }

    var $var1 = 1;

    function index() {
        $alimento=DB::select('select *from alimento where deleted_at IS NULL');
        return view('controlalimento.crear_rango',compact('alimento'));
    }

    function cargar_tabla_rtemperatura() {

        $rango_temperatura = DB::select("SELECT rango_temperatura.id as id_temp,temp_min,temp_max from rango_temperatura where deleted_at IS NULL order by temp_min");
        return response()->json($rango_temperatura);
    }

    function cargar_tabla_redad() {
        $rango_edad = DB::select("SELECT rango_edad.id as id_edad, edad_max,edad_min, alimento.tipo from rango_edad,alimento where rango_edad.id_alimento=alimento.id and rango_edad.deleted_at IS NULL order by edad_min");
        return response()->json($rango_edad);
    }

    public function create() {
        return view('controlalimento.create');
    }

    public function store_edad(Request $request) {

   
        if ($this->verificar_edad($request->edad_min,0) == 1) {
            if ($this->verificar_edad($request->edad_max,0) == 1) {
                if ($request->ajax()) {
                    $controlalimento = RangoEdad::create($request->all());
        //                Session::flash('message','USUARIO CREADO CORRECTAMENTE');
        // return Redirect::to('/rango');
                 
                    return response()->json($request->all());
                }
            } else {
        //             Session::flash('message-error','YA EXISTE ESE RANGO DE EDAD');
        // return Redirect::to('/rango');
                return response()->json(['mensaje' => 'YA EXISTE ESE RANGO DE EDAD']);
            }
        } else {
        //         Session::flash('message-error','YA EXISTE ESE RANGO DE EDAD');
        // return Redirect::to('/rango');
            return response()->json(['mensaje' => 'YA EXISTE ESE RANGO DE EDAD']);
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

    /* public function store_temperatura(Request $request) {
      $resultado = DB::select("select count(*) as cont from rango_temperatura where rango_temperatura.temp_min<=" . $request->temp_min . " and rango_temperatura.temp_max>=" . $request->temp_max);
      if ($resultado[0]->cont == 0) {
      if ($request->ajax()) {
      $rango_temp = DB::table('rango_temperatura')->insert(['temp_min' => $request->temp_min, 'temp_max' => $request->temp_max, 'estado' => $request->estado]);
      return response()->json($request->all());
      }
      } else {
      return response()->json(['mensaje' => 'YA EXISTE ESE RANGO DE TEMPERATURA']);
      }
      } */

    public function store_temperatura(Request $request) {
       
        if ($this->verificar_temperatura($request->temp_min,0) == 1) {
            
            if ($this->verificar_temperatura($request->temp_max,0) == 1) {
                if ($request->ajax()) {
                    $rango_temp = DB::table('rango_temperatura')->insert(['temp_min' => $request->temp_min, 'temp_max' => $request->temp_max, 'estado' => $request->estado]);

                    return response()->json($request->all());
                }
            } else {
                return response()->json(['mensaje' => 'YA EXISTE ESE RANGO DE TEMPERATRUA']);
            }
        } else {
            return response()->json(['mensaje' => 'YA EXISTE ESE RANGO DE TEMPERATRUA']);
        }
    }

    public function verificar_temperatura($valor,$id) {
                        $resultado = DB::select('SELECT * from rango_temperatura where deleted_at IS NULL and id<>'.$id);


        if (count($resultado) != 0) {
            for ($i = 0; $i < count($resultado); $i++) {
                if ($valor >= $resultado[$i]->temp_min and $valor <= $resultado[$i]->temp_max) {

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

    public function edit($id) {
        $ControlAlimento = ControlAlimento::find($id);
        $galpon = Galpon::lists('nombre', 'id');
        $silos = Silos::lists('nombre', 'id');
        return view('ControlAlimento.edit', compact('galpon', $galpon, 'silos', $silos), ['ControlAlimento' => $ControlAlimento]);
    }

    public function update($id, ControlAlimentoRequest $request) {
        $postura_huevo = PosturaHuevo::find($id);
        $postura_huevo->fill($request->all());
        $postura_huevo->save();
        return response()->json($request->all());
    }

    public function destroy_edad($id) {
        $RangoEdad = RangoEdad::find($id);
        $RangoEdad->delete();
        RangoEdad::destroy($id);
        return response()->json($id);
    }

    public function destroy_temperatura(Request $request, $id) {
        $rango_temperatura = DB::table('rango_temperatura')->where('id', $id)->update(['deleted_at' => $request->deleted_at]);
        return response()->json($id);
    }

    public function cargarDatosEdad($id) {
        $rango_edad = DB::select("SELECT rango_edad.id as id_edad, edad_max,edad_min, alimento.tipo from rango_edad,alimento where rango_edad.id_alimento=alimento.id and rango_edad.deleted_at IS NULL and rango_edad.id=".$id);
        return response()->json($rango_edad);
    }
 public function cargarDatosTemp($id) {
        $rango_temp= DB::select("SELECT * from rango_temperatura where deleted_at IS NULL and id=".$id);
        return response()->json($rango_temp);
    }

    public function actualizarEdad(Request $request) {
        if ($this->verificar_edad($request->edad_min,$request->id) == 1) {
            if ($this->verificar_edad($request->edad_max,$request->id) == 1) {
                if ($request->ajax()) {
                    if ($request->id_alimento==0) {
                    $rango_edad = DB::table('rango_edad')->where('id', $request->id)->update(['edad_min' => $request->edad_min, 'edad_max' => $request->edad_max, 'estado' => $request->estado]);
    
                    }
                    else{
                        $rango_edad = DB::table('rango_edad')->where('id', $request->id)->update(['edad_min' => $request->edad_min, 'edad_max' => $request->edad_max, 'estado' => $request->estado,'id_alimento'=>$request->id_alimento]);
                    }
                    
                    return response()->json($request->all());
                }
            } else {
                return response()->json(['mensaje' => 'YA EXISTE ESE RANGO DE EDAD']);
            }
        } else {
            return response()->json(['mensaje' => 'YA EXISTE ESE RANGO DE EDAD']);
        }
    }

    public function actualizarTemperatura(Request $request) {
        if ($this->verificar_temperatura($request->temp_min,$request->id) == 1) {
            if ($this->verificar_temperatura($request->temp_max,$request->id) == 1) {
                if ($request->ajax()) {
                    $rango_temp = DB::table('rango_temperatura')->where('id', $request->id)->update(['temp_min' => $request->temp_min, 'temp_max' => $request->temp_max]);

                    return response()->json($request->all());
                }
            } else {
                return response()->json(['mensaje' => 'YA EXISTE ESE RANGO DE EDAD']);
            }
        } else {
            return response()->json(['mensaje' => 'YA EXISTE ESE RANGO DE EDAD']);
        }
    }
}