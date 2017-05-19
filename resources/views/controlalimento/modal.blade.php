  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 id="titulogalpon" class="modal-title" >Actualizar</h3>

      </div>

      <div class="modal-body">
      
        <input type="hidden" name="_token" value="{{ csrf_token() }}" id="token">

   

        <button onclick="CargarModalAgregaredad()" class="btn btn-success pull-rigth" data-toggle='modal' data-target='#myModalAgregaredad'>Agregar Edad</button> 
  <button onclick="CargarModalAgregartemp()" class="btn btn-warning pull-rigth" data-toggle='modal' data-target='#myModalAgregartemp'>Agregar Temperatura</button> <br>
     
      <table  class="table table-striped table-bordered table-condensed table-hover">
                        <thead style="background-color: #A9D0F5">
                            <th><center>Edad Min.</center></th>
                            <th><center>Edad Max.</center></th>
                            <th><center>Alimento</center></th>

                            <th><center>Temp. Minima</center></th>
                            <th><center>Temp. Maxima</center></th> 
                            <th><center>Cant.</center></th> 
                            <th><center>OPCIONES</center></th>                       



                        </thead>

                        <tbody id="tbdetalles">
                         
                        </tbody>
                        <tfoot style="background-color: #f1948a">

                          <input type="hidden" name="total_temperatura" >
                        </tfoot>
                    </table>

</div>

      <div class="modal-footer">
     
      </div>
    </div>
  </div>
</div>



<!-- modal actualizar control -->
  <div class="modal fade" id="modalActualizar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 id="titulogalpon" class="modal-title" >ACTUALIZAR CONTROL</h3>
      </div>
      <div class="modal-body">

       {!!Form::open(['route'=>['controlalimento.update','null'],'method'=>'PUT','onsubmit'=>'javascript: return validarcontrol()'])!!}      

        <input type="hidden" id="id_edad" name="id_edad">
        <input type="hidden" id="id_temperatura" name="id_temperatura" >
        <input type="hidden" id="id_edad_temp" name="id_edad_temp">
        <input type="hidden" id="id_grupo_control" name="id_grupo_control">

        
         <div class="form-group">
          {!!Form::label('edad_min','Edad Minima: ')!!}
          {!!Form::number('edad_min',null,['id'=>'edad_min','class'=>'form-control','placeholder'=>'Ingrese la Edad Minima','onkeypress'=>'return numerosmasdecimal(event)'])!!}
      </div>
     
        <div class="form-group">
          {!!Form::label('edad_max','Edad Máxima: ')!!}
          {!!Form::number('edad_max',null,['id'=>'edad_max','class'=>'form-control','placeholder'=>'Ingrese la Edad maxima','onkeypress'=>'return numerosmasdecimal(event)'])!!}
      </div>
      <div class="form-group">
          {!!Form::label('alimento','Alimento Actual: ')!!}
          {!!Form::text('alimento',null,['id'=>'alimento','class'=>'form-control','disabled'=>true])!!}
           </div>
        <div class="form-group">
          {!!Form::label('alimento','Alimento a Actualizar: ')!!}
       
         <select name="id_alimento" id="id_alimento" class="form-control">
         <option value="0">Seleccione para actualizar ALIMENTO</option>
           <?php 
           for ($i=0; $i < count($alimento) ; $i++) { 
         echo "<option value=".$alimento[$i]->id.">".$alimento[$i]->tipo."</option>";
           }
           
            ?>
         </select>
        </div>
         
         <div class="form-group">
          {!!Form::label('temp_min','Temperatura Mínima: ')!!}
          {!!Form::number('temp_min',null,['id'=>'temp_min','class'=>'form-control','placeholder'=>'Ingrese la Edad maxima','onkeypress'=>'return numerosmasdecimal(event)'])!!}
      </div>
        <div class="form-group">
          {!!Form::label('temp_max','Tepemratura Máxima: ')!!}
          {!!Form::number('temp_max',null,['id'=>'temp_max','class'=>'form-control','placeholder'=>'Ingrese la Edad maxima','onkeypress'=>'return numerosmasdecimal(event)'])!!}
      </div>
    <div class="form-group">
          {!!Form::label('cantidad','Cantidad: ')!!}
          {!!Form::text('cantidad',null,['id'=>'cantidad','class'=>'form-control','placeholder'=>'Ingrese la Edad maxima','onkeypress'=>'return numerosmasdecimal(event)'])!!}
      </div>
