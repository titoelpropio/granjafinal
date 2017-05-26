$(document).ready(function(){
    if ($('#token').val()=="") {
        setInterval(location.reload(), 2000);
    }else{
        $('#loading').css("display","none");
    }
});

function crear_control(){
    $('#btnregistrar').hide();
    $('#loading').css("display","block");
   // var token = $("#token").val();        
    var id_edad=$("#id_edad").val();  
    var id_temperatura=$("#id_temperatura").val();  
    var cantidad=$("#cantidad").val(); 
    var id_alimento=$("#id_alimento").val();
    $.ajax({
        url: "craar_controlalimento",
       // headers: {'X-CSRF-TOKEN': token},
        type: 'GET',
        dataType: 'json',
        data: {id_temperatura:id_temperatura, id_edad:id_edad, cantidad: cantidad, id_alimento:id_alimento},
        success: function (mensaje) {
            if (mensaje.mensaje==undefined) {
                alertify.success("GUARDADO CORRECTAMENTE");    
                setTimeout("location.href='controlalimento'",1000);     
            } else {
                $('#btnregistrar').show();
                alertify.alert("ERROR",mensaje.mensaje);  
                setTimeout("location.href='controlalimento'",4000);
            }
                $('#loading').css("display","none");
        },
        error: function (msj) {
            $('#btnregistrar').show();
            $('#loading').css("display","none");            
            alertify.alert("ERROR","NO SE PUDO GUARDAR LOS DATOS INTENTE NUEVAMENTE"); 
            //setTimeout("location.href='controlalimento'",2000);
        },
    });
}

//ELIMINAR CONTROL
function eliminar_control(id){
 alertify.confirm("MENSAJE","DESEA ELIMINAR ESTE CONTROL ALIMENTO",
  function(){
    $('#loading').css("display","block");
    //var token = $("#token").val();
    //var token = "Rp7i3fIwld1p9bi2IAAMi3RDy6W3m3iYCJYtOtsl";
    var route = "eliminar_controlalimento/"+id; 
    $.ajax({
        url: route,
        //headers: {'X-CSRF-TOKEN': token},
        type: 'GET', 
        dataType: 'json',     
        success:function(){
            $('#loading').css("display","none");
            alertify.success('CONTROL ALIMENTO ELIMINADO');
            location.reload();
        },
        error:function(){                
            $('#loading').css("display","none");
            alertify.alert("ERROR","NO SE PUDO ELIMINAR LOS DATOS INTENTE NUEVAMENTE");
            setTimeout("location.href='controlalimento'",2000);
        }
    });
  },            
  function(){ alertify.error('CANCELADO'); }); 
}


//ELIMINAR CONTROL
function actualizar_control(id,numero){
  $('#numero').text(numero);
$('input[name=id_grupo_control]').val(id);
    $('#loading').css('display','block');
  $('#tbdetalles').empty();
   $.get('mostrar_control/'+id,function(resp){
    for (var i = 0; i < resp.length; i++) {
        if (i==0) {
            $('#tbdetalles').append('<tr style="text-align:center"><td>'+resp[i].edad_min+'</td><td>'+resp[i].edad_max+'</td><td>'+resp[i].tipo+'</td><td>'+resp[i].temp_min+'</td><td>'+resp[i].temp_max+' </td><td>'+resp[i].cantidad+'</td><td><button onclick="cargar_edad_temp('+resp[i].id_edad+','+resp[i].id_temp+','+resp[i].id_tem_edad+')" data-toggle="modal" data-target="#modalActualizar" class="btn btn-primary">ACTUALIZAR</td></tr>');

        }else{
        if (resp[i].edad_min==resp[i-1].edad_min) {
            $('#tbdetalles').append('<tr style="text-align:center"><td></td><td></td><td></td><td>'+resp[i].temp_min+'</td><td>'+resp[i].temp_max+' </td><td>'+resp[i].cantidad+'</td><td><button onclick="cargar_edad_temp('+resp[i].id_edad+','+resp[i].id_temp+','+resp[i].id_tem_edad+')" data-toggle="modal" data-target="#modalActualizar"  class="btn btn-primary">ACTUALIZAR</td></tr>');

        }else{
            $('#tbdetalles').append('<tr style="text-align:center;background-color:#f1948a"><td></td><td></td><td></td><td></td><td> </td><td></td><td></td></tr>');

            $('#tbdetalles').append('<tr style="text-align:center"><td>'+resp[i].edad_min+'</td><td>'+resp[i].edad_max+'</td><td>'+resp[i].tipo+'</td><td>'+resp[i].temp_min+'</td><td>'+resp[i].temp_max+' </td><td>'+resp[i].cantidad+'</td><td><button onclick="cargar_edad_temp('+resp[i].id_edad+','+resp[i].id_temp+','+resp[i].id_tem_edad+')" data-toggle="modal" data-target="#modalActualizar" class="btn btn-primary">ACTUALIZAR</td></tr>');

        }}

    }
    $('#loading').css('display','none');

   })
    .fail(function() {
    alert( "error: intentelo nuevamente, o actualice la pagina" );
  });
}

