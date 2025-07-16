SELECT 
  origem,
  ROUND(SUM(valor_atualizado) / 1000000, 2) AS total_milhoes
FROM receita_sus
GROUP BY origem
ORDER BY total_milhoes DESC;
