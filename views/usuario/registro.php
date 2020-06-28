<h1>Registrarse</h1>

<?php if(isset($_SESSION['register']) && $_SESSION['register'] == 'complete'): ?>
    <strong class="alert_green">Registro completado correctamente</strong>
<?php elseif(isset($_SESSION['register']) && $_SESSION['register'] == 'failed'): ?>
    <strong class="alert_red">Registro fallido, Introduce bien los datos</strong>
<?php endif; ?>

<?php Utils::deleteSession('register'); ?>


<form action="<?=BASE_URL?>usuario/save" method="POST">
    <label for="nombre">Nombre:</label>
    <input type="text" name="nombre" require/>

    <label for="apellidos">Apellidos:</label>
    <input type="text" name="apellidos" require/>

    <label for="email">Email:</label>
    <input type="email" name="email" require/>
    
    <label for="password">Contraseña:</label>
    <input type="password" name="password" require/>

    <input type="submit" value="Registrarse"/>
</form>