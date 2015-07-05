{extends "admin/extends/main.tpl"}
{block "content"}
    <div class="jumbotron">
        <div class="container">
            <h1>Responsable</h1>

            <form action="/admin/responsable/add" method="post" role="form">
                <legend>Datos Del Responsable</legend>
                <div class="form-group clearfix">
                    <div class="col-xs-6">
                        <label for="respon_name"> Nombre</label>
                        <input type="text" class="form-control" name="respon_name" id="respon_name"
                               placeholder="Nombre">
                    </div>
                    <div class="col-xs-6">
                        <label for="respon_surname">Apellido</label>
                        <input type="text" class="form-control" name="respon_surname" id="respon_surname"
                               placeholder="Apellido">
                    </div>

                    <div class="col-xs-6">
                        <label for="respon_identificacion">Identificacion</label>
                        <input type="text" class="form-control" name="respon_identificacion" id="respon_identificacion"
                               placeholder="Identificacion">
                    </div>
                    <div class="col-xs-6">
                        <label for="respon_telefono">Telefono</label>
                        <input type="text" class="form-control" name="respon_telefono" id="respon_telefono"
                            placeholder="Telefono">
                    </div>
                    <div class="col-xs-6">
                        <label for="respon_direccion">direccion</label>
                        <input type="text" class="form-control" name="respon_direccion" id="respon_direccion"
                               placeholder="direccion">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Crear</button>
            </form>
        </div>
    </div>
    <table class="table table-striped table-hover"
         data-toggle="table" data-ajax="dataTable/responsable" data-server-side="true" data-processing="true"
             data-columns='{literal}[
                            {"data": "nombre_responsable"},
                            {"data": "apellido_responsable"},
                            {"data": "identificacion"},
                            {"data": "telefono_responsable"}
                            {"data": "direccion"}
                           ]
                  {/literal}'>
        <thead>
            <tr>
                <th colspan="2">Responsables</th>
                <th rowspan="2">Identificación</th>
                <th rowspan="2">N Telefono</th>
                <th rowspan="2"> Direciones</th>

                <!--th rowspan="2">Acciones</th-->
            </tr>
            <tr>
                <th> Nombre</th>
                <th> Apellido</th>

            </tr>
        </thead>
        <tbody>
            {foreach $responsable as $responsables}
                <tr>
                    <td>
                        {$responsables['nombre_responsable']}
                    </td>
                    <td>
                        {$responsables['apellido_responsable']}
                    </td>

                    <td>
                        {$responsables['identificacion']}
                    </td>

                    <td>
                        {$responsables['telefono_responsable']}
                    </td>

                    <td>
                        {$responsables['direccion']}
                    </td>

                </tr>
            {/foreach}
        </tbody>
    </table>
{/block}