  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 id="titulogalpon" class="modal-title" >REGISTRAR FASES</h3>
      </div>

      <div class="modal-body">
      {!!Form::open(['route'=>'fases.store', 'method'=>'POST'])!!}
        <input type="hidden" name="_token" value="{{ csrf_token() }}" id="token">
        <input type="hidden" id="id">

        <div class="form-group">
            {!!Form::label('numero','Numero: ')!!}
            {!!Form::text('numero',null,['id'=>'numero','class'=>'form-control','placeholder'=>'Ingrese El Numero','onkeypress'=>'return bloqueo_de_punto(event)'])!!}
        </div>
        <div class="form-group">
            {!!Form::label('nombre','Nombre: ')!!}
            {!!Form::text('nombre',null,['id'=>'nombre','class'=>'form-control','placeholder'=>'Ingrese La Fase'])!!}
        </div>

      </div>

      <div class="modal-footer">
      {!!Form::submit('REGISTRAR',['class'=>'btn btn-primary','id'=>'btn_guardar','onclick'=>'ucultar_boton()'])!!}
    {!!Form::close()!!}
      <!--button class="btn btn-primary" onclick="crear_fase()" id="btnregistrar">REGISTRAR</button-->
      <button data-dismiss="modal"  class="btn btn-danger">CANCELAR</button>
      </div>
    </div>
  </div>
</div>

  <div class="modal fade" id="ModalEliminarFase" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static">
  <div class="modal-dialog" role="document">
    <div class="modal-content">


      <div class="modal-body">
      {!!Form::open(['route'=>'fases.store', 'method'=>'POST'])!!}
        <h3 id="title" align="center">DESEA ELIMINAR ESTA FASE</h3>

        <input type="text" id="id_fase">

      </div>

      <div class="modal-footer">
      {!!Form::submit('ACEPTAR',['class'=>'btn btn-primary','id'=>'btn_eliminar','onclick'=>'ucultar_boton()'])!!}
    {!!Form::close()!!}
      <!--button class="btn btn-primary" onclick="crear_fase()" id="btnregistrar">REGISTRAR</button-->
      <button data-dismiss="modal"  class="btn btn-danger">CANCELAR</button>
      </div>
    </div>
  </div>
</div>
