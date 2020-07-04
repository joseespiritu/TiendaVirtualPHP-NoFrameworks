<h1>Mis pedidos</h1>
<table>
    <tr>
        <th>N° Pedido</th>
        <th>Coste</th>
        <th>Fecha</th>
    </tr>
    <?php while($ped = $pedidos->fetch_object()): ?>
        <tr>
            <td>
                <a href="<?=BASE_URL?>pedido/detalle&id=<?=$ped->id?>"><?=$ped->id?></a>
            </td>
            <td>
                $<?=$ped->coste?>
            </td>
            <td>
                <?=$ped->fecha?>
            </td>
        </tr>
    <?php endwhile; ?>
</table>