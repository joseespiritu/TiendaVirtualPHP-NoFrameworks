<?php 

class pedidoController {
    public function index(){
        require_once 'views/pedido/hacer.php';
    }

    public function add(){
        var_dump($_POST);
    }
}

?>