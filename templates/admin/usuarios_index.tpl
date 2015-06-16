{extends "admin/extends/main.tpl"}
{block "content"}
    <div class="jumbotron">
        <div class="container">
            <h1>Usuarios</h1>

            <form action="/admin/usuarios/add" method="post" role="form">
                <legend>Nuevo Usuario</legend>
                <div class="form-group">
                    <label for="usuario"></label>
                    <input type="text" class="form-control" name="usuario" id="usuario"
                           placeholder="Nombre del usuario">
                    <label for="contrasena"></label>
                    <input type="text" class="form-control" name="contrasena" id="password"
                           placeholder="Descripción del usuario">
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
            {foreach $usuarios as $usuario}
                <tr>
                    <td>
                        {$usuario['primer_nombre']}
                    </td>
                    <td>
                        {$usuario['segundo_nombre']}
                    </td>
                    <td>
                        {$usuario['primer_apellido']}
                    </td>
                    <td>
                        {$usuario['segundo_apellido']}
                    </td>
                    <td>
                        {$usuario['sexo']}
                    </td>
                    <td>
                        {$usuario['edad']}
                    </td>
                    <td>
                        {$usuario['direccion']}
                    </td>
                    <td>
                        {$usuario['numero_telefono']}
                    </td>
                </tr>
            {/foreach}
        </tbody>
    </table>
{/block}