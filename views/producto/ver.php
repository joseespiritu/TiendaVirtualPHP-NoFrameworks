<?php if (isset($product)) : ?>
    <h1><?= $product->nombre ?></h1>
    <?php if ($product->imagen != null) : ?>
        <img src="<?= BASE_URL ?>uploads/images/<?= $product->imagen ?>" alt="producto" />
    <?php else : ?>
        <img src="<?= BASE_URL ?>assets/img/camiseta.png" alt="producto" />
    <?php endif; ?>
    <p><?= $product->descripcion ?></p>
    <p><?= $product->precio ?></p>
    <a href="#" class="button">Comprar</a>
<?php else : ?>
    <h1>El producto no existe</h1>
<?php endif; ?>