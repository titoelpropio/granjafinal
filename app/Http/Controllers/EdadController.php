<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use Session;
use Redirect;
use App\Edad;
use App\Galpon;
use App\Fases;
use App\FasesGalpon;
use App\Grupo_control_alimento;
use App\ControlAlimentoGalpon;
use App\Http\Requests\EdadCreateRequest;
use App\Http\Requests\EdadUpdateRequest;
use DB;
use Hash;

class EdadController extends Controller {

    public function __construct() {
        $this->middleware('auth');
        $this->middleware('admin');
        $this->middleware('auth', ['only' => 'admin']);
    }

    function index(Request $request) {
        $edad = Edad::where('estado', '=', 1)->OrderBy('edad', 'asc');
        $fases = Fases::lists('nombre', 'id');
        $contro_alimento = DB::select('select *from grupo_control_alimento where estado=1 and  deleted_at IS NULL');

        /* if ($request->ajax()) {
          return response()->json(view('edad.edadrender', compact('edad'))->render());
          } */
        return view('edad.index', compact('edad', 'fases', $fases, 'contro_alimento', $contro_alimento));
    }

    public function create() {
        return view('edad.create');
    }

    public function getgalpon(Request $request) {
        $eda = DB::select("SELECT galpon.numero,galpon.id FROM galpon");
        return response()->json($eda);
    }

