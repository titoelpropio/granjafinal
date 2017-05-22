@extends ('layouts.admin')
@section ('content')
<style type="text/css">
    table{
        border-spacing: 0px;
        border-collapse: separate;
    }
    td{
        padding: 5px;
    }
</style>
<input type="hidden" name="_token" value="{{ csrf_token()}}" id="token">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <!--div class="table-responsive"--> 
    <div class="panel panel-green" >
        <div class="panel-heading">
              <ul class="nav nav-pills">
                <li class="active"><a href="{!!URL::to('lista_caja')!!}">LISTA DE CAJAS</a></li>
                <li class="active"><a href="{!!URL::to('comparar_cajas')!!}">COMPARAR CAJAS</a></li>                      
            </ul>
        </div> 
    </div>
</div>


 <div class="pull-left">    <font size="6">LISTA DE CAJAS </font> <font size="6" id="fecha"> </font></div>

<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 pull-right">
 
    <div class="col-sm-1 col-md-1  col-sm-1  col-xs-12 pull-right" style="width: 13%; margin: 0px; padding: 0px">
      <div class="form-group"> <button class="btn btn-danger" onclick=" cargar_lista_caja()">MOSTRAR</button> </div>
    </div>

    <div class="col-sm-3  col-md-3  col-sm-3  col-xs-12 pull-right" style=" margin: 0px; padding: 0px">
      <div class="form-group">
        <div class='input-group date' id='datetimepicker1'>
          <input type='text' class="form-control" id="fecha_fin" style="font-size:20px;text-align:center" />
          <span class="input-group-addon ">
             <span class="fa fa-calendar" aria-hidden="true"></span> 
          </span>
        </div>
      </div>
    </div>


    <div class="col-sm-1 col-md-1  col-sm-1  col-xs-12 pull-right" style="margin: 0px; padding: 0px">
      <div class="form-group"> <B>HASTA: </B> </div>
    </div>

    <div class="col-sm-3  col-md-3  col-sm-3  col-xs-12 pull-right" style=" margin: 0px; padding: 0px">
      <div class="form-group">
        <div class='input-group date' id='datetimepicker2'>
          <input type='text' class="form-control" id="fecha_inicio" style="font-size:20px;text-align:center" />
          <span class="input-group-addon ">
             <span class="fa fa-calendar" aria-hidden="true"></span> 
          </span>
        </div>
      </div>
    </div>

    <div class="col-sm-1 col-md-1  col-sm-1  col-xs-12 pull-right" style="margin: 0px; padding: 0px">
      <div class="form-group">  <B>DESDE: </B> </div>
    </div>
 </div>

    <!--table class="table-striped table-bordered table-condensed table-hover" style="width: 100%"*-->
    <table width="1460">
        <thead bgcolor=black style="color: white">
            <th width="500"><center>TIPO DE CAJA</center></th>
            <th width="500"><center>CANTIDAD DE CAJAS</center></th>
            <th width="500"><center>FECHA</center></th>
        </thead>
    </table>
    <div style="overflow-x:auto; height: 500px">
  <table style="table-layout:fixed">
        <tbody id="datos_c1">
        </tbody>
    </table>
</div>

    <!--/table-->

{!!Html::script('js/caja.js')!!} 
@endsection

