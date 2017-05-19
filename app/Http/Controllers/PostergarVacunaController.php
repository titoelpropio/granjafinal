<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\PostergarVacuna;
use App\ConsumoVacuna;
use App\Http\Requests;
use Session;
use Redirect;
use DB;
use Hash;

class PostergarVacunaController extends Controller {
    /* public function __construct() {
      $this->middleware('auth');
      $this->middleware('admin');
      $this->middleware('auth',['only'=>'admin']);
      } */

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
//        $users = User::paginate(5);
//        return view('usuario.index',compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        return view('usuario.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
        try {
            DB::beginTransaction();
            if ($request->ajax()) {
                $consulta = DB::select("select count(*) as count from postergar_vacuna where id_control_vacuna=" . $request->id_control_vacuna);
                if ($consulta[0]->count == 0) {

                    PostergarVacuna::create([
                        'id_control_vacuna' => $request->id_control_vacuna,
                        'estado' => $request->estado
                    ]);

                    DB::commit();
                    return response()->json($request->all());
                } else {
                    DB::commit();

                    return response()->json(['mensaje' => 'YA SE POSTERGO LA VACUNA']);
                }
            }
        } catch (Exception $e) {
            DB::rollback();
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id) {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        $user = User::find($id);
        return view('usuario.edit', ['user' => $user]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UserUpdateRequest $request, $id) {
        $this->user->fill($request->all());
        $this->user->save();
        Session::flash('message', 'USUARIO ACTUALIZADO CORRECTAMENTE');
        return Redirect::to('/usuario');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function LPostergacionVacuna($id) {

        $resultado = DB::select("select postergar_vacuna.id, vacuna.nombre, vacuna.detalle,control_vacuna.id as idcontrol_vacuna  from vacuna, postergar_vacuna,control_vacuna where  postergar_vacuna.id_control_vacuna= control_vacuna.id and control_vacuna.id_edad=" . $id . " and control_vacuna.id_vacuna=vacuna.id and postergar_vacuna.estado=1");
        return response()->json($resultado);
    }

    public function ConsVacPost($idControlVacuna, $idVacunaPost) {
        $portergar = PostergarVacuna::find($idVacunaPost);
        $portergar->fill([
            'estado' => 0
        ]);
        $portergar->save();


        DB::table('consumo_vacuna')->insert(['estado' => 1, 'id_control_vacuna' => $idControlVacuna]);
        return response()->json(["mensaje" => "se ha guardado correctamente"]);
    }

    public function EliminarVacPost($id, $idVacunaPost) {
        $portergar = PostergarVacuna::find($idVacunaPost);
        $portergar->fill([
            'estado' => 0
        ]);
        $portergar->save();
        return response()->json(["mensaje" => "se ha eliminado correctamente correctamente"]);
    }

    public function destroy($id) {
        $user = User::find($id);
        $user->delete();
        User::destroy($id);
        return response()->json($id);
        /* Session::flash('message','USUARIO ELIMINADO CORRECTAMENTE');
          return Redirect::to('/usuario'); */
    }

}
