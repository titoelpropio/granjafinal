   
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title> SISTEMA GRANJA</title>
        <link rel="shortcut icon" href="{{asset('images/granja.png')}}">

        {!!Html::style('css/bootstrap.min.css')!!}

    {!!Html::style('css/plugins/light-bootstrap-dashboard.css')!!}
       {!!Html::style('css/demo/demo.css')!!}
       </head>
<body>

<div class="wrapper">

    <nav  class="navbar navbar-inverse">
          <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
              </button>
              <a class="navbar-brand" onclick="actualizar_pag()"><i class="fa fa-refresh" aria-hidden="true" title="ACTUALIZAR"></i> </a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
              <ul class="nav navbar-nav">
                <li   
                @if(Auth::user()!=null) style="width: 8%;"
                @endif  

                ><a href="{!!URL::to('galpon')!!}">Ponedora</a></li>
                <li  @if(Auth::user()!=null) style=" width: 4%;"     @endif ><a href="{!!URL::to('criarecria')!!}">Crias</a></li>

                 @if(Auth::user()==null) 
                  <li><a href="{!!URL::to('cajadeposito')!!}">Cajas</a></li>
                @endif  
                 @if(Auth::user()!=null) 
                  <li><a href="{!!URL::to('cajadeposito_admin')!!}">Cajas</a></li>
                @endif    

                <li class="dropdown" @if(Auth::user()!=null) style="width: 8%;"  @endif    style="width: 13%;" > 
                  <a class="dropdown-toggle" data-toggle="dropdown" href="">Ventas<span class="caret"></span></a>
                  <ul class="dropdown-menu">
                      <li><a href="{!!URL::to('ventacaja')!!}">Venta Caja</a></li>
                      <li><a href="{!!URL::to('ventahuevo')!!}">Venta Huevo Descarte</a></li>    
                  </ul>
                </li>

                <li><a href="{!!URL::to('compra')!!}">Compra Alimento</a></li>   
                                      


                @if(Auth::user()!=null) 
                                
               

                <li><a href="{!!URL::to('controlalimento')!!}">Control Alimento</a></li>                    
                <li class="dropdown"    style="width: 10%;"   >
                  <a class="dropdown-toggle" data-toggle="dropdown" href=""  >Galpones<span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="{!!URL::to('fases')!!}"> FASES</a></li>
                    <li><a href="{!!URL::to('vistagalpon')!!}"> GALPON</a></li>
                    <li><a href="{!!URL::to('edad')!!}"> EDAD</a></li>
               
                    <li><a href="{!!URL::to('vacuna')!!}"> VACUNA</a></li>     
                    <li><a href="{!!URL::to('consumo_alimento')!!}">CONSUMO ALIMENTO</a></li>    
                  </ul>
                </li>
      <li class="dropdown" @if(Auth::user()!=null) style="width: 6%;" @endif>
                  <a class="dropdown-toggle" data-toggle="dropdown" href="">Silo<span class="caret"></span></a>
                  <ul class="dropdown-menu">
                 <li><a href="{!!URL::to('silo')!!}"> Silo</a></li>
                   
                    <li><a href="{!!URL::to('alimento')!!}">Alimento</a></li>
                     
                       
                  </ul>
                </li>
                <li class="dropdown" style="width: 11%;">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="">Caja-Huevo<span class="caret"></span></a>
                  <ul class="dropdown-menu">
                      <li><a href="{!!URL::to('maple')!!}"> MAPLE</a></li>
                      <li><a href="{!!URL::to('tipocaja')!!}"> TIPO CAJAS</a></li>
                      <li><a href="{!!URL::to('tipohuevo')!!}"> TIPO HUEVOS DESCARTES</a></li> 
                      <li><a href="{!!URL::to('lista_caja')!!}">LISTA DE CAJAS</a></li>     
                      <li><a href="{!!URL::to('lista_maple')!!}">LISTA DE HUEVOS DESCARTES</a></li>  
                  </ul>
                </li>

              

                <li class="dropdown" style="width: 9%;">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="">Reporte<span class="caret"></span></a>
                  <ul class="dropdown-menu">
                      <li><a href="{!!URL::to('reporteponedoras')!!}">REPORTE DE POSTURA HUEVO</a></li>                                
                      <li><a href="{!!URL::to('reportecaja')!!}">R. VENTA DE CAJAS</a></li>                                      
                      <li><a href="{!!URL::to('reportehuevo')!!}">R. VENTA DE HUEVOS DESCARTE</a></li>                                
                      <li><a href="{!!URL::to('reporte_compra')!!}">R.E COMPRA DE ALIMENTOS</a></li>
                      <li><a href="{!!URL::to('lista_gallinas')!!}">R. DE GALLINAS</a></li>     
                      <li><a href="{!!URL::to('reportebalance')!!}">R. GENERAL</a></li>     
                       <li><a href="#">R. Grafico</a></li>
                  </ul>
                </li>
            <li class="dropdown" style="width: 12%;">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="">Administrador<span class="caret"></span></a>
                  <ul class="dropdown-menu">                              
                      <li><a href="{!!URL::to('lista_compra')!!}">ANULAR COMPRA ALIMENTO</a></li>   
                      <li><a href="{!!URL::to('categoria')!!}"> GASTOS</a></li>
                      <li><a href="{!!URL::to('lista_egreso')!!}"> EGRESO</a></li>
                      <li><a href="{!!URL::to('lista_ingreso')!!}"> INGRESO</a></li>  
                      <li><a href="{!!URL::to('temperatura')!!}"> TEMPERATURA</a></li>  
                      <li><a href="{!!URL::to('usuario')!!}"> USUARIO</a></li>                        
                      <!--li><a href="Backup_Granja/php/">COPIA DE SEGURIDAD</a>  </li-->
                  </ul>
                </li>
                @endif 

              </ul>
               <ul class="nav navbar-nav navbar-right">
                 @if(Auth::user()==null) 
                   <li><a href="{!!URL::to('/')!!}" class="btn btn-success" style="color: white" > <i class="fa fa-user" aria-hidden="true"></i>  INICIAR </a></li>
                    @endif  
                    @if(Auth::user()!=null) 
                    <li><a href="{!!URL::to('logout')!!}" class="btn btn-danger" style="color: white"> <i class="fa fa-user" aria-hidden="true"></i>   SALIR</a></li>
                  @endif  
                </ul>
            </div>
          </div>
        </nav>

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    

                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Estadísticas de Producción Galpon Nro. {{$galpon_numero}}</h4>
                                <p class="category"></p>
                            </div>
                            <div class="content">
                                <div id="chartHours" class="ct-chart"></div>
                                <div class="footer">
                                    <div class="legend">

                                      <!--   <i class="fa fa-circle text-info"></i> Open
                                        <i class="fa fa-circle text-danger"></i> Click
                                        <i class="fa fa-circle text-warning"></i> Click Second Time -->
                                    </div>
                                    <hr>
                                    <h4>REPORTE GENERAL POR GALPON</h4>
                                    <div class=" col-lg-12 col-sm-12 col-xs-12 stats">
                                     <div class=" col-lg-12 col-sm-12 col-xs-12 ">
                                     {!!Form::open(['route'=>'reporte_produccion.index','method'=>'GET'])!!}
                                        <input type="hidden" value="1" name="opcion">
                                       <div class="col-lg-3 col-sm-3 col-xs-12">
                                     
                                        <select name="id_edad" id="id_edad" class="form-control">
                                        <option value="0">SELECCIONE UN GALPON</option>
                                            @foreach($galpon as $gal)
                                            <option value="{{$gal->id_edad}}">GALPON NRO. {{$gal->numero}}</option>
                                            @endforeach
                                        </select>
                                       </div>
                                       <div class="col-lg-1 col-sm-1 col-xs-12">
                                           <!-- <button class="btn btn-primary" onclick="tito.initChartist()">seleccion</button> -->
                                           
                                           <input type="submit" class="btn btn-primary" value="MOSTRAR">
                                       </div>
 <div class="col-lg-8 col-sm-8 col-xs-12">
                                       </div>

                                            {!!Form::close()!!}
 <div class="col-lg-12 col-sm-12 col-xs-12">
                                                 {!!Form::open(['class'=>'form-group', 'route'=>'reporte_produccion.index','method'=>'GET','onsubmit'=>'javascript: return validar_2()'])!!}