function cargar_edad_temp(id_edad,id_temp,id_edad_temp){//esta funcion se encarga de cargar los datos del modal  actualizar 
$('#loading').css('display','block');
$('#id_edad').val(id_edad);
$('#id_temperatura').val(id_temp);
$('#id_edad_temp').val(id_edad_temp);

$.get('cargar_edad_temp/'+id_edad_temp,function(res){
$('#edad_min').val(res[0].edad_min);
$('#edad_max').val(res[0].edad_max);
$('#alimento').val(res[0].tipo);

$('#temp_min').val(res[0].temp_min);
$('#temp_max').val(res[0].temp_max);
$('#cantidad').val(res[0].cantidad);
$('#loading').css('display','none');

});
}

function CargarModalAgregaredad(){
     $('#tbagregaredad').empty();
$('#loading').css('display','block');
        $control=$('#id_grupo_control').val();
    
    $.get('CargarModalAgregaredad/'+$control,function(res){
            for (var i = 0; i < res.length; i++) {
                   $('#tbagregaredad').append('<tr style="text-align:center"><td><input class="form-control" name="id_temp[]" value='+res[i].id+' type="hidden">'+res[i].temp_min+'</td><td>'+res[i].temp_max+'</td><td><input class="form-control" name="cantidad[]" min = "0" step = "any" type="number" /></td></tr>');
            }
$('#loading').css('display','none');

    });
}
function CargarModalAgregartemp(){

$('#loading').css('display','block');
   $('#tbagregartemp').empty();
        $control=$('#id_grupo_control').val();
    
    $.get('CargarModalAgregartemp/'+$control,function(res){
            for (var i = 0; i < res.length; i++) {
                   $('#tbagregartemp').append('<tr style="text-align:center"><td><input class="form-control" name="id_edad[]" value='+res[i].id+' type="hidden">'+res[i].edad_min+'</td><td>'+res[i].edad_max+'</td><td>'+res[i].tipo+'</td><td><input class="form-control" name="cantidad[]" min = "0" step = "any" type="number" /></td></tr>');
            }
$('#loading').css('display','none');

    });
}
function aceptar(){
 
    $('#loading').css("display","block");
}

function limpiar_text(){
    $("#cantidad").val("");
}
function validarcontrol(){

    if ($('#edad_min').val()=="" || $('#edad_max').val()=="" || $('#temp_max').val()=="" || $('#temp_min').val()=="" || $('#cantidad').val()=="" ) {
        toastr.error('LE FALTA INTRODUCIR DATOS');
        return false;
    }
    else{
    return true;
    }
}
function validarcontroledad() {
  edad_min=$('#edad_min_e').val() ;
   edad_max= $('#edad_max_e').val(); 
  if ($('#edad_min_e').val()=="" || $('#edad_max_e').val()=="" || $('#id_alimento_e').val()==0) {

toastr.error('LE FALTA INTRODUCIR DATOS');
        return false;

  } else{
    if (parseInt(edad_min) >= parseInt(edad_max)) {
toastr.error('La Edad Minima tiene que ser menor a la Maxima');

       return false;  
    }

    return true;
    }
}

function validarcontroltemp() {
  if ($('#temp_max_a').val()=="" || $('#temp_min_a').val()=="" ) {
toastr.error('LE FALTA INTRODUCIR DATOS');
        return false;

  } else{
     if ($('#temp_min_a').val() >= $('#temp_max_a').val()) {
toastr.error('La Temperatura minima tiene que ser menor a la Maxima');

       return false;  
    }

    return true;
    }
}

function validarcontroltemp() {
  if ($('#temp_max_a').val()=="" || $('#temp_min_a').val()=="" ) {
toastr.error('LE FALTA INTRODUCIR DATOS');
        return false;

  } else{
     if ($('#temp_min_a').val() >= $('#temp_max_a').val()) {
toastr.error('La Temperatura minima tiene que ser menor a la Maxima');

       return false;  
    }
    return true;
    }
}

function ReplicarControl() {
  id_control=$('#select_id_grupo_control').val();
  if (id_control!="") {
  $.get('ReplicarControl/'+id_control,function(res){
    alert('Replicado Correctamente');
location.reload();
  }).fail(function(){
        alert('Intente nuevamente o Actualice el formulario');
  });}
  else{
    toastr.error('POR FAVOR SELECCIONE UN CONTROL DE ALIMENTO A REPLICAR');
  }
}