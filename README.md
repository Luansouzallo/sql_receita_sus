# 📊 Análise da Receita Orçamentária Federal em Saúde Ministerio da Saúde – Brasil (2013–2024)

Este projeto analisa os dados de receita orçamentária da saúde federal no Brasil, com foco no Ministério da Saúde, utilizando SQL em um banco PostgreSQL.

---

## 🧾 Fonte dos dados

Os dados foram obtidos diretamente do [Portal da Transparência](https://portaldatransparencia.gov.br/receitas/consulta), na seção de **Receitas Orçamentárias** da União.

- A extração considerou os anos de **2013 a 2024**
- Filtrou-se as receitas vinculadas ao **Ministério da Saúde**
- Os dados foram exportados em `.csv`, tratados no Google Sheets e importados para PostgreSQL

---

## 🧰 Tecnologias utilizadas

- PostgreSQL
- pgAdmin
- Google Sheets (para limpeza do `.csv`)
- SQL puro (sem bibliotecas ou ferramentas externas)

---

## 📌 Objetivos da análise

- Avaliar a evolução da receita arrecadada para a saúde pública entre 2013 e 2024
- Comparar a receita **prevista na LOA** com a **receita efetivamente arrecadada**
- Identificar as **principais origens da receita**
- Medir a **variação percentual ano a ano**
- Preparar os dados para visualizações futuras

---

## 🧱 Estrutura da tabela `receita_sus`

```sql
CREATE TABLE receita_sus (
  ano INT,
  orgao_superior TEXT,
  orgao TEXT,
  unidade_gestora TEXT,
  categoria TEXT,
  origem TEXT,
  especie TEXT,
  detalhamento TEXT,
  valor_loa NUMERIC,
  valor_atualizado NUMERIC
);
```

---

## 🔍 Consultas principais

As consultas estão disponíveis na pasta [`/sql`](./sql) e listadas abaixo:

1. Receita total arrecadada por ano
2. Receita prevista (LOA) vs executada
3. Receita por origem
4. Evolução da receita por origem ao longo do tempo
5. Evolução da receita por categoria econômica
6. Análise da variação anual da arrecadação
7. Variação percentual ano a ano (alternativa)

---

## 📈 Próximos passos

- Criar visualizações com Power BI, Google Data Studio ou Python (Seaborn/Matplotlib)
- Relacionar com despesas (`despesa_sus`) e execução física de programas
- Calcular indicadores por população ou por região (com dados do IBGE)

---

## 📎 Licença

Uso livre para fins educacionais e projetos de portfólio. Cite este repositório se reutilizar.

---

## 👤 Autor

**Luan Lopes Beltrani de Souza**  
[LinkedIn](https://www.linkedin.com/in/luan-lopes-beltrani-de-souza-2a95b1191/)
