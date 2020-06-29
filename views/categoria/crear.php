<h1>Crear nueva categoria</h1>

<form action="<?=BASE_URL?>categoria/save" method="POST">
    <label for="nombre">Nombre</label>
    <input type="text" name="nombre" require/>

    <input type="submit" value="Guardar"/>
</form>