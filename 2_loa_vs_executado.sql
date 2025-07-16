SELECT 
  ano,
  ROUND(SUM(valor_loa) / 1000000, 2) AS previsto_milhoes,
  ROUND(SUM(valor_atualizado) / 1000000, 2) AS executado_milhoes,
  ROUND((SUM(valor_atualizado) - SUM(valor_loa)) / NULLIF(SUM(valor_loa), 0) * 100, 2) AS variacao_percentual
FROM receita_sus
GROUP BY ano
ORDER BY ano;
