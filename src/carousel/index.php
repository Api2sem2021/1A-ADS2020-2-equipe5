<?php
    $conexao = new PDO('mysql:host=localhost;dbname=bd_pi01',"root","");
	$select = $conexao->prepare("SELECT * FROM arquivos");
	$select->execute();
	$fetch = $select->fetchALL();
	
	foreach ($fetch as $arquivos){
		
		echo 'Nome do produto: '.$arquivos['titulo_produto'].'<br/> &nbsp;
		 Preço: '.$arquivos['preco'].'<br/>
		 <a href="carrinho.php?add=carrinho&id='.$arquivos['id'].'">Adicionar ao carrinho</a><br/>';
	}
?>