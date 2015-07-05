{extends "admin/extends/main.tpl"}
{block "content"}
    <div class="jumbotron">
        <div class="container">
            <h1>Inventario</h1>

            <form action="/admin/inventario/add" method="post" role="form">
                <legend>Control de Inventario</legend>
                <div class="form-group">
                    <div class="col-xs-6">
                    <label for="cod_prov">Codigo Proveedor:</label>
                    <input type="text" class="form-control" name="cod_prov" id="Codigo_Proveedores"
                           placeholder="Codigo Proveedor">
                    </div>
                    <div class="col-xs-6">
                    <label for="nom_prod">Nombre del Producto:</label>
                    <input type="text" class="form-control" name="nom_prod" id="Nombre_Producto"
                           placeholder="Producto">
                    </div>
                    <div class="col-xs-6">
                    <label for="costo_prod">Costo del Producto:</label>
                    <input type="text" class="form-control" name="costo_prod" id="Costo_Producto"
                           placeholder="Costo del Producto">
                    </div>
                    <div class="col-xs-6">
                        <label for="obs_prod">Observaciones:</label>
                        <input type="text" class="form-control" name="obs_prod" id="Observaciones_Producto"
                               placeholder="Observaciones">
                    </div>
                    <div class="col-xs-3">
                        <label for="existencia_prod">Existencia:</label>
                        <input type="text" class="form-control" name="existencia_prod" id="Existencia_Producto"
                               placeholder="Existencia">
                    </div>
                    <div class="col-xs-3">
                        <label for="existencia_min">Existencia Minima:</label>
                        <input type="text" class="form-control" name="existencia_min" id="Existencia_Minima"
                               placeholder="Existencia Minima">
                    </div>
                    <div class="col-xs-3">
                        <label for="existencia_max">Existencia Maxima:</label>
                            <input type="text" class="form-control" name="existencia_max" id="Existencia_Maxima"
                                   placeholder="Existencia Maxima">
                    </div>
                    <div class="col-xs-6">
                        <label for="fecha_ingresop">Fecha Ingreso:</label>
                        <input type="text" class="form-control" name="fecha_ingresop" id="Fecha_Ingreso"
                               placeholder="Fecha Ingreso">
                    </div>
                    <div class="col-xs-6">
                        <label for="fecha_venc">Fecha Vencimiento:</label>
                        <input type="text" class="form-control" name="fecha_ven" id="Fecha_Vencimiento"
                               placeholder="Fecha Vence">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Crear</button>
            </form>
        </div>
    </div>
    <table class="table table-striped table-hover" data-toggle="table" data-ajax="dataTable/inventario" data-server-side="true" data-processing="true" data-columns='{literal}[{"data": "codigo_producto"},{"data": "nombre_producto"},{"data": "costo_producto"},{"data": "existencia"},{"data": "existencia_min"},{"data": "existencia_max"},{"data": "fecha_ingreso(compra)"},{"data": "fecha_vencimiento"}]{/literal}'>

    <thead>
            <tr>
                <th class="text-center">Codigo Producto</th>
                <th class="text-center">Nombre Producto</th>
                <th class="text-center">Costo</th>
                <th class="text-center">Existencia</th>
                <th class="text-center">Existencia Min</th>
                <th class="text-center">Existencia Max</th>
                <th class="text-center">Fecha Ingreso</th>
                <th class="text-center">Fecha Vence</th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
{/block}