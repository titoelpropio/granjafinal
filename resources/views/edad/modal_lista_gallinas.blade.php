<!--DETALLE DE TODAS LAS GALLINAS QUE SE CRIARON-->
<div class="modal fade" id="ModalDetalleGallinas" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static">
    <div class="modal-dialog modal-lg"  role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 id="titulo_vacuna" class="modal-title" > CONTROL VACUNA </h3>
            </div>
            <div class="modal-body">
                <input type="hidden" name="_token" value="{{ csrf_token() }}" id="token">

            <table class="table table-striped table-bordered table-condensed table-hover">
                <thead align="center" bgcolor=black style="color: white">
                <td>EDAD</td>
                <td>NOMBRE</td>
                <TD>METODO DE APLICACION</TD>
                <TD>ESTADO</TD>
                </thead>

                
                <tbody id="vacunas">
                
                </tbody>

            </table>
 
            </div>

            <div class="modal-footer">
                <button data-dismiss="modal"  class="btn btn-danger ">SALIR</button>
            </div>
        </div>
    </div>
</div>