</div>


      <div class="modal-footer">
          {!!Form::submit('ACTUALIZAR',['id'=>'btn_actualizar','class'=>'btn btn-primary'])!!}
    {!!Form::close()!!}
      <button data-dismiss="modal"  class="btn btn-danger">CANCELAR</button>
      </div>
    </div>
    </div>
    </div>

<!-- este modal agrega una edad  minima o maxima -->
<div class="modal fade" id="myModalAgregaredad" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 id="titulogalpon" class="modal-title" >Agregar Edad</h3>
      </div>

      <div class="modal-body">
      {!!Form::open(array('url'=>'AgregarGrupoEdad','method'=>'POST','autocomplete'=>'off','onsubmit'=>'javascript: return validarcontroledad()'))!!}
   <input type="hidden" id="id_grupo_control" name="id_grupo_control">

<div class="form-group">  
<label for="edad_min  ">Edad Minima </label>
<input type="number" name="edad_min" id="edad_min_e" class="form-control" placeholder="Introduzca la Edad Minima" >

</div>
<label for="edad_max">Edad Máxima </label>
<div class="form-group"> 


<input type="number" name="edad_max" id="edad_max_e" class="form-control" placeholder="Introduzca la Edad Maxima" >

</div>
<div class="form-group">
          {!!Form::label('alimento','Alimento a Actualizar: ')!!}
       
         <select name="id_alimento" id="id_alimento_e" class="form-control">
         <option value="0">Seleccione un Alimento</option>
           <?php 
           for ($i=0; $i < count($alimento) ; $i++) { 
         echo "<option value=".$alimento[$i]->id.">".$alimento[$i]->tipo."</option>";
           }
           
            ?>
         </select>
         </div>
      <table  class="table table-striped table-bordered table-condensed table-hover">
                        <thead style="background-color: #A9D0F5">
                         
                            <th><center>Temp. Minima</center></th>
                            <th><center>Temp. Maxima</center></th> 
                            <th><center>Cant.</center></th> 



                        </thead>

                        <tbody id="tbagregaredad">
                         
                        </tbody>
                        <tfoot style="background-color: #f1948a">

                          <input type="hidden" name="total_temperatura" >
                        </tfoot>
                    </table>

</div>

      <div class="modal-footer">
      <button class="btn btn-primary" type="submit" >REGISTRAR</button>
      <button data-dismiss="modal"  class="btn btn-danger">CANCELAR</button>
       {!!Form::close()!!}      

      </div>
    </div>
  </div>
</div>



<!-- este modal agrega una edad  minima o maxima -->
<div class="modal fade" id="myModalAgregartemp" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 id="titulogalpon" class="modal-title" >Agregar Temperatura</h3>
      </div>

      <div class="modal-body">
      {!!Form::open(array('url'=>'AgregarGrupoTemp','method'=>'POST','autocomplete'=>'off'))!!}
   <input type="hidden" id="id_grupo_control" name="id_grupo_control">

<div class="form-group">  
<label for="edad_min  ">Temperatura Minima </label>
<input type="number" name="temp_min" class="form-control" placeholder="Introduzca la Edad Minima" >

</div>
<label for="edad_max">Temperatura Máxima </label>
<div class="form-group"> 


<input type="number" name="temp_max" class="form-control" placeholder="Introduzca la Edad Maxima" >

</div>

      <table  class="table table-striped table-bordered table-condensed table-hover">
                        <thead style="background-color: #A9D0F5">
                         
                            <th><center>Edad Minima</center></th>
                            <th><center>Edad. Maxima</center></th>
                            <th><center>Alimento</center></th> 

                            <th><center>Cant.</center></th> 



                        </thead>

                        <tbody id="tbagregartemp">
                         
                        </tbody>
                        <tfoot style="background-color: #f1948a">

                          <input type="hidden" name="total_temperatura" >
                        </tfoot>
                    </table>

</div>

      <div class="modal-footer">
      <button class="btn btn-primary" type="submit" >REGISTRAR</button>
      <button data-dismiss="modal"  class="btn btn-danger">CANCELAR</button>
       {!!Form::close()!!}      

      </div>
    </div>
  </div>
</div>




