<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ControlAlimento;
use App\Alimento;
use App\RangoEdad;
use App\Grupo_control_alimento;
use App\GrupoEdad;
use App\GrupoTemperatura;
use App\Galpon;
use App\Silos;
use App\Http\Requests;
use App\Http\Requests\ControlAlimentoRequest;
use Session;
use Redirect;
use DB;
use Hash;

class ControlAlimentoController extends Controller {
  public function __construct() {
     $this->middleware('auth');
     $this->middleware('admin');
      $this->middleware('auth',['only'=>'admin']);
  }

   public function index() {
    // $controlalimento = DB::select("SELECT control_alimento.id, rango_edad.id as id_edad, rango_temperatura.id as id_temperatura, alimento.id as id_alimento, alimento.tipo, control_alimento.cantidad,rango_edad.edad_min,rango_edad.edad_max,rango_temperatura.temp_min,rango_temperatura.temp_max FROM control_alimento,alimento,rango_edad,rango_temperatura WHERE control_alimento.id_temperatura=rango_temperatura.id and control_alimento.id_alimento=alimento.id AND control_alimento.id_edad=rango_edad.id and control_alimento.deleted_at IS NULL order by rango_edad.edad_min,rango_temperatura.temp_min");
    // $alimento =Alimento::where('estado',1 and 'deleted_at',null)->lists('tipo','id');
    // $edad = DB::select("select *from rango_edad where deleted_at IS NULL ORDER BY rango_edad.edad_min");
    // $temperatura = DB::select("select *from rango_temperatura where deleted_at IS NULL ORDER BY rango_temperatura.temp_min"); esto era el anterior control de alimento general 
$grupo=DB::select('select *from grupo_control_alimento');
// $alimento =Alimento::where('estado',1 and 'deleted_at',null)->lists('tipo','id');
$alimento=DB::select('select tipo , id from alimento where deleted_at IS NULL and estado=1 ');

    return view('controlalimento.index', compact('grupo','alimento',$alimento));
    }

    public function create() {
        return view('controlalimento.create');
    }

    public function store(Request $request) {       
        
      $recorrer_cantidad=0;//este se encarga de ir recorriendo todas las cantidades
        $total_temperatura=$request['total_temperatura'];

        // $id_grupo=DB::table('grupo_control_alimento')->insert(['nro_grupo'=>$cantidad_grupo]);
      

        $edad_min=$request->get('edad_min');
        $edad_max=$request->get('edad_max');
        $temp_min=$request->get('temp_min');        
        $temp_max=$request->get('temp_max');
        $id_alimento=$request->get('id_alimento');
        
        $cantidad=$request->get('cantidad');
        for ($i=0; $i < count($cantidad); $i++) { 
          if ($cantidad[$i]=="") {
            return redirect('/crear_control')->with('message-error','Por favor llene todos los datos correspondientes'); 
            
          }
        }
try {
    DB::beginTransaction();
$contar_grupo=DB::select('SELECT max(nro_grupo) as maximo FROM `grupo_control_alimento` where deleted_at IS NULL');
        $cantidad_grupo=$contar_grupo[0]->maximo+1;
        $id_grupo=Grupo_Control_Alimento::create(['nro_grupo'=>  $cantidad_grupo]);

        for ($i=0; $i <count($edad_min) ; $i++) { 
          // $edad=DB::table('grupo_edad')->insert(['edad_min'=>$edad_min[$i],'edad_max'=>$edad_min[$i],'id_alimento'=>$id_alimento[$i],'id_grupo_control'=>$id_grupo['id']]);
          $edad[$i]=GrupoEdad::create([
            'edad_min'=>$edad_min[$i],
            'edad_max'=>$edad_max[$i],
            'estado'=>1,
            'id_alimento'=>$id_alimento[$i], ]);
            
  

           }
         
      for ($j=0; $j <  $total_temperatura; $j++) { 
          $temperatura[$j]=GrupoTemperatura::create([
            'temp_min'=> $temp_min[$j],
            'temp_max'=> $temp_max[$j],
            'estado'=> 1,
            ]);

        }
         for ($i=0; $i <count($edad) ; $i++) { 
          for ($j=0; $j <$total_temperatura ; $j++) { 
              DB::table('grupo_edad_temp')->insert(['id_edad' => $edad[$i]->id, 'id_temp' => $temperatura[$j]->id,'cantidad' => $cantidad[$recorrer_cantidad],'id_control'=>$id_grupo['id'],'estado'=>1]);

$recorrer_cantidad++;
          }
        }
            DB::commit();
               Session::flash('message', 'Control de Alimento Agregado con Éxito');
                  return Redirect::to('/controlalimento');
  
  } catch (Exception $e) {
    DB::rollback();
  }  
        
        
          
   

    }

    public function edit($id) {
        $ControlAlimento = ControlAlimento::find($id);
        $galpon = Galpon::lists('numero', 'id');
        $silos = Silos::lists('nombre', 'id');
        return view('ControlAlimento.edit', compact('galpon', $galpon, 'silos', $silos), ['ControlAlimento' => $ControlAlimento]);
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
  public function update(Request $request){
    $id_edad_temp=$request->get("id_edad_temp");

    $id_edad=$request->get("id_edad");
    $id_grupo_control=$request->get("id_grupo_control");

    $id_temp=$request->get("id_temperatura");

    $cantidad = $request->get("cantidad");
    $edad_min = $request->get("edad_min");
    $edad_max = $request->get("edad_max");
    $temp_min = $request->get("temp_min");
    $temp_max = $request->get("temp_max");
    $id_alimento = $request->get("id_alimento");

if ($this->verificar_edad($edad_min, $id_edad,$id_grupo_control)==1  && $this->verificar_edad($edad_max, $id_edad,$id_grupo_control)==1) {
if (  $this->verificar_temperatura($temp_min,$id_temp,$id_grupo_control)==1 && $this->verificar_temperatura($temp_max,$id_temp,$id_grupo_control)==1) {
  DB::table('grupo_edad_temp')->where('id', $id_edad_temp)->update(['cantidad' => $cantidad]);

if ($id_alimento==0) {
    DB::table('grupo_edad')->where('id', $id_edad)->update(['edad_min' => $edad_min,'edad_max' => $edad_max]);
}else
  DB::table('grupo_edad')->where('id', $id_edad)->update(['edad_min' => $edad_min,'edad_max' => $edad_max,'id_alimento'=>$id_alimento]);


    DB::table('grupo_temperatura')->where('id', $id_temp)->update(['temp_min' => $temp_min,'temp_max' => $temp_max,]);
   

    return redirect('/controlalimento')->with('message','MODIFICADO CORRECTAMENTE');  
}
 else{
   return redirect('/controlalimento')->with('message-error','Ya existe ese rango de temperatura');  
}


}
else{
   return redirect('/controlalimento')->with('message-error','Ya existe ese rango de edad'); 
  
  } 
}

  public function verificar_temperatura($valor,$id,$id_control) {
                        $resultado = DB::select('sELECT grupo_temperatura.id, grupo_temperatura.temp_min,grupo_temperatura.temp_max from grupo_temperatura,grupo_edad_temp,grupo_control_alimento where grupo_edad_temp.id_control=grupo_control_alimento.id AND grupo_temperatura.id=grupo_edad_temp.id_temp and grupo_control_alimento.id='.$id_control.' and grupo_temperatura.id<>'.$id.' and grupo_control_alimento.deleted_at IS NULL GROUP by temp_min,temp_max');


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
public function verificar_edad($valor,$id,$id_control) {
        $resultado = DB::select('SELECT grupo_edad.edad_min,grupo_edad.edad_max from grupo_edad,grupo_edad_temp,grupo_control_alimento where grupo_edad_temp.id_control=grupo_control_alimento.id AND  grupo_edad.id=grupo_edad_temp.id_edad and grupo_control_alimento.id='.$id_control.' and  grupo_edad.id<>'.$id.' and grupo_control_alimento.deleted_at IS NULL GROUP by edad_min,edad_max');
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
    public function destroy($id) {
        $ControlAlimento = ControlAlimento::find($id);
        $ControlAlimento->delete();
        ControlAlimento::destroy($id);
        return response()->json($id);     
    }  
public function crear_control(){
$edad=DB::select('SELECT edad_min,edad_max,tipo,alimento.id as id_alimento from rango_edad,alimento where rango_edad.id_alimento=alimento.id and rango_edad.deleted_at IS NULL order by edad_min');
    $temperatura=DB::select('select*from rango_temperatura where deleted_at IS NULL order by temp_min');
    $ponedora=DB::select("SELECT galpon.id as id_galpon,edad.id as id_edad,fases.nombre,galpon.numero FROM edad,galpon,fases_galpon,fases WHERE edad.id_galpon=galpon.id AND edad.estado=1 AND fases.id=fases_galpon.id_fase AND fases_galpon.id_edad=edad.id AND fases.nombre='PONEDORA' GROUP BY edad.id ORDER by galpon.numero");
    $fase=DB::select("SELECT galpon.id as id_galpon,edad.id as id_edad,fases.nombre,fases.numero FROM edad,galpon,fases_galpon,fases WHERE edad.id_galpon=galpon.id AND edad.estado=1 AND fases.id=fases_galpon.id_fase AND fases_galpon.id_edad=edad.id AND fases.nombre!='PONEDORA' and fases_galpon.fecha_fin IS NULL GROUP BY edad.id ORDER by fases.numero");
    return view('controlalimento.crear_control',compact('edad','temperatura','fase','ponedora'));
}
public function mostrar_control($id){//este se encarga de mostrar todo el control de alimento con sus respectivos grupos y se carga en el modal
  $control=DB::select('select grupo_control_alimento.id as id_grupo_control,grupo_edad_temp.id as id_tem_edad, grupo_edad.id as id_edad,grupo_temperatura.id as id_temp,edad_min,edad_max,tipo,temp_min,temp_max,cantidad from grupo_control_alimento,alimento,grupo_edad,grupo_temperatura,grupo_edad_temp where grupo_control_alimento.id= grupo_edad_temp.id_control and grupo_edad_temp.id_edad=grupo_edad.id and grupo_edad_temp.id_temp= grupo_temperatura.id and grupo_edad.id_alimento=alimento.id  and grupo_control_alimento.id='.$id.' ORDER by edad_min, temp_min ');
  return response()->json($control);

}
public function cargar_edad_temp($id_edad_temp){
   $control=DB::select('select *from grupo_edad_temp,grupo_edad,grupo_temperatura,alimento where grupo_edad.id_alimento=alimento.id and grupo_edad_temp.id_edad=grupo_edad.id and grupo_edad_temp.id_temp=grupo_temperatura.id and grupo_edad_temp.id='.$id_edad_temp);
   return response()->json($control);
}
public function actualizar_edad_temp($id_edad_tem){//este se encarga de actualizar los rangos de edades y temperatura minimas y maxima tambien el tipo de alimento
   $control=DB::select('select *from grupo_edad_temp,grupo_edad,grupo_temperatura,alimento where grupo_edad.id_alimento=alimento.id and grupo_edad_temp.id_edad=grupo_edad.id and grupo_edad_temp.id_temp=grupo_temperatura.id and grupo_edad_temp.id='.$id_edad_tem);
   return response()->json($control);
}
public function CargarModalAgregaredad($id){//este carga el modal para introducir la edad minima y maxima y la vez se carga la tabla de temperatura
          $resultado = DB::select('sELECT grupo_temperatura.id, grupo_temperatura.temp_min,grupo_temperatura.temp_max from grupo_temperatura,grupo_edad_temp,grupo_control_alimento where grupo_edad_temp.id_control=grupo_control_alimento.id AND grupo_temperatura.id=grupo_edad_temp.id_temp and grupo_control_alimento.id='.$id.'  and grupo_control_alimento.deleted_at IS NULL GROUP by temp_min,temp_max');
          return response()->json($resultado);
}
public function CargarModalAgregartemp($id){//este carga el modal para introducir la temperatura minima y maxima y la vez se carga la tabla de edad
  $resultado = DB::select('sELECT tipo, grupo_edad.id, grupo_edad.edad_min,grupo_edad.edad_max from alimento,grupo_edad,grupo_edad_temp,grupo_control_alimento where alimento.id=grupo_edad.id_alimento and grupo_edad_temp.id_control=grupo_control_alimento.id AND grupo_edad.id=grupo_edad_temp.id_edad and grupo_control_alimento.id='.$id.'  and grupo_control_alimento.deleted_at IS NULL GROUP by edad_min,edad_max');
          return response()->json($resultado);
}
public function AgregarGrupoEdad(Request $request){
$edad_min=$request->get('edad_min');
$edad_max=$request->get('edad_max');
$id_alimento=$request->get('id_alimento');

$id_temp=$request->get('id_temp');
$cantidad=$request->get('cantidad');

$id_grupo_control=$request->get('id_grupo_control');

   if ($this->verificar_edad($edad_min, 0,$id_grupo_control)==1  && $this->verificar_edad($edad_max,0,$id_grupo_control)==1) {
 try {
    DB::beginTransaction();  
 $edad=GrupoEdad::create([
            'edad_min'=>$edad_min,
            'edad_max'=>$edad_max,
            'estado'=>1,
            'id_alimento'=>$id_alimento, ]);
 $id_edad=$edad['id'];
            
  for ($j=0; $j <count($id_temp) ; $j++) { 
              DB::table('grupo_edad_temp')->insert(['id_edad' => $id_edad, 'id_temp' => $id_temp[$j],'cantidad' => $cantidad[$j],'id_control'=>$id_grupo_control,'estado'=>1]);


          }
           DB::commit();
 return redirect('/controlalimento')->with('message','Edad Agregada con Éxito');  
  } catch (Exception $e) {
    DB::rollback();
  }
  
           }    
     else{
       return redirect('/controlalimento')->with('message-error','Ya existe ese rango de edad'); 
     }
}


public function AgregarGrupoTemp(Request $request){
$temp_min=$request->get('temp_min');
$temp_max=$request->get('temp_max');


$id_edad=$request->get('id_edad');
$cantidad=$request->get('cantidad');

$id_grupo_control=$request->get('id_grupo_control');

   if ($this->verificar_temperatura($temp_min, 0,$id_grupo_control)==1  && $this->verificar_temperatura($temp_max,0,$id_grupo_control)==1) {
 try {
    DB::beginTransaction();  
 $temp=GrupoTemperatura::create([
            'temp_min'=>$temp_min,
            'temp_max'=>$temp_max,
            'estado'=>1,
            ]);
 $id_temp=$temp['id'];
            
  for ($j=0; $j <count($id_edad) ; $j++) { 
              DB::table('grupo_edad_temp')->insert(['id_temp' => $id_temp, 'id_edad' => $id_edad[$j],'cantidad' => $cantidad[$j],'id_control'=>$id_grupo_control,'estado'=>1]);


          }
           DB::commit();
 return redirect('/controlalimento')->with('message','Rango de Temperatura Agregada con Éxito');  
  } catch (Exception $e) {
    DB::rollback();
  }
  
           }    
     else{
       return redirect('/controlalimento')->with('message-error','Ya existe ese rango de Temperatura'); 
     }
}

public function ReplicarControl($id){
  try {
    DB::beginTransaction();
$contar_grupo=DB::select('SELECT max(nro_grupo) as maximo FROM `grupo_control_alimento` where deleted_at IS NULL');
        $cantidad_grupo=$contar_grupo[0]->maximo+1;
        $id_grupo=Grupo_Control_Alimento::create(['nro_grupo'=>  $cantidad_grupo]);

        for ($i=0; $i <count($edad_min) ; $i++) { 
          // $edad=DB::table('grupo_edad')->insert(['edad_min'=>$edad_min[$i],'edad_max'=>$edad_min[$i],'id_alimento'=>$id_alimento[$i],'id_grupo_control'=>$id_grupo['id']]);
          $edad[$i]=GrupoEdad::create([
            'edad_min'=>$edad_min[$i],
            'edad_max'=>$edad_max[$i],
            'estado'=>1,
            'id_alimento'=>$id_alimento[$i], ]);
           }
         
      for ($j=0; $j <  $total_temperatura; $j++) { 
          $temperatura[$j]=GrupoTemperatura::create([
            'temp_min'=> $temp_min[$j],
            'temp_max'=> $temp_max[$j],
            'estado'=> 1,
            ]);

        }
         for ($i=0; $i <count($edad) ; $i++) { 
          for ($j=0; $j <$total_temperatura ; $j++) { 
              DB::table('grupo_edad_temp')->insert(['id_edad' => $edad[$i]->id, 'id_temp' => $temperatura[$j]->id,'cantidad' => $cantidad[$recorrer_cantidad],'id_control'=>$id_grupo['id'],'estado'=>1]);

$recorrer_cantidad++;
          }
        }
            DB::commit();
               Session::flash('message', 'Control de Alimento Agregado con Éxito');
                  return Redirect::to('/controlalimento');
  
  } catch (Exception $e) {
    DB::rollback();
  }  
}
}
