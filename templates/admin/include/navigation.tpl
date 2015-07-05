<div class="navbar navbar-inverse">
    <a class="navbar-brand" href="#">DCS</a>
    <ul class="nav navbar-nav">
        <li class="active">
            <a href="#">Home</a>
        </li>
        {if isset($session)}
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    Mantenimiento
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                    <li role="presentation" class="dropdown-header">Clinica</li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="admin/pacientes">Pacientes</a></li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="admin/resposable">Responsable</a></li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="admin/empleados">Empleados</a></li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="admin/tipo_personal">Tipo de Personal</a></li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="admin/inventario">Inventario</a></li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="admin/proveedores">Proveedores</a></li>
                    <li role="presentation" class="divider"></li>
                    <li role="presentation" class="dropdown-header">Usuarios</li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="admin/usuarios">Usuarios</a></li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="admin/preguntas">Preguntas</a></li>
                    <li role="presentation" class="divider"></li>
                    <li role="presentation" class="dropdown-header">ACL</li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="admin/roles">Roles</a></li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="admin/objetos">Objectos</a></li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="admin/roles_objeto">Roles-Objetos</a></li>
                    <li role="presentation" class="divider"></li>
                    <li role="presentation" class="dropdown-header">Sistema</li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="admin/parametros">Parámetros</a></li>

                </ul>
            </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                Transacciones
                <span class="caret"></span>
            </a>
            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                <li role="presentation"><a role="menuitem" tabindex="-1" href="admin/servicios">Servicios</a></li>
                </ul>
        </li>
            <li>
                <a href="security/logout">Cerrar Sesión</a>
            </li>
        {else}
            <li>
                <a href="security/login">Iniciar Sesión</a>
            </li>
        {/if}
    </ul>
</div>