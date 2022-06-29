USE gr_desenv;

DELETE FROM movimentacao;

USE gr_desenv;

DELETE FROM movimentacao_produto;

USE gr_desenv;

UPDATE nota_fiscal 
SET nf_procEstoque = 0 ;


USE gr_desenv;
DELETE FROM nota_fiscal_item ;

USE gr_desenv;
DELETE FROM nota_fiscal;





USE gr_desenv;
DELETE FROM Plantio_Talhao WHERE pltl_id > 0 ;

USE gr_desenv;
UPDATE Talhao SET tbl_status = 'DISPONIVEL' WHERE tbl_idTalhao > 0; 




SELECT * FROM nota_fiscal nf WHERE nf.nf_id NOT IN (SELECT nfi.nf_id FROM nota_fiscal_item nfi);

DELETE FROM nota_fiscal WHERE nf_id NOT IN (SELECT nf_id FROM nota_fiscal_item);