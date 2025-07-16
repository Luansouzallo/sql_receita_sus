SELECT 
  ano,
  origem,
  ROUND(SUM(valor_atualizado) / 1000000, 2) AS total_milhoes
FROM receita_sus
GROUP BY ano, origem
ORDER BY ano, total_milhoes;
