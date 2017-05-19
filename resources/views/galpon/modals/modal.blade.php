  
<!--muestra la lista de vacunas postergadas-->
<div class="modal fade" id="ModalListaPost" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static">

    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" id="espacio">
                <H2 id="mensaje_vacuna">VACUNAS POSTERGADAS</H2>
            </div>
            <div class="modal-body">

                <table class="table table-striped table-bordered table-condensed table-hover">
                    <thead style="background-color: #A9D0F5">
                        <tr style="align:center">
                            <th > <center> NOMBRE</center></th>
                            <th><center> METODO DE APLICACION</center> </th>
                            <th><center> OPERACION</center> </th>

                        </tr>
                    </thead>
                    <tbody id="LPostergacionVacuna">

                    </tbody>
                </table>



            </div>

            <div class="modal-footer">
                {!!link_to('#', $title='CANCELAR', $attributes = ['id'=>'cancelar','data-dismiss'=>'modal','class'=>'btn btn-danger'], $secure = null)!!}
            </div>
        </div>
    </div>
</div>