<h4>REPORTE POR FECHA</h4>
                                        <input type="hidden" value="2" name="opcion">
                                     
                                         <div class="col-lg-2 col-sm-2 col-xs-12 pull-rigth">
                                     
                                        
                                      <span> DESDE</span> <input type="date" class="form-control" name="fecha_inicio">
                                        
                                       </div>  <div class="col-lg-2 col-sm-2 col-xs-12 pull-rigth">
                                     
                                       HASTA
                                       <input type="date" class="form-control" name="fecha_fin">
                                        
                                       </div>
                                         <div class="col-lg-3 col-sm-3 col-xs-12 pull-rigth">
                                     
                                        <select name="id_edad" id="id_edad" class="form-control">
                                        <option value="0">SELECCIONE UN GALPON</option>
                                            @foreach($galpon as $gal)
                                            <option value="{{$gal->id_edad}}">GALPON NRO. {{$gal->numero}}</option>
                                            @endforeach
                                        </select>
                                       </div>
                                       <div class="col-lg-1 col-sm-1 col-xs-12 pull-rigth">
                                           <!-- <button class="btn btn-primary" onclick="tito.initChartist()">seleccion</button> -->
                                           
                                      {!!Form::submit('MOSTRAR',['id'=>'btn_actualizar','class'=>'btn btn-primary'])!!}
                                       </div>

                                            {!!Form::close()!!}
                                       </div>
                                       <br>

                                   
                                      
                                       </div>

                                        <!-- <i class="fa fa-history"></i> Updated 3 minutes ago -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row">
 <div class="col-lg-12 col-sm-12 col-xs-12 ">
                  
                </div>
                </div>
            </div>
        </div>
<br><br>

        <footer class="footer">
         <div class="container-fluid">
               
                <p class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> <a href="#">TITO</a>, MODESTO SALDAÑA TODOS LOS DERECHOS RECERVADOS
                </p>
            </div>
        </footer>

    </div>
</div>


</body>
  {!!Html::script('js/jquery.min.js')!!}
        {!!Html::script('js/bootstrap.min.js')!!}
  
        {!!Html::script('js/plugins/chartist.min.js')!!}
        {!!Html::script('js/plugins/light-bootstrap-dashboard.js')!!}
       {!!Html::script('js/demo/demo.js')!!}

	<script type="text/javascript">

function validar2(){
fecha1=$('input[name=fecha_inicio]').val();
fecha2=$('input[name=fecha_fin]').val();

  if (fecha1=="" || fecha2=="") {
    alert('POR FAVOR RELLENE TODOS LOS DATOS CORRECTOS');
    return false;
  }
  else{
    return true;
  }
}
    	$(document).ready(function(){

postura();
        	
    	});
        function postura(){
var id_edad=$('#id_edad').val();
 var dataSales = {
          labels: [<?php
          $mes =['ENERO','FEBRERO','MARZO','ABRIL','MAYO','JUNIO','JULIO','AGOSTO','SEPTIEMBRE','OCTUBRE','NOVIEMBRE','DICIEMBRE'];

          for ( $i = 0; $i < count($result); $i++) {
            if ($opcion==1) {
         
                                echo "'".$mes[$result[$i]->mes-1]."'";?>, <?php }
                                else{
                                  if ($i==0) {
                                    echo "'".$mes[$result[$i]->mes-1]." ".$result[$i]->fecha."'";
                                  }
                                  else{
                                    if ($result[$i]->mes!=$result[$i-1]->mes) {
                                       echo "'".$mes[$result[$i]->mes-1]." ".$result[$i]->fecha."'";
                                     }else{
                                       echo "'".$result[$i]->fecha."'";

                                     }
                                  }

                                  ?>, <?php }
                                }
                               ?>
                     ],
          series: [
             [<?php  
                            for ( $i = 0; $i < count($result); $i++) {
                                // if ($i<count($result2)) {
                                //     echo "'".$result2[$i
                                //     ]->porsentaje."'";
                                // }
                                // else{
                                      echo "'".$result[$i]->porsentaje."'";
                                // }
                          
                     ?>,<?php } ?>],
           
          ]
        };

  var optionsSales = {
          lineSmooth: false,
          low: 0,
          high: 100,
          showArea: true,
          height: "300px",
          axisX: {
            showGrid: false,
          },
          lineSmooth: Chartist.Interpolation.simple({
            divisor: 3
          }),
          showLine: false,
          showPoint: false,
        };
        
        var responsiveSales = [
          ['screen and (max-width: 640px)', {
            axisX: {
              labelInterpolationFnc: function (value) {
                return value[0];
              }
            }
          }]
        ];
    
        Chartist.Line('#chartHours', dataSales, optionsSales, responsiveSales);
   

 // var dataSales = {
 //          labels: ['ENERO', 'FEBRERO', 'MARZO', '4', '5', '6', '7', '8','9','10','11','12'],
 //          series: [
 //             [40, 20, 40, 42, 54, 86, 98, 95, 52, 88, 46, 44, 44, 44, 44, 44, 44, 44, 44],
           
 //          ]
 //        };
      }
	</script>
</html>
