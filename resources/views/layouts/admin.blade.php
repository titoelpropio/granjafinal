

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title> SISTEMA GRANJA</title>
        <link rel="shortcut icon" href="{{asset('images/granja.png')}}">
        {!!Html::style('css/font-awesome.min.css')!!}
        {!!Html::style('css/bootstrap.min.css')!!}
        {!!Html::style('css/metisMenu.min.css')!!}
        {!!Html::style('css/sb-admin-2.css')!!}

        {!!Html::style('css/AdminLTE.min.css')!!}
        {!!Html::style('css/style.css')!!}
        {!!Html::style('css/bootstrap-datetimepicker.css')!!}

        {!!Html::script('js/jquery.min.js')!!}
        {!!Html::script('js/bootstrap.min.js')!!}
        {!!Html::style('css/toastr.css')!!}
        {!!Html::script('js/toastr.min.js')!!}
        {!!Html::style('css/bootstrap-select.min.css')!!}
        {!!Html::style('css/alertify.css')!!}
        {!!Html::style('css/default.css')!!}
      
    </head>

    <body>

<!--class="navbar navbar-inverse"  -->
<div id="wrapper">
    <div id="page-wrapper">
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
                      <li><a href="{!!URL::to('reporte_produccion')!!}">R. Grafico</a></li>     

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
         @yield('content')
    </div>                    
</div>


  {!!Html::script('js/moment.js')!!}
  {!!Html::script('js/numerosmasdecimal.js')!!}
  {!!Html::script('js/metisMenu.min.js')!!}
  {!!Html::script('js/sb-admin-2.js')!!}
  {!!Html::script('js/alertify.js')!!}
  {!!Html::script('js/bootstrap-datetimepicker.min.js')!!}
    </body>
</html>


