{extends "admin/extends/main.tpl"}
{block "content"}
    <div class="jumbotron">
        <div class="container">
            <h1>Pacientes</h1>

            <form action="/admin/pacientes/add" method="post" role="form">
                <legend>Nuevo Paciente</legend>
                <div class="form-group clearfix">
                    <div class="col-xs-6">
                        <label for="pacient_firstname">Primer Nombre</label>
                        <input type="text" class="form-control" name="pacient_firstname" id="Paciente_firstname"
                               placeholder="Primer Nombre">
                    </div>
                    <div class="col-xs-6">
                        <label for="pacient_name">Segundo Nombre</label>
                        <input type="text" class="form-control" name="pacient_middlename" id="Paciente_middlename"
                               placeholder="Segundo Nombre">
                    </div>
                    <div class="col-xs-6">
                        <label for="pacient_name">Primer Apellido</label>
                        <input type="text" class="form-control" name="pacient_surname" id="Paciente_surname"
                               placeholder="Primer Apellido">
                    </div>
                    <div class="col-xs-6">
                        <label for="pacient_name">Segundo Apellido</label>
                        <input type="text" class="form-control" name="pacient_lastname" id="Paciente_lastname"
                               placeholder="Segundo Apellido">
                    </div>
                    <div class="col-xs-6">
                        <label for="paciente_gender">Género</label>
                        <input type="text" class="form-control" name="paciente_gender" id="paciente_gender"
                               placeholder="Género">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Crear</button>
            </form>
        </div>
    </div>
    <table class="table table-striped table-hover" data-toggle="table" data-ajax="dataTable/pacientes" data-server-side="true" data-processing="true" data-columns='{literal}[{"data": "primer_nombre"},{"data": "segundo_nombre"},{"data": "primer_apellido"},{"data": "segundo_apellido"},{"data": "identificacion"},{"data": "sexo"}]{/literal}'>
        <thead>
            <tr>
                <th colspan="4">Nombre del Paciente</th>
                <th rowspan="2">Identificación</th>
                <th rowspan="2">Sexo</th>
                <!--th rowspan="2">Acciones</th-->
            </tr>
            <tr>
                <th>Primer Nombre</th>
                <th>Segundo Nombre</th>
                <th>Primer Apellido</th>
                <th>Segundo Apellido</th>
            </tr>
        </thead>
        <tbody>
            {foreach $pacientes as $paciente}
                <tr>
                    <td>
                        {$paciente['primer_nombre']}
                    </td>
                    <td>
                        {$paciente['segundo_nombre']}
                    </td>
                    <td>
                        {$paciente['primer_apellido']}
                    </td>
                    <td>
                        {$paciente['segundo_apellido']}
                    </td>
                    <td>
                        {$paciente['identificacion']}
                    </td>
                    <td>
                        {$paciente['sexo']}
                    </td>
                </tr>
            {/foreach}
        </tbody>
    </table>
{/block}