    public function getgalpon_actual(Request $request, $tipe) {
        $eda2 = DB::select("SELECT numero,id from galpon WHERE id=" . $tipe . "
        UNION
        SELECT numero,id FROM galpon WHERE id!=" . $tipe);
        return response()->json($eda2);
    }

    public function getgalpon_traspaso(Request $request, $tipe1, $tipe2) {
        $eda3 = DB::select("SELECT DISTINCT nombre,id FROM fases WHERE (NOT EXISTS (SELECT * FROM fases_galpon WHERE fases_galpon.id_fase = fases.id and fases_galpon.id_edad=" . $tipe1 . ")) and fases.numero>" . $tipe2 . " ORDER by fases.numero LIMIT 1");
        return response()->json($eda3);
    }

    public function edadstrore(EdadCreateRequest $request) {
        try {
            DB::beginTransaction();
            if ($request->ajax()) {
                $result_2 = DB::select("SELECT COUNT(*) AS contador, galpon.numero,fases.nombre FROM edad,fases,fases_galpon,galpon where edad.id=fases_galpon.id_edad AND fases_galpon.id_fase=fases.id AND galpon.id=edad.id_galpon AND edad.estado=1 AND fases_galpon.id_fase=" . $request->id_fase . " and fases.nombre!='PONEDORA' and fases_galpon.fecha_fin IS NULL");
                $fase = $result_2[0]->nombre;
                if ($result_2[0]->contador == 0) {
                    $result = DB::select("SELECT COUNT(*) AS contador, galpon.numero FROM edad,fases,fases_galpon,galpon where edad.id=fases_galpon.id_edad AND fases_galpon.id_fase=fases.id AND galpon.id=edad.id_galpon AND edad.estado=1 AND fases_galpon.id_fase=" . $request->id_fase . " and galpon.id=" . $request->id_galpon . " and fases_galpon.fecha_fin IS NULL");
                    if ($result[0]->contador == 0) {
                        $id = Edad::create([   //REGISTRA LA EDAD 
                                    'fecha_inicio' => $request->fecha_inicio,
                                    'estado' => 1,
                                    'id_galpon' => $request->id_galpon,]);

                        DB::table('fases_galpon')->insert([ // LA TERCERA TABLA FASE GALPON
                            'id_edad' => $id['id'],
                            'id_fase' => $request->id_fase,
                            'cantidad_inicial' => $request->cantidad_inicial,
                            'cantidad_actual' => $request->cantidad_actual,
                            'total_muerta' => $request->total_muerta,
                            'fecha_inicio' => $request->fecha_inicio]);
                        ControlAlimentoGalpon::create([//Registra el control de alimento
                            'id_edad' => $id['id'],
                            'id_control_alimento' => $request['id_control_alimento'],
                        ]);
                        DB::commit();
                        return response()->json($request->all());
                    } else {
                        return response()->json(["mensaje" => "EL GALPON " . $result[0]->numero . " ESTA OCUPADO"]);
                    }
                } else {
                    return response()->json(["mensaje" => "LA " . $fase . " ESTA OCUPADO"]);
                }
            }
        } catch (Exception $e) {
            DB::roolback();
        }
    }

    public function obtener_id_edad(Request $request) {
        if ($request->ajax()) {
            $id_edad = DB::select("SELECT MAX(id)as id from edad");
            return response()->json($id_edad);
        }
    }

    public function update(EdadUpdateRequest $request, $id) {
        try {
            DB::beginTransaction();
            if ($request->ajax()) {
                // $galpon_actual = DB::select('select galpon.id ,galpon.numero ,fases.nombre from galpon,edad,fases_galpon,fases where edad.id=fases_galpon.id_edad and fases.id=fases_galpon.id_fase and edad.id_galpon=galpon.id and edad.id=' . $id);
                // if ($galpon_actual[0]->nombre == 'PONEDORA') {
                //     $result = DB::select("select edad.id as id_edad, galpon.numero,galpon.id as id_galpon from edad ,galpon,fases_galpon,fases where edad.id=fases_galpon.id_edad and fases.id=fases_galpon.id_fase and edad.id_galpon=galpon.id and edad.estado=1 and galpon.id<>" . $galpon_actual[0]->id . " and fases.id=" . $request->id_fase_galpon);
                //     for ($i = 0; $i < count($result); $i++) {
                //         if ($result[$i]->id == $request->id_galpon) {
                //             return response()->json(["mensaje" => "EL GALPON " . $result_2[0]->numero . " ESTA OCUPADO"]);
                //         }
                //     }
                    DB::table('edad')->where('id', $id)->update(['fecha_inicio' => $request->fecha_inicio, 'estado' => $request->estado, 'id_galpon' => $request->id_galpon]);

                    DB::table('fases_galpon')->where('id', $request->id_fase_galpon)->update(['id_fase' => $request->id_fase, 'cantidad_inicial' => $request->cantidad_inicial, 'cantidad_actual' => $request->cantidad_actual, 'total_muerta' => $request->total_muerta, 'fecha_inicio' => $request->fecha_inicio, 'id_edad' => $request->id_edad]);
                         DB::table('control_alimento_galpon')->where('id_edad', $id)->update(['id_control_alimento' => $request->cargarselectcontrol]);
                          DB::table('control_alimento_galpon')->where('id_edad', $id)->update(['id_control_alimento' => $request->cargarselectcontrol]);
                             DB::table('grupo_control_alimento')->where('id', $request->cargarselectcontrol)->update(['estado' =>0]);
                    DB::commit();
                    return response()->json($request->all());
                // } else {
                //     DB::table('edad')->where('id', $id)->update(['fecha_inicio' => $request->fecha_inicio, 'estado' => $request->estado, 'id_galpon' => $request->id_galpon]);

                //     DB::table('fases_galpon')->where('id', $request->id_fase_galpon)->update(['id_fase' => $request->id_fase, 'cantidad_inicial' => $request->cantidad_inicial, 'cantidad_actual' => $request->cantidad_actual, 'total_muerta' => $request->total_muerta, 'fecha_inicio' => $request->fecha_inicio, 'id_edad' => $request->id_edad]);
                //     DB::commit();
                //     return response()->json($request->all());
                // }
            }
        } catch (Exception $e) {
            DB::roolback();
        }
    }

    public function edit($id) {
        $edad = Edad::find($id);
        return response()->json($edad);
    }

    public function listaedad() {
        $edad = DB::select("SELECT edad.id as id_edad,fases.id as id_fase,fases_galpon.id as id_fase_galpon,DATEDIFF(now(),edad.fecha_inicio)AS edad,edad.fecha_inicio,fases_galpon.fecha_inicio as fecha_inicio_fase,fecha_descarte, edad.estado, edad.id_galpon,(galpon.numero) as numero_galpon,fases_galpon.cantidad_inicial,fases_galpon.cantidad_actual,(fases.numero) as numero_fase,fases.nombre,fases_galpon.fecha_fin,fases_galpon.total_muerta from edad,galpon,fases_galpon,fases where edad.estado!=0 AND fases.id=fases_galpon.id_fase and fases_galpon.id_edad=edad.id AND galpon.id=edad.id_galpon AND fases_galpon.fecha_fin IS NULL order by fases.numero,galpon.numero");
        return response()->json($edad);
    }

    public function obtener_datos(Request $request, $tipe) {
        $edad = DB::select("SELECT edad.id as id_edad,fases.id as id_fase,fases_galpon.id as id_fase_galpon,DATEDIFF(now(),edad.fecha_inicio)AS edad,edad.fecha_inicio,fases_galpon.fecha_inicio as fecha_inicio_fase,fecha_descarte, edad.estado, edad.id_galpon,(galpon.numero) as numero_galpon,fases_galpon.cantidad_inicial,fases_galpon.cantidad_actual,(fases.numero) as numero_fase,fases.nombre,fases_galpon.fecha_fin,fases_galpon.total_muerta from edad,galpon,fases_galpon,fases where edad.estado!=0 AND fases.id=fases_galpon.id_fase and fases_galpon.id_edad=edad.id AND galpon.id=edad.id_galpon AND fases_galpon.fecha_fin IS NULL and edad.id=" . $tipe);
        return response()->json($edad);
    }

    public function updateedad(Request $request, $tipe) {//este da de baja la edad
        if ($request->ajax()) {
             try {
            DB::beginTransaction();
            $edad = Edad::find($tipe);
            $edad->fill($request->all());
            $edad->save();
            $resultado=DB::select('SELECT * FROM control_alimento_galpon where id_edad='.$tipe);
            DB::table('grupo_control_alimento')->where('id', $resultado[0]->id_control_alimento)->update(['estado' => 1]);
            DB::commit();
            return response()->json($request->all());
                } catch (Exception $e) {
            DB::roolback();
        }
    }
}
    public function cargarselectcontrol($id){
        $result=DB::select('SELECT grupo_control_alimento.id,grupo_control_alimento.nro_grupo FROM `control_alimento_galpon`,grupo_control_alimento WHERE  control_alimento_galpon.id_control_alimento=grupo_control_alimento.id and
         control_alimento_galpon.id_edad='.$id.' UNION
select grupo_control_alimento.id,grupo_control_alimento.nro_grupo from grupo_control_alimento where grupo_control_alimento.deleted_at IS NULL AND grupo_control_alimento.estado=1');
        return response()->json($result);
    }
}
