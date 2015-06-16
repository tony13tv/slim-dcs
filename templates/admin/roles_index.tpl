{extends "admin/extends/main.tpl"}
{block "content"}
    <div class="jumbotron">
        <div class="container">
            <h1>Roles</h1>

            <form action="/admin/tbl_roles/add" method="post" role="form">
                <legend>Nuevo Rol</legend>
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
            {foreach $roles as $rol}
                <tr>
                    <td>
                        {$rol['rol']}
                    </td>
                    <td>
                        {$rol['descripcion']}
                    </td>
                    <td>
                        {$rol['fecha_creacion']}
                    </td>
                    <td>
                        {$rol['fecha_modificacion']}
                    </td>
                    <td>
                        {$rol['modificado_por']}
                    </td>
                </tr>
            {/foreach}
        </tbody>
    </table>
{/block}