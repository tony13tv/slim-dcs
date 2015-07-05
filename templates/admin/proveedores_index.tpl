{extends "admin/extends/main.tpl"}
{block "content"}
    <div class="jumbotron">
        <div class="container">
            <h1>Proveedores</h1>

            <form action="/admin/proveedores/add" method="post" role="form">
                <legend>Nuevo Proveedor</legend>
                <div class="form-group clearfix">
                    <div class="col-xs-6">
                        <label for="nombre">Nombre</label>
                        <input type="text" class="form-control" name="nombre_proveedor" id="nombre"
                               placeholder="Nombre">
                    </div>
                    <div class="col-xs-6">
                        <label for="telefono">Teléfono</label>
                        <input type="text" class="form-control" name="telefono_proveedor" id="telefono"
                               placeholder="Teléfono">
                    </div>
                    <div class="col-xs-6">
                        <label for="correo">Correo</label>
                        <input type="text" class="form-control" name="correo_proveedor" id="correo"
                               placeholder="Correo">
                    </div>
                    <div class="col-xs-6">
                        <label for="direccion">Dirección</label>
                        <input type="text" class="form-control" name="direccion_proveedor" id="direccion"
                               placeholder="Dirección">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Crear</button>
            </form>
        </div>
    </div>
    <table class="table table-striped table-hover" data-toggle="table" data-ajax="dataTable/proveedores" data-server-side="true" data-processing="true" data-columns='{literal}[{"data": "nombre_proveedor"},{"data": "telefono_proveedor"},{"data": "correo_proveedor"},{"data": "direccion_proveedor"}]{/literal}'>
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Teléfono</th>
                <th>Correo</th>
                <th>Dirección</th>
            </tr>
        </thead>
        <tbody>

        </tbody>
    </table>
{/block}