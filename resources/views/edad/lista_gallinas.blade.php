@extends ('layouts.admin')
@section ('content')
@include('alerts.success')
@include('alerts.request')
@include('alerts.cargando')
@include('edad.modal_lista_gallinas')
<style type="text/css">
    table{
        border-spacing: 0px;
        border-collapse: separate;
    }
    td{
        padding: 5px;
    }
</style>
        <div class="row">   
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="table-responsive">  
                <H1>LISTA DE LAS GALLINAS</H1>
                <!--table class="table table-striped table-bordered table-condensed table-hover"-->
                <table width="1445">    
                    <thead bgcolor=black style="color: white">
                        <th width="180"><center>FECHA INGRESO</center></th>
                        <th width="180"><center>FECHA DESCARTE</center></th>
                        <th width="180"><center>GALPON</center></th>
                        <th width="180"><center>FASE</center></th>
                        <th width="180"><center>CANTIDAD INICIAL</center></th>
                        <th width="180"><center>CANTIDAD ACTUAL</center></th>
                        <th width="180"><center>MUERTAS</center></th>
                        <th width="180"><center>POSTURA HUEVO</center></th>
                    </thead>
                </table>

                <div style="overflow-x:auto; height: 500px">    
                <table style="table-layout:fixed">
                    @foreach($gallinas_fases as $gall)
                    <tr style="background:#F5F6CE" onmouseover="this.style.background='#F6CED8'" onmouseout="this.style.background='#F5F6CE'">
                        <td width="180"><center>{{ $gall->fecha_inicio}}</center></td>
                        <td width="180"><center> --- </center></td>
                        <td width="180"><center>GALPON {{ $gall->numero}}</center></td>
                        <td width="180"><center> {{ $gall->nombre}}</center></td>
                        <td width="180"><center> {{ $gall->cantidad_inicial}}</center></td>
                        <td width="180"><center> {{ $gall->cantidad_actual}}</center></td>
                        <td width="180"><center> {{ $gall->total_muerta}}</center></td>
                        <td width="180"><center> --- </center></td>
                    </tr>
                    @endforeach

                    @foreach($gallinas_ponedoras as $gall)
                    <tr style="background:#CEF6D8"  onmouseover="this.style.background='#F6CED8'" onmouseout="this.style.background='#CEF6D8'">
                        <td width="180"><center>{{ $gall->fecha_inicio}}</center></td>
                        <td width="180"><center> --- </center></td>
                        <td width="180"><center>GALPON {{ $gall->numero}}</center></td>
                        <td width="180"><center> {{ $gall->nombre}}</center></td>
                        <td width="180"><center> {{ $gall->cantidad_inicial}}</center></td>
                        <td width="180"><center> {{ $gall->cantidad_actual}}</center></td>
                        <td width="180"><center> {{ $gall->total_muerta}}</center></td>
                        <td width="180"><center> {{ $gall->cantidad_total}}</center></td>
                    </tr>
                    @endforeach

                    @foreach($gallinas_fases_descartadas as $gall)
                    <tr style="background:white"  onmouseover="this.style.background='#F6CED8'" onmouseout="this.style.background='white'">
                        <td width="180"><center>{{ $gall->fecha_inicio}}</center></td>
                        <td width="180"><center> {{ $gall->fecha_descarte}} </center></td>
                        <td width="180"><center>GALPON {{ $gall->numero}}</center></td>
                        <td width="180"><center> {{ $gall->nombre}}</center></td>
                        <td width="180"><center> {{ $gall->cantidad_inicial}}</center></td>
                        <td width="180"><center> {{ $gall->cantidad_actual}}</center></td>
                        <td width="180"><center> {{ $gall->total_muerta}}</center></td>
                        <td width="180"><center> --- </center></td>
                    </tr>
                    @endforeach

                    @foreach($gallinas_descartadas as $gall)
                    <tr style="background:white"  onmouseover="this.style.background='#F6CED8'" onmouseout="this.style.background='white'">
                        <td width="180"><center>{{ $gall->fecha_inicio}}</center></td>
                        <td width="180"><center> {{ $gall->fecha_descarte}} </center></td>
                        <td width="180"><center>GALPON {{ $gall->numero}}</center></td>
                        <td width="180"><center> {{ $gall->nombre}}</center></td>
                        <td width="180"><center> {{ $gall->cantidad_inicial}}</center></td>
                        <td width="180"><center> {{ $gall->cantidad_actual}}</center></td>
                        <td width="180"><center> {{ $gall->total_muerta}}</center></td>
                        <td width="180"><center> {{ $gall->cantidad_total}}</center></td>
                    </tr>
                    @endforeach
                    
                </table>

            </div>

        </div>
    </div>
  {!!Html::script('js/edad.js')!!} 
@endsection
