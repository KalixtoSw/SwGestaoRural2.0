/*SELECT * FROM movimentacao m INNER JOIN movimentacao_produto mp ON m.mov_id = mp.mov_id INNER JOIN produto p ON mp.prd_idproduto = p.prd_idproduto;


SELECT p.prd_idproduto, p.prd_nome, p.prd_fabricante, p.prd_tipo, p.prd_status,
      m.mov_descricao,m.mov_tipo,m.mov_datamov,m.mov_origem, mp.mp_qtdUnit,mp.mp_qtdContabil,mp.mp_precoCompra,mp.mp_precoTotal
FROM movimentacao m INNER JOIN movimentacao_produto mp ON m.mov_id = mp.mov_id INNER JOIN produto p ON mp.prd_idproduto = p.prd_idproduto;*/


SELECT p.prd_idproduto,pe.prde_Id, p.prd_nome,pe.prde_descricao AS 'Embalagem', p.prd_fabricante, p.prd_tipo, p.prd_status, CONCAT(p.prd_nome , ' - ' , pe.prde_descricao) AS 'Produto_Embalagem',
      m.mov_tipo, SUM(mp.mp_qtdUnit),SUM( mp.mp_qtdContabil) AS 'Ctrl Estoque', AVG(mp.mp_precoCompra) AS 'Preco Medio', SUM(mp.mp_precoTotal) AS 'Valor Geral'
FROM movimentacao m INNER JOIN movimentacao_produto mp ON m.mov_id = mp.mov_id INNER JOIN produto p ON mp.prd_idproduto = p.prd_idproduto INNER JOIN produto_embalagem pe ON pe.prde_Id = mp.prde_Id
  GROUP BY p.prd_idproduto, p.prd_nome,pe.prde_descricao;
