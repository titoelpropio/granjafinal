<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\VentaHuevo;
use App\DetalleVentaHuevo;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
use App\Http\Requests\DetalleVentaHuevoRequest;
use DB;
use Hash;
class DetalleVentaHuevoController extends Controller
{
  /*public function __construct() {
     $this->middleware('auth');
     $this->middleware('admin');
      $this->middleware('auth',['only'=>'admin']);
  }*/
  
  function index(){
    $huevo_deposito=DB::select("SELECT huevo_deposito.id_tipo_huevo,tipo_huevo.tipo,huevo_deposito.cantidad_maple,huevo_deposito.cantidad_huevo from huevo_deposito,tipo_huevo WHERE huevo_deposito.id_tipo_huevo=tipo_huevo.id");
     $tipo_huevo=DB::select("SELECT tipo_huevo.id,tipo_huevo.tipo,tipo_huevo.precio,maple.cantidad from tipo_huevo,maple WHERE tipo_huevo.id_maple=maple.id and estado=1");

     return view('detalleventahuevo.index',compact('tipo_huevo','huevo_deposito'));
  }

	public function create(){
    return view('detalleventahuevo.create');		
  }

  public function store(Request $request){
      DetalleVentaHuevo::create($request->all());
  }

public function update(Request $request){
    try {
      DB::beginTransaction(); 

        $id_venta_huevo=$request->get('id_venta_a');
        $id_det_venta_huevo=$request->get('id');
        $id_tipo_huevo=$request->get('idtipohuevo');        
        $cantidad_maple=$request->get('cantidadmaple');
        $cantidad_huevo=$request->get('cantidadhuevo');        
        $subtotal_precio=$request->get('subtotalprecio');
        $cont=0;

        $venta_huevo = DB::table('venta_huevo')->where('id',$id_venta_huevo)->update(['estado'=>0]);

          while ( $cont < count($id_tipo_huevo)) {
              $huevo = DB::table('detalle_venta_huevo')->where('id',$id_det_venta_huevo[$cont])->update(['id_tipo_huevo'=>$id_tipo_huevo[$cont], 'id_venta_huevo'=>$id_venta_huevo, 'cantidad_maple'=>$cantidad_maple[$cont], 'cantidad_huevo'=>$cantidad_huevo[$cont], 'subtotal_precio'=>$subtotal_precio[$cont]]);
              $cont=$cont+1;
          }
          DB::commit();
          return redirect('/ventahuevo')->with("message","ELIMINADO CORRECTAMENTE");
        }catch (Exception $e) {
      DB::rollback();
      return redirect('/ventahuevo')->with("message-error","ERROR INTENTE NUEVAMENTE");      
    }
}


  /*public function update(Request $request, $id) {
    if ($request->ajax()) {
      $actua = DB::table('detalle_venta_huevo')->where('id',$id)->update(['id_venta_huevo'=>$request->id_venta_huevo,'id_tipo_huevo'=>$request->id_tipo_huevo,'cantidad_maple'=>$request->cantidad_maple,'cantidad_huevo'=>$request->cantidad_huevo,'subtotal_precio'=>$request->subtotal_precio]);
        return response()->json($request->all());
    }
  }*/

  public function edit($id){
      $DetalleVentaHuevo=DetalleVentaHuevo::find($id);
      return view('DetalleVentaHuevo.edit',['DetalleVentaHuevo'=>$DetalleVentaHuevo]);
  }

    public function lista_detalle_venta_huevo($tipe){
        $datos=DB::select("SELECT dv.id,dv.id_tipo_huevo,dv.id_venta_huevo,dv.cantidad_maple,dv.cantidad_huevo,dv.subtotal_precio,tc.tipo from detalle_venta_huevo dv,tipo_huevo tc WHERE dv.id_tipo_huevo=tc.id  AND dv.id_venta_huevo=".$tipe);
        return response()->json($datos);
    }

    public function lista_venta_huevos($tipe){
        $datos=DB::select("SELECT vc.id,vc.fecha,vc.precio from venta_huevo vc WHERE vc.id=".$tipe);
        return response()->json($datos);
    }

    public function cantidad_caja_deposito($tipe){
        $datos=DB::select("SELECT caja_deposito.cantidad_caja,caja_deposito.cantidad_maple FROM caja_deposito WHERE caja_deposito.id_tipo_caja=".$tipe);
        return response()->json($datos);
    }    
}
