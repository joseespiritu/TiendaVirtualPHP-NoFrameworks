<?php if (isset($product)) : ?>
    <h1><?= $product->nombre ?></h1>
    <div id="detail-product">
        <div class="image">
            <?php if ($product->imagen != null) : ?>
                <img src="<?= BASE_URL ?>uploads/images/<?= $product->imagen ?>" alt="producto" />
            <?php else : ?>
                <img src="<?= BASE_URL ?>assets/img/camiseta.png" alt="producto" />
            <?php endif; ?>
        </div>
        <div class="data">
            <p class="description"><?= $product->descripcion ?></p>
            <p class="price"><?= $product->precio ?>$</p>
            <a href="#" class="button">Comprar</a>
        </div>
    </div>
<?php else : ?>
    <h1>El producto no existe</h1>
<?php endif; ?>