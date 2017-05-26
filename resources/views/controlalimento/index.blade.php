@extends('layouts.admin')
@section('content')
@include('alerts.cargando')
@include('alerts.errors')
@include('alerts.request')
@include('alerts.success')

@include('controlalimento.modal')
<?php 
$estado=1;
 ?>
<input type="hidden" name="_token" value="{{csrf_token()}}" id="token">

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="panel panel-green">
        <div class="panel-heading">
            <ul class="nav nav-pills">
                <li class="active"><a href="{!!URL::to('controlalimento')!!}">CONTROL ALIMENTO</a></li>   
                <li class=""><a href="{!!URL::to('rango')!!}">AGREGAR RANGOS</a></li>    	                             
            </ul>
        </div> 
    </div> 
</div> 

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">


    <div class="table-responsive">
        <h1>CONTROL DE ALIMENTO</h1> 
        <button class="btn btn-success" data-toggle='modal' data-target='#myModalReplicar'>Replicar</button>


  
    <table class="table table-striped table-bordered table-condensed table-hover">

            <thead bgcolor=black style="color: white; font-size: 16px">
            <th width="150"><CENTER>Grupo Numero</CENTER></th>
            <th width="180"><CENTER>Fecha de Creacion</CENTER></th>
            <th width="180"><CENTER>Galpon</CENTER></th>

            <th width="445"><CENTER>OPCION</CENTER></th>	
            </thead>
            <tbody>
                @foreach ($grupo as $cons)
                <tr style="text-align: center" onmouseover="this.style.backgroundColor = '#F6CED8'" onmouseout="this.style.backgroundColor = 'white'">
                    <td width="150"><CENTER>{{$cons->nro_grupo}} </CENTER></td>
            <td width="150"><CENTER>{{$cons->fecha}}</CENTER></td>	
             <td width="150"><CENTER>  <?php 
                       $galpon= DB::select('select galpon.numero,fases.nombre from galpon,edad,fases,fases_galpon,grupo_control_alimento,control_alimento_galpon where galpon.id=edad.id_galpon and edad.id=fases_galpon.id_edad and fases_galpon.id_fase=fases.id and edad.id=control_alimento_galpon.id_edad and control_alimento_galpon.id_control_alimento=grupo_control_alimento.id and grupo_control_alimento.id='.$cons->id.' and edad.estado=1 and grupo_control_alimento.deleted_at IS NULL and fases_galpon.fecha_fin IS NULL ');
                      
                       if (count($galpon)>0) {
                         if ( $galpon[0]->nombre=="PONEDORA") {
                          echo "GALPON ". $galpon[0]->numero;
                       }ELSE{
                          echo $galpon[0]->nombre;
                       }
                            $estado=1;    
                       }
                       else{
                        $estado=0;
                        echo "sin galpon";
                       }
                     
                 ?></CENTER></td> 	

            <td>
                <button onclick="actualizar_control({{$cons->id}},{{$cons->nro_grupo}})" data-toggle='modal' data-target='#myModal' class="btn btn-primary">ACTUALIZAR</button>	
                <?php if ($estado==0) {
                   
                ?>			
                <button onclick="eliminar_control({{$cons->id}})" class="btn btn-danger">ELIMINAR</button>
                <?php }
                    else{
                 ?>
             <button disabled="" onclick="eliminar_control({{$cons->id}})" class="btn btn-danger">ELIMINAR</button>
             <?php } ?>
                </CENTER></td>
            </tr>
            @endforeach 

            </tbody>
        </table>


    </div>
    {!!Html::script('js/control_alimento.js')!!} 
    <script src="{{asset('js/bootstrap-select.min.js')}}"></script> 
    @endsection

