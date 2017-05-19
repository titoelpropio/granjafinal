@extends('layouts.admin')
@section('content')
@include('alerts.cargando')
@include('alerts.success')
@include('alerts.request')


  <div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<h1>CREAR CONTROL DE ALIMENTO</h1>

 <div class="table-responsive">
 {!!Form::open(array('url'=>'controlalimento','method'=>'POST','autocomplete'=>'off'))!!}
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 pull-right">
</div>
                    <table id="detalles" class="table table-striped table-bordered table-condensed table-hover">
                        <thead style="background-color: #A9D0F5">
                            <th><center>Edad Minima</center></th>
                            <th><center>Edad Maxima</center></th>
                            <th><center>Alimento</center></th>

                            <th><center>Temperatura Minima</center></th>
                            <th><center>Temperatura Maxima</center></th> 
                            <th><center>Cantidad por Gallina</center></th>                       

                        </thead>

                        <tbody id="detalles">
                            <?php for ($i=0; $i < count($edad); $i++) { 
                                echo("<tr  style='text-align:center; '>
                                    <th class='danger' valign='middle' align='left|right|center|justify|char' style='text-align:center;' rowspan='".count($temperatura)."'>".$edad[$i]->edad_min."<input type='hidden' style='align:center' name='edad_min[]' value='".$edad[$i]->edad_min."' /></th>
                                    <th class='danger' style='text-align:center;' rowspan='".count($temperatura)."'><input type='hidden'  style='text-align:center' name='edad_max[]' value='".$edad[$i]->edad_max."' />".$edad[$i]->edad_max."</th>
                                    <th class='danger' style='text-align:center;' rowspan='".count($temperatura)."'><input name='id_alimento[]' value='".$edad[$i]->id_alimento."' type='hidden' />".$edad[$i]->tipo."</th><td >
                                    <input type='hidden' style='text-align:center' name='temp_min[]' value='".$temperatura[0]->temp_min."'  />".$temperatura[0]->temp_min."</td><td  style='text-align:center'><input  style='text-align:center' name='temp_max[]' value='".$temperatura[0]->temp_max."' type='hidden' />".$temperatura[0]->temp_max."</td><td>
                                    <input class='' min = '0' step = 'any' type='number' style='text-align:center' name='cantidad[]' /></td></tr>");
                                    for ($j=1; $j < count($temperatura); $j++) { 
                                    echo("<tr  style='text-align:center'><td>
                                    <input type='hidden' style='text-align:center' name='temp_min[]' value='".$temperatura[$j]->temp_min."'  />".$temperatura[$j]->temp_min."</td><td><input  style='text-align:center' name='temp_max[]' value='".$temperatura[$j]->temp_max."' type='hidden' />".$temperatura[$j]->temp_max."</td><td>
                                    <input class='' min = '0' step = 'any' type='number' style='text-align:center' name='cantidad[]' /></td></tr>");
                                        if ($j+1<count($temperatura)) {
                                        }
                                        else{
                                             echo("<tr  style='background-color: #f1948a; text-align:center'><td>Edad Minima</td><td>Edad Maxima</td><td>Alimento</td><td>Temperatura Minima</td><td>Temperatura Maxima</td><td>Cantidad por gallina</td></tr>");
                                        }
                                      
                                    }
                            } ?>
                        </tbody>
                        <tfoot style="background-color: #f1948a">

                          <input type="hidden" name="total_temperatura" value=<?php echo count($temperatura); ?> >
                        </tfoot>
                    </table>
                    <a id="guardar" class="btn btn-danger pull-right" onclick="">
                        <i class="fa fa-check-square" aria-hidden="true"></i> Cancelar</a>
                      <button id="guardar" type="submit" class="btn btn-info pull-right" onclick="">
                        <i class="fa fa-check-square" aria-hidden="true"></i> Guardar</button>

                         
                            {!!Form::close()!!}
                </div>
                <br><br>




</div>
</div>
<script src="{{asset('js/consumo_vacuna.js')}}"></script> 
@endsection

