
<div class="form-group">
    {!!Form::label('tipo','Tipo:')!!}
    {!!Form::text('tipo',null,['id'=>'tipo','class'=>'form-control','placeholder'=>'Ingrese El Tipo De Caja'])!!}
</div>

<div class="form-group">
    {!!Form::label('precio','Precio:')!!}
    {!!Form::text('precio',null,['id'=>'precio','class'=>'form-control','placeholder'=>'Ingrese El Precio De La Caja','onkeypress'=>'return numerosmasdecimal(event)'])!!}
</div>

<div class="form-group">
    {!!Form::label('id_maple','Tamaño De Maple:')!!}
    {!!Form::select('id_maple',$maple,null,array('class'=>'form-control'))!!}
</div>

<div class="form-group">
    {!!Form::label('cantidad_maple','Cantidad Maple:')!!}
    {!!Form::text('cantidad_maple',null,['id'=>'cantidad_maple','class'=>'form-control','placeholder'=>'Ingrese La Cantidad De Maple','onkeypress'=>'return bloqueo_de_punto(event)'])!!}
</div>


<div class="form-group">
    {!!Form::label('color','Color:')!!}
    {!!Form::select('color', array('silver' => 'PLOMO', 'green' => 'VERDE', 'red' => 'ROJO', 'blue' => 'AZUL', 'white' => 'BLANCO', 'yellow' => 'AMARILLO'), null,array('id'=>'color','class'=>'form-control'))!!}
</div>
