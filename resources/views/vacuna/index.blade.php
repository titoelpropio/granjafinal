@extends('layouts.admin')
@section('content')
@include('alerts.cargando')
@include('alerts.success')
@include('alerts.request')
@include('vacuna.modalagregar')

<style type="text/css">
    table{
        border-spacing: 0px;
        border-collapse: separate;
    }
    td{
        padding: 5px;
    }
</style>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="panel panel-green">
        <div class="panel-heading">
              <ul class="nav nav-pills">
                <li class="active"><a href="{!!URL::to('vacuna')!!}">REGISTRAR VACUNAS</a></li>
                <li class="active"><a href="{!!URL::to('lista_control_vacuna')!!}">LISTA DE CONTROL DE VACUNAS</a></li>                      
                <li class="active"><a href="{!!URL::to('vacuna_emergente')!!}">LISTA DE VACUNAS EMERGENTES</a></li>    
                <li class="active"><a href="{!!URL::to('consumo_vacuna_emergente')!!}">LISTA CONSUMO VACUNAS</a></li>                 
            </ul>
        </div> 
    </div>
</div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
 <div class="pull-left"> <h2>VACUNAS</h2> </div>
  <div class="pull-right"> <button class="btn btn-success"  data-toggle='modal' data-target='#ModalCreate'>AGREGAR</button> </div> <br><br>

    <input type="hidden" name="_token" value="{{ csrf_token()}}" id="token">
        <div class="table-responsive">           
            <!--table class="table table-striped table-bordered table-condensed table-hover"-->
            <table width="1445">
                <thead bgcolor=black style="color: white; font-size: 16px">
                    <th width="170"><center>VACUNA</center></th>
                    <th width="100"><center>EDAD</center></th>
                    <th width="670"><center>METODO DE APLICACION</center></th>
                    <!--th><center>PRECIO</center></th-->                    
                    <th width="100"><center>ESTADO</center></th>
                    <th width="445"><center>OPCION</center></th>
                </thead>                   
            </table>
        <div style="overflow-x:auto; height: 500px">
        <!--table id="tableData" class="table table-condensed" style="table-layout:fixed"-->
        <table style="table-layout:fixed">
            <tbody>
                @foreach ($vacuna as $vac)
                        <TR style="background-color:white" onmouseover="this.style.backgroundColor='#F6CED8'" onmouseout="this.style.backgroundColor='white'">    
                        <td align="center" width="170">{{$vac->nombre}}</td>
                        <td align="center" width="100">{{$vac->edad}}</td>
                        <td align="left" width="700">{{$vac->detalle}}</td>
                        <!--td align="center">{{$vac->precio}} Bs.</td-->
                        <td align="center" width="100">  <?php
                            if ($vac->estado == 1) {
                                echo '<button value="' . $vac->id . '" id="idbotonnestado" onclick="cambiarestado(0,this)" class="btn btn-success">ACTIVO</button>';
                            } else
                                echo '<button value="' . $vac->id . '" id="idbotonnestado"  onclick="cambiarestado(1,this)" class="btn btn-warning">INACTIVO</button>';
                            ?></center></td>
                        <td align="center" width="445">
                            {!!link_to_route('vacuna.edit', $title = 'ACTUALIZAR', $parameters = $vac->id, $attributes = ['class'=>'btn btn-primary','style'=>'color: white'])!!}
                            <button class="btn btn-danger" data-toggle="modal" data-target="#MyModalEliminar" onclick="cargar_modal({{$vac->id}},'{{$vac->nombre}}')">ELIMINAR</button></td>
                        </TR>
                        @endforeach 
            </tbody>
        </table>
        </div>

        </div>

    {!!$vacuna->render()!!}
</div> <?php //COL LG 12 ?>

<script src="{{asset('js/addvacuna.js')}}"></script> 
@endsection




