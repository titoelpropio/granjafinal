@extends('layouts.admin')
@section('content')
@include('controlalimento.modal')
@include('alerts.cargando')

<style type="text/css">
    table{
        border-spacing: 0px;
        border-collapse: separate;
    }
    td{
        padding: 5px;
    }
</style>
<input type="hidden" name="_token" value="{{csrf_token()}}" id="token">

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	<div class="panel panel-green">
	    <div class="panel-heading">
	         <ul class="nav nav-pills">
	            <li class="active"><a href="{!!URL::to('controlalimento')!!}">CONTROL ALIMENTO</a></li>   
	            <li class="active"><a href="{!!URL::to('rango')!!}">AGREGAR RANGOS</a></li>    	                             
	        </ul>
	    </div> 
	</div> 
</div> 

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="pull-left"><h1>CONTROL DE ALIMENTO</h1></div>
<div class="pull-right"><button class="btn btn-success" data-toggle='modal' data-target='#myModal' onclick="limpiar_text()" >AGREGAR</button></div>

	<!--table class="table table-striped table-bordered table-condensed table-hover"-->
    <table width="1445">
	    <thead bgcolor=black style="color: white; font-size: 16px">
		<th width="150"><CENTER>EDAD MIN</CENTER></th>
			<th width="150"><CENTER>EDAD MAX</CENTER></th>
			<th width="180"><CENTER>TEMPERATURA MIN</CENTER></th>
			<th width="180"><CENTER>TEMPERATURA MAX</CENTER></th>
			
			<th width="166"><CENTER>CANTIDAD</CENTER></th>
			<th width="166"><CENTER>ALIMENTO</CENTER></th>	
			<th width="445"><CENTER>OPCION</CENTER></th>	
		</thead>
    </table>
    <div style="overflow-x:auto; height: 500px">
	<table style="table-layout:fixed">
	 @foreach ($controlalimento as $cons)
		<tr onmouseover="this.style.backgroundColor='#F6CED8'" onmouseout="this.style.backgroundColor='white'">
			<td width="150"><CENTER>{{$cons->edad_min}} </CENTER></td>
			<td width="150"><CENTER>{{$cons->edad_max}}</CENTER></td>		
			<td width="180"><CENTER>{{$cons->temp_min}} ºC</CENTER></td>
			<td width="180"><CENTER>{{$cons->temp_max}} ºC</CENTER></td>
		
			<td width="166"><CENTER>{{$cons->cantidad}} Kg.</CENTER></td>
			<td width="166"><CENTER>{{$cons->tipo}}</CENTER></td>
			<td width="445"><CENTER>
			<button onclick="actualizar_control({{$cons->id}},{{$cons->cantidad}})" data-toggle='modal' data-target='#modalActualizar' class="btn btn-primary">ACTUALIZAR</button>				
			<button onclick="eliminar_control({{$cons->id}})" class="btn btn-danger">ELIMINAR</button>
			</CENTER></td>
		</tr>
		@endforeach 
	</table>
</div>
  {!!Html::script('js/control_alimento.js')!!} 
  <script src="{{asset('js/bootstrap-select.min.js')}}"></script> 
@endsection

 