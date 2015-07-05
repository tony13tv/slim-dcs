{extends "admin/extends/main.tpl"}
{block "content"}
<div class="jumbotron">
    <div class="container">
        <h1>Servicios</h1>

        <form action="/admin/servicios/add" method="post" role="form">
            <legend>Nuevo Servicio</legend>
            <div class="form-group clearfix">
                <div class="col-xs-6">
                    <label for="servicio_nombre">Servicio</label>
                    <input type="text" class="form-control" name="servicio_nombre" id="Servicio"
                           placeholder="Descripcion del Servicio">
                </div>
                <div class="col-xs-6">
                    <label for="precio_servicio">Precio</label>
                    <input type="text" class="form-control" name="precio_servicio" id="Precio"
                           placeholder="Precio del Servicio">
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Crear</button>
        </form>
    </div>
</div>
<table class="table table-striped table-hover" data-toggle="table" data-ajax="dataTable/servicios"
       data-server-side="true" data-processing="true"
       data-columns='{literal}[{"data": "tipo_servicio"},{"data": "precio"}]{/literal}'>
    <thead>

    <tr>
        <th>Servicio</th>
        <th>Precio</th>
    </tr>
    </thead>
    <tbody>

    </tbody>
</table>
{/block}