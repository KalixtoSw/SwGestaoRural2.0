USE gr_desenv;

DELETE FROM movimentacao;

USE gr_desenv;

DELETE FROM movimentacao_produto;

USE gr_desenv;

UPDATE nota_fiscal 
SET nf_procEstoque = 0 ;


USE gr_desenv;
DELETE FROM nota_fiscal_item WHERE prd_idproduto IS NULL;
