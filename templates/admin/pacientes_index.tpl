{extends "admin/extends/main.tpl"}
{block "content"}
    <div class="jumbotron">
        <div class="container">
            <h1>Pacientes</h1>

            <form action="/admin/pacientes/add" method="post" role="form">
                <legend>Nuevo Paciente</legend>
                <div class="form-group">
                    <label for="pacient_name"></label>
                    <input type="text" class="form-control" name="pacient_name" id="Pacientee_name"
                           placeholder="Nombre del Paciente">
                    <label for="paciente_description"></label>
                    <input type="text" class="form-control" name="paciente_description" id="paciente_description"
                           placeholder="Descripción del Paciente">
                </div>
                <button type="submit" class="btn btn-primary">Crear</button>
            </form>
        </div>
    </div>
    <table class="table table-striped table-hover">
        <thead>
            <tr>
                <th>Nombre del Paciente</th>
                <th>Descripción del Paciente</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            {foreach $pacientes as $paciente}
                <tr>
                    <td>
                        {$paciente['Paciente']}
                    </td>
                    <td>
                        {$paciente['descripcion']}
                    </td>
                    <td>
                        {$paciente['fecha_creacion']}
                    </td>
                    <td>
                        {$paciente['fecha_modificacion']}
                    </td>
                    <td>
                        {$paciente['modificado_por']}
                    </td>
                </tr>
            {/foreach}
        </tbody>
    </table>
{/block}