
<!--RANGO EDAD-->

<div class="modal fade" id="myModalRangoEdad" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 id="titulogalpon" class="modal-title" >REGISTRAR RANGO EDAD</h3>
      </div>

      <div class="modal-body">
       <?php //{!!Form::open(['route'=>'rango_edad.store', 'method'=>'POST'])!!}  ?>


      <div class="form-group">
          {!!Form::label('edad_min','Edad Minima: ')!!}
          {!!Form::number('edad_min',null,['id'=>'edad_min','class'=>'form-control','placeholder'=>'Ingrese La Edad Minima','onkeypress'=>'return bloqueo_de_punto(event)'])!!}
      </div>

      <div class="form-group">
          {!!Form::label('edad_max','Edad Maxima: ')!!}
          {!!Form::number('edad_max',null,['id'=>'edad_max','class'=>'form-control','placeholder'=>'Ingrese La Edad Maxima','onkeypress'=>'return bloqueo_de_punto(event)'])!!}
      </div>
          {!!Form::hidden('estado',1,['id'=>'estado','class'=>'form-control'])!!}
</div>

      <div class="modal-footer">
     <?php // {!!Form::submit('REGISTRAR',['class'=>'btn btn-primary','id'=>'btn_guardar','onclick'=>'ucultar_boton()'])!!}      
   // {!!Form::close()!!} ?>
    <button class="btn btn-primary" onclick="crear_rango_edad()" id="btnregistrar">REGISTRAR</button>
      <button data-dismiss="modal"  class="btn btn-danger" onclick="limpiar()">CANCELAR</button>
      </div>
    </div>
  </div>
</div>
