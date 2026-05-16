# Análise do Comportamento de Compras dos Clientes

Projeto de análise de dados que investiga o comportamento de compra de 3.900 clientes, com o objetivo de identificar padrões de consumo, segmentar perfis de clientes e gerar insights estratégicos para apoiar decisões de marketing, fidelização e posicionamento de produtos. O projeto foi desenvolvido utilizando Python, SQLite e Microsoft Power BI.

---

## Objetivo do Projeto

Uma empresa do setor de varejo deseja compreender melhor o comportamento de seus clientes para:

* Aumentar as vendas
* Melhorar a satisfação dos consumidores
* Incentivar compras recorrentes
* Otimizar estratégias de marketing e produtos

A pergunta central do projeto é:

> Como a empresa pode utilizar os dados de compras para identificar tendências, melhorar o engajamento dos clientes e otimizar suas estratégias de marketing e produtos?

O problema de negócio e os entregáveis incluem preparação de dados em Python, análises em SQL, dashboard em Power BI e apresentação executiva. 

---

## Tecnologias Utilizadas

* Python
* Pandas
* NumPy
* SQLite
* Microsoft Power BI
* Jupyter Notebook
* GitHub

---

## Estrutura do Projeto

```text
analise-comportamento-dos-clientes/
│
├── Dashboard-Apresentação/
│   ├── Analise_Comportamento_Clientes.pptx                 
│   └── Dashboard_análise_compras.pbix         
│            
├── Data-Notebooks/
│   ├── Anaáise_exploratoria_compras.ipynb
│   └── customer_shopping_behavior.csv
│
├── reports/
│   ├── Análise_Comportamento_Compras_Clientes.pdf
│   └── Problema de Negócio.pdf
│
├── sql/
│   └── Consultas_SQL.sql
│
├── LICENSE
└── README.md
```

---

## Conjunto de Dados

* **3.900 registros**
* **18 colunas**
* **37 valores ausentes** na variável `review_rating`

### Principais Variáveis

**Dados Demográficos**

* Idade
* Gênero
* Localização
* Status de assinatura

**Detalhes da Compra**

* Produto
* Categoria
* Valor da compra
* Estação do ano
* Tamanho
* Cor

**Comportamento de Compra**

* Desconto aplicado
* Compras anteriores
* Frequência de compra
* Avaliação
* Tipo de envio



---

## Preparação dos Dados (Python)

Etapas realizadas:

1. Importação e exploração inicial (`df.info()`, `df.describe()`)
2. Tratamento de valores ausentes com mediana por categoria
3. Padronização dos nomes das colunas em `snake_case`
4. Engenharia de atributos:

   * `age_group`
   * `purchase_frequency_days`
5. Remoção de variáveis redundantes
6. Exportação para banco de dados SQLite



---

## Análises em SQL

As principais consultas desenvolvidas incluem:

1. Receita por gênero
2. Clientes de alto gasto com desconto
3. Top 5 produtos mais bem avaliados
4. Comparação por tipo de envio
5. Assinantes vs. não assinantes
6. Produtos dependentes de desconto
7. Segmentação de clientes
8. Top 3 produtos por categoria
9. Compradores recorrentes e assinaturas
10. Receita por faixa etária



---

## Principais Insights

### Receita por Gênero

* Masculino: **R$ 157.890**
* Feminino: **R$ 75.191**
* Clientes masculinos geram aproximadamente **2,1 vezes mais receita**

### Tipo de Envio

* Envio expresso apresenta ticket médio superior ao padrão

### Assinantes vs Não Assinantes

* Não assinantes geram **2,7 vezes mais receita total**
* Gasto médio é praticamente igual entre os grupos

### Segmentação de Clientes

* **Fiéis:** 3.116 clientes (79,9%)
* **Recorrentes:** 701 clientes (18,0%)
* **Novos:** 83 clientes (2,1%)

### Faixa Etária com Maior Receita

* Young Adults lideram em receita total



---

## Recomendações de Negócio

* Incentivar adesão ao programa de assinaturas
* Implementar programas de fidelidade
* Revisar política de descontos para preservar margens
* Destacar produtos com melhores avaliações
* Direcionar campanhas para grupos com maior geração de receita



---

## Dashboard no Power BI

O projeto inclui um dashboard interativo com:

* KPIs principais
* Segmentação de clientes
* Receita por gênero
* Receita por faixa etária
* Produtos mais bem avaliados
* Dependência de descontos

---

# Como Executar o Projeto

## 1. Clonar o Repositório

```bash
git clone https://github.com/seu-usuario/Analise-Comportamento-dos-Clientes.git
cd Analise-Comportamento-dos-Clientes
````

## 2. Abrir os Arquivos

Após clonar o repositório, você poderá acessar:

* `Data-Notebooks/analise_exploratoria_compras.ipynb` — Notebook com limpeza e análise dos dados em Python.
* `SQL/consultas_SQL.sql` — Consultas SQL utilizadas na análise.
* `Dashboard-Apresentação/Dashboard_análise_compras.pbix` — Dashboard interativo no Power BI.
* `Reports/Análise_Comportamento_Compras_Clientes.pdf` — Relatório final do projeto.
* `Dashboard-Apresentação/Analise_Comportamento_Clientes.pptx` — Apresentação executiva.
* `Reports/Problema de Negócio.pdf` — Descrição do problema de negócio.

## 3. Ferramentas Necessárias

Para visualizar e executar os arquivos, recomenda-se:

* Python + Jupyter Notebook
* SQLite
* Microsoft Power BI Desktop
* Leitor de PDF
* Microsoft PowerPoint ou equivalente

---

## Resultados Esperados

Ao final do projeto, é possível:

* Identificar perfis de clientes mais lucrativos
* Entender fatores que influenciam compras recorrentes
* Avaliar impacto de descontos
* Direcionar estratégias de marketing
* Apoiar decisões baseadas em dados

---

## Autor

**Henzo Azambuja**

* [GitHub](https://github.com/HenzoAzambuja)
* [LinkedIn](https://www.linkedin.com/in/henzo-azambuja-a3471739a/)

---

## Licença

Este projeto está disponível para fins educacionais e de portfólio.

