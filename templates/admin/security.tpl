{extends "admin/extends/main.tpl"}
{block "content"}
    <form action="security/login" method="post" role="form">
    	<legend>Ingreso al Sistema</legend>

    	<div class="form-group">
    		<label for="username">Usuario</label>
    		<input type="text" class="form-control" name="username" id="username" placeholder="Usuario">
    	<label for="password">Usuario</label>
    		<input type="password" class="form-control" name="password" id="password" placeholder="Contraseña">
    	</div>
    	<button type="submit" class="btn btn-primary">Submit</button>
    </form>
{/block}