


<!--modal para el agregar vacuna y galpon personalisado-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" id="espacio_2">
                <h3 id="titulo" class="modal-title"></h3>
                <button class="btn btn-warning pull-right" onclick="dartodo()">Dar todo</button>
            </div>

            <div class="modal-body">
                <input type="hidden" id="id_galpon" class="form-control">
                <input type="hidden" id="id_fase_galpon" class="form-control">
                <input type="hidden" id="cantidad_actual_g" class="form-control">
                 <input type="hidden" id="id_control_alimento" class="form-control">
                 <input type="hidden" id="id_tipo_alimento" class="form-control">
                 

                <div class="form-group">
                    <input type="hidden" id="tipo" class="form-control">
                </div>

                <div class="col-lg-12 col-sm-12 col-xs-12" >
                    <div class="form-group">
                        {!!Form::label('cantidad','CANTIDAD DE ALIMENTO POR GALLINA:')!!} <br>
                        <input type="text" id="cantidad_granel" class="form-control" onkeypress="return numerosmasdecimal(event)" onkeyup="calcular_alimento()"> 
                    </div>     
                </div> 

                <div class="col-lg-3 col-sm-3 col-xs-12" >
                    <div class="form-group">
                        {!!Form::label('cantidad','CANTIDAD TOTAL:')!!}
                        <input type="text" id="cantidad" class="form-control"  onkeypress="return numerosmasdecimal(event)">                    </div>     


                </div>  
<div class="col-lg-3 col-sm-3 col-xs-12" id="div_cantidad_anterior" style="display: none">
                    <div class="form-group">
                        {!!Form::label('cantidad','CANTIDAD ANTERIOR:')!!}
                        <input type="text" id="cantidad_anterior" class="form-control"  onkeypress="return numerosmasdecimal(event)">
                    </div>     
                   

                </div>  

                <div class="col-lg-12 col-sm-12 col-xs-12" >
                 <div class="col-lg-4 col-sm-4 col-xs-12" >
                    <div class="form-group">

                        {!!Form::label('id_silo','SILO:')!!}
                        {!!Form::select('id_silo',[],null,['id'=>'id_silo'])!!}

                    </div>
                    </div>
                     <div class="col-lg-4 col-sm-4 col-xs-12" >
                        {!!Form::label('id_silo','Cambiar Alimento:')!!}
                        <br>
                <button class="btn btn-info" onclick="CambiarAlimento()">Cambiar</button>
                       
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <div class="col-lg-12 col-sm-12 col-xs-12" >
                    <button id="btn_aceptar" class="btn btn-primary " onclick="alimentar()">ALIMENTAR</button>
                    <button id="btn_cancelar"   data-dismiss="modal" class="btn btn-danger">CANCELAR</button>
                </div>
            </div>
        </div>
    </div>
</div>


<!--CONSUMO DE VACUNAS-->
<div class="modal fade" id="myModalConsumo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" id="espacio">
                <H2 id="mensaje_vacuna"></H2>
            </div>
            <div class="modal-body">

                {!!Form::hidden('id_control_vacuna',null,['id'=>'id_control_vacuna','class'=>'form-control','readonly'])!!}

                <B><font size="4">VACUNA: </font></B> <h4 id="vacuna"></h4>
                <br>
                <B><font size="4">METODO DE APLICACION: </font></B> <h4 id="detalle"></h4>
                {!!Form::hidden('cantidad_vac',1,['id'=>'cantidad_vac','class'=>'form-control','onkeypress'=>'return bloqueo_de_punto(event)','onkeyup'=>'calcular()'])!!}
                {!!Form::hidden('precio',0,['id'=>'precio','class'=>'form-control','placeholder'=>'Ingrese La Capacidad Total','onkeypress'=>'return numerosmasdecimal(event)'])!!}      

                <!--div class="form-group">
                  {!!Form::label('cantidad','Cantidad:')!!}
                  {!!Form::number('cantidad_vac',1,['id'=>'cantidad_vac','class'=>'form-control','onkeypress'=>'return bloqueo_de_punto(event)','onkeyup'=>'calcular()'])!!}
                </div>
            
                <div class="form-group">
                  {!!Form::label('precio','Precio:')!!}
                  {!!Form::text('precio',null,['id'=>'precio','class'=>'form-control','placeholder'=>'Ingrese La Capacidad Total','onkeypress'=>'return numerosmasdecimal(event)'])!!}
                </div-->

                <input type="hidden" id="precio_aux">
            </div>

            <div class="modal-footer">
                <button class="btn btn-primary" onclick="consumir_vacuna()" id="btn_consumir">CONSUMIR</button>
                <button class="btn btn-success" onclick="postergarvacuna()" id="btn_consumir">POSTERGAR</button>
                {!!link_to('#', $title='CANCELAR', $attributes = ['id'=>'cancelar','data-dismiss'=>'modal','class'=>'btn btn-danger'], $secure = null)!!}

            </div>
        </div>
    </div>
</div>
