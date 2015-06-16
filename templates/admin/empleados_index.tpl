{extends "admin/extends/main.tpl"}
{block "content"}
    <div class="jumbotron">
        <div class="container">
            <h1>Empleados</h1>

            <form action="/admin/empleados/add" method="post" role="form">
                <legend>Nuevo Empleado</legend>
                <div class="form-group">
                    <label for="pacient_name"></label>
                    <input type="text" class="form-control" name="pacient_name" id="empleadoe_name"
                           placeholder="Nombre del empleado">
                    <label for="empleado_description"></label>
                    <input type="text" class="form-control" name="empleado_description" id="empleado_description"
                           placeholder="Descripción del empleado">
                </div>
                <button type="submit" class="btn btn-primary">Crear</button>
            </form>
        </div>
    </div>
    <table class="table table-striped table-hover">
        <thead>
            <tr>
                <th class="text-center" colspan="4">Nombre Completo</th>
                <th class="text-center" rowspan="2">Sexo</th>
                <th class="text-center" rowspan="2">Edad</th>
                <th class="text-center" rowspan="2">Dirección</th>
                <th class="text-center" rowspan="2">Número de Teléfono</th>
            </tr>
            <tr>
                <th>Primer Nombre</th>
                <th>Segundo Nombre</th>
                <th>Primer Apellido</th>
                <th>Segundo Apellido</th>
            </tr>
        </thead>
        <tbody>
            {foreach $empleados as $empleado}
                <tr>
                    <td>
                        {$empleado['primer_nombre']}
                    </td>
                    <td>
                        {$empleado['segundo_nombre']}
                    </td>
                    <td>
                        {$empleado['primer_apellido']}
                    </td>
                    <td>
                        {$empleado['segundo_apellido']}
                    </td>
                    <td>
                        {$empleado['sexo']}
                    </td>
                    <td>
                        {$empleado['edad']}
                    </td>
                    <td>
                        {$empleado['direccion']}
                    </td>
                    <td>
                        {$empleado['numero_telefono']}
                    </td>
                </tr>
            {/foreach}
        </tbody>
    </table>
{/block}