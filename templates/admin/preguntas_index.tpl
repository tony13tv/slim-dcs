{extends "admin/extends/main.tpl"}
{block "content"}
    <div class="jumbotron">
        <div class="container">
            <h1>Preguntas</h1>

            <form action="/admin/tbl_roles/add" method="post" role="form">
                <legend>Nueva Pregunta</legend>
                <div class="form-group">
                    <label for="role_name"></label>
                    <input type="text" class="form-control" name="role_name" id="role_name"
                           placeholder="Nombre del Rol">
                    <label for="role_description"></label>
                    <input type="text" class="form-control" name="role_description" id="role_description"
                           placeholder="Descripción del Rol">
                </div>
                <button type="submit" class="btn btn-primary">Crear</button>
            </form>
        </div>
    </div>
    <table class="table table-striped table-hover">
        <thead>
            <tr>
                <th>Nombre del Rol</th>
                <th>Descripción del Rol</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            {foreach $preguntas as $pregunta}
                <tr>
                    <td>
                        {$pregunta['pregunta']}
                    </td>
                    <td>
                        {$pregunta['creado_por']}
                    </td>
                    <td>
                        {$pregunta['fecha_creacion']}
                    </td>
                    <td>
                        {$pregunta['fecha_modificacion']}
                    </td>
                    <td>
                        {$pregunta['modificado_por']}
                    </td>
                </tr>
            {/foreach}
        </tbody>
    </table>
{/block}