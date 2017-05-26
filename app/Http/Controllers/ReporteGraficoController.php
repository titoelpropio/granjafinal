<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use Session;
use Redirect;
use App\FasesGalpon;
use App\Http\Requests\FasesGalponRequest;
use App\Http\Requests\FasesGalponUpdateRequest;
use DB;
use Hash;


class  ReporteGraficoController  extends Controller {
    public function __construct() {
         $this->middleware('auth');
         $this->middleware('admin');
        $this->middleware('auth',['only'=>'admin']);
    }

    function index(Request $request) {
 $opcion=0;
 $galpon_numero="";
    	$result=array();
    	if (!is_null($request->fecha_inicio) && !is_null($request->fecha_fin)) {
    		$opcion=$request->opcion;
    		
$result=DB::select('SELECT galpon.numero, postura_huevo.postura_p as porsentaje,day(postura_huevo.fecha) as fecha ,month(postura_huevo.fecha) as mes  FROM galpon,edad,fases_galpon,fases,postura_huevo WHERE galpon.id=edad.id_galpon and edad.id=fases_galpon.id_edad AND fases_galpon.id_fase=fases.id AND fases_galpon.id=postura_huevo.id_fases_galpon and edad.id='.$request->id_edad.' and DATE_FORMAT(postura_huevo.fecha,"%m-%d-%Y") BETWEEN  DATE_FORMAT("'.$request->fecha_inicio.'","%m-%d-%Y") AND DATE_FORMAT("'.$request->fecha_fin.'","%m-%d-%Y")  ORDER BY mes,fecha');

    	}
else{
    	if (!is_null($request->id_edad)) {
    		$opcion=$request->opcion;
$result=DB::select('SELECT galpon.numero, AVG(postura_huevo.postura_p) as porsentaje,month(postura_huevo.fecha)as mes FROM galpon,edad,fases_galpon,fases,postura_huevo WHERE galpon.id=edad.id_galpon and edad.id=fases_galpon.id_edad AND fases_galpon.id_fase=fases.id AND fases_galpon.id=postura_huevo.id_fases_galpon and edad.id='.$request->id_edad.' GROUP by month(postura_huevo.fecha)  ORDER BY mes');

    	}}
    	if (count($result)!=0) {
 $galpon_numero=$result[0]->numero;
    	
    	}
    	$galpon=DB::select("SELECT galpon.id as id_galpon,edad.id as id_edad,fases_galpon.id as id_fase_galpon,galpon.numero,galpon.capacidad_total,DATEDIFF(now(),edad.fecha_inicio)AS edad,fases_galpon.cantidad_inicial,fases_galpon.cantidad_actual,fases.nombre,fases_galpon.total_muerta from edad,fases_galpon,galpon,fases WHERE edad.id_galpon=galpon.id and edad.id=fases_galpon.id_edad and fases.id=fases_galpon.id_fase and fases.nombre='PONEDORA' and edad.estado=1  order by numero ");
    	 

      
    
return view('Reporte_grafico.Reporte_produccion',['opcion'=>$opcion,'galpon_numero'=>$galpon_numero],compact('galpon','result'));
    		    	
    	
     $result=DB::select('SELECT AVG(postura_huevo.postura_p) as porsentaje,month(postura_huevo.fecha)as mes FROM galpon,edad,fases_galpon,fases,postura_huevo WHERE galpon.id=edad.id_galpon and edad.id=fases_galpon.id_edad AND fases_galpon.id_fase=fases.id AND fases_galpon.id=postura_huevo.id_fases_galpon and edad.id=6 GROUP by month(postura_huevo.fecha)');
      
    
return view('Reporte_grafico.Reporte_produccion',compact('galpon','result'));
    }
public function Rgrafico_postura(){
	$galpon=DB::select("SELECT galpon.id as id_galpon,edad.id as id_edad,fases_galpon.id as id_fase_galpon,galpon.numero,galpon.capacidad_total,DATEDIFF(now(),edad.fecha_inicio)AS edad,fases_galpon.cantidad_inicial,fases_galpon.cantidad_actual,fases.nombre,fases_galpon.total_muerta from edad,fases_galpon,galpon,fases WHERE edad.id_galpon=galpon.id and edad.id=fases_galpon.id_edad and fases.id=fases_galpon.id_fase and fases.nombre='PONEDORA' and edad.estado=1 and galpon.numero<=8 order by numero ");
     $result=DB::select('SELECT AVG(postura_huevo.postura_p) as porsentaje,month(postura_huevo.fecha)as mes FROM galpon,edad,fases_galpon,fases,postura_huevo WHERE galpon.id=edad.id_galpon and edad.id=fases_galpon.id_edad AND fases_galpon.id_fase=fases.id AND fases_galpon.id=postura_huevo.id_fases_galpon and edad.id=6 GROUP by month(postura_huevo.fecha)');
     return view('Reporte_grafico.Reporte_produccion',compact('galpon','result'));
}
    public function create() {
        return view('fasesgalpon.create');
    }

    public function getgalpon(Request $request) {
        $eda = DB::select("SELECT DISTINCT numero,id FROM galpon WHERE (NOT EXISTS (SELECT * FROM FasesGalpon WHERE FasesGalpon.id_galpon = galpon.id and estado!=0))");
        return response()->json($eda);
    }

    public function update(FasesGalponUpdateRequest $request, $id_fg) {
        if ($request->ajax()) {
            $actua = DB::table('fases_galpon')->where('id', $id_fg)->update(['id_fase'=>$request->id_fase, 'cantidad_inicial'=>$request->cantidad_inicial,'cantidad_actual'=>$request->cantidad_actual,'total_muerta'=>$request->total_muerta,'fecha_inicio'=>$request->fecha_inicio,'id_edad'=>$request->id_edad]);
            return response()->json($request->all());
        }
    }

    public function update2(Request $request, $id) {//este se encargar del traspaso 
        if ($request->ajax()) {

            $result_2=DB::select("SELECT COUNT(*) AS contador, fases.nombre FROM edad,fases,fases_galpon,galpon where edad.id=fases_galpon.id_edad AND fases_galpon.id_fase=fases.id AND galpon.id=edad.id_galpon AND edad.estado=1 AND fases_galpon.id_fase=".$request->id_fase." and fases.nombre!='PONEDORA' and fases_galpon.fecha_fin IS NULL");
            if ($result_2[0]->contador==0) {
                $result=DB::select("SELECT COUNT(*) AS contador, galpon.numero FROM edad,fases,fases_galpon,galpon where edad.id=fases_galpon.id_edad AND fases_galpon.id_fase=fases.id AND galpon.id=edad.id_galpon AND edad.estado=1 AND fases_galpon.id_fase=".$request->id_fase." and galpon.id=".$request->id_galpon." and fases_galpon.fecha_fin IS NULL");
                if ($result[0]->contador==0) {
                    $actua = DB::table('fases_galpon')->where('id', $id)->update(['fecha_fin'=>$request->fecha_fin]);
                        DB::table('fases_galpon')->insert([
                                    'id_edad' => $request->id_edad,
                                    'id_fase' => $request->id_fase,        
                                    'cantidad_inicial' => $request->cantidad_inicial, 
                                    'cantidad_actual' => $request->cantidad_actual,
                                    'total_muerta' => $request->total_muerta,        
                                    'fecha_inicio' => $request->fecha_inicio]);
                    return response()->json($request->all());
                }
                else{
                    return response()->json(["mensaje"=>"EL GALPON ".$result[0]->numero." ESTA OCUPADO"]);
                }
            } else {
                 $fase = $result_2[0]->nombre;
                  return response()->json(["mensaje"=>"LA ".$fase." ESTA OCUPADO"]); 
            }
            




        }
    }

    public function dar_de_baja(Request $request, $id) {//este se encargar del traspaso 
        if ($request->ajax()) {
                 $actua = DB::table('fases_galpon')->where('id', $id)->update(['fecha_fin'=>$request->fecha_fin]);
                return response()->json($request->all());
        }
    }

    public function aumento_gallina(Request $request, $tipe) {
        if ($request->ajax()) {
            $actua = DB::table('fases_galpon')->where('id', $tipe)->update(['cantidad_actual'=>$request->cantidad_actual]);
            return response()->json($request->all());
        }
    }

    public function store_traspaso(FasesGalponCreateRequest $request) {
        $verificar = FasesGalpon::create([
                    'FasesGalpon' => $request->FasesGalpon,
                    'cantidad_inicial' => $request->cantidad_inicial,
                    'cantidad_actual' => $request->cantidad_actual,
                    'total_muerta' => $request->total_muerta,
                    'estado' => $request->estado,
                    'fecha_inicio' => $request->fecha_inicio,
                    'id_galpon' => $request->id_galpon]);
        if ($verificar !== null) {
            return redirect('/traspaso')->with('message', 'TRASPASO CORRECTAMENTE');
        }
    }

    public function edit($id) {
        $FasesGalpon = FasesGalpon::find($id);

        return response()->json($FasesGalpon);
    }

    public function obtener_fases(Request $request, $tipe) {
        $fases = DB::select("SELECT nombre,id from fases WHERE id=".$tipe. "
        UNION
        SELECT nombre,id FROM fases WHERE id!=".$tipe);
        return response()->json($fases);
    }

}
