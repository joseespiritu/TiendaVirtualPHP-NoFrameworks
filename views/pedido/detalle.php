<h1>Detalle del pedido</h1>

<?php if (isset($pedido)) : ?>
    <h3>Direccion del envio:</h3>
    Provincia: <?= $pedido->provincia ?> <br />
    Ciudad: <?= $pedido->localidad ?> <br />
    Direccion: <?= $pedido->direccion ?> <br />

    <h3>Datos del pedido:</h3>
    Numero de pedido: <?= $pedido->id ?> <br />
    Total a pagar:$ <?= $pedido->coste ?> <br />
    Productos:
    <table>
        <tr>
            <th>Imagen</th>
            <th>Nombre</th>
            <th>Precio</th>
            <th>Unidades</th>
        </tr>
        <?php while ($producto = $productos->fetch_object()) : ?>
            <tr>
                <td>
                    <?php if ($producto->imagen != null) : ?>
                        <img src="<?= BASE_URL ?>uploads/images/<?= $producto->imagen ?>" alt="producto" class="img_Carrito" />
                    <?php else : ?>
                        <img src="<?= BASE_URL ?>assets/img/camiseta.png" alt="producto" class="img_Carrito" />
                    <?php endif; ?>
                </td>
                <td>
                    <a href="<?= BASE_URL ?>producto/ver&id=<?= $producto->id ?>"><?= $producto->nombre ?></a>
                </td>
                <td>
                    <?= $producto->precio ?>
                </td>
                <td>
                    <?= $producto->unidades ?>
                </td>
            </tr>
        <?php endwhile; ?>
    </table>
<?php endif; ?>