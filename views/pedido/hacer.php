<?php if (isset($_SESSION['identity'])) : ?>
    <h1>Hacer pedido</h1>
    <p>
        <a href="<?= BASE_URL ?>carrito/index">Ver los productos y el precio del pedido</a>
    </p>
    <br/>
    <h3>Domicilio para el envio</h3>
    <form action="<?= BASE_URL . 'pedido/add' ?>" method="POST">
        <label for="provincia">Provincia</label>
        <input type="text" name="provincia" require/>
        <label for="ciudad">Cuidad</label>
        <input type="text" name="ciudad" require/>
        <label for="direccion">Direccion</label>
        <input type="text" name="direccion" require/>

        <input type="submit" value="Confirmar pedido"/>
    </form>
<?php else : ?>
    <h1>Necesitas estar identificado</h1>
    <p>Necesitas estar logeado en la web para poder realizar tu pedido</p>
<?php endif; ?>