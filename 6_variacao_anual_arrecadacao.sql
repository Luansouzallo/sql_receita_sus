WITH totais AS (
  SELECT ano, SUM(valor_atualizado) AS total
  FROM receita_sus
  GROUP BY ano
)
SELECT 
  ano,
  ROUND(total / 1000000, 2) AS total_milhoes,
  ROUND((total - LAG(total) OVER (ORDER BY ano)) / NULLIF(LAG(total) OVER (ORDER BY ano), 0) * 100, 2) AS variacao_pct
FROM totais;
