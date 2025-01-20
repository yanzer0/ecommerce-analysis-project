# 📊 Análise E-commerce Brasileiro - Olist

## 🎯 Sobre o Projeto
Análise completa de dados do e-commerce brasileiro utilizando dados públicos da Olist, focando em padrões de vendas, comportamento do cliente e performance de produtos através de análises estatísticas e visualizações de dados.

## 🎯 Objetivos
- Analisar padrões de vendas e comportamento de compra
- Identificar concentrações geográficas e oportunidades regionais
- Avaliar performance de categorias e produtos
- Gerar insights acionáveis para o negócio

## 🛠️ Tecnologias Utilizadas
- Python 3.11
- MySQL para armazenamento
- Pandas para manipulação de dados
- Matplotlib e Seaborn para visualizações
- Jupyter para análises interativas
- GitHub para versionamento de código

## 📈 Principais Descobertas

### Visão Geral
- Total de pedidos: 96.478
- Receita total: R$ 15,42 milhões
- Ticket médio: R$ 139,93
- Frete médio: R$ 19,95

### Análise por Estado
- SP: 40.501 pedidos (R$ 5,77M)
- RJ: 12.350 pedidos (R$ 2,06M)
- MG: 11.354 pedidos (R$ 1,82M)
- RS: 5.345 pedidos (R$ 861K)
- PR: 4.923 pedidos (R$ 782K)

### Análise por Categoria
- Beleza e Saúde: R$ 1,41M (8.647 pedidos)
- Relógios e Presentes: R$ 1,26M (5.495 pedidos)
- Cama, Mesa e Banho: R$ 1,23M (9.272 pedidos)
- Esporte e Lazer: R$ 1,12M (7.530 pedidos)
- Informática Acessórios: R$ 1,03M (6.530 pedidos)

## 🔍 Insights e Recomendações

### Pontos Positivos
1. Crescimento de 673% entre Jan/2017 e Ago/2018
2. Receita média mensal de R$ 1,07M nos últimos 6 meses
3. Operação consolidada em 2018 com volumes consistentes
4. Diversificação de categorias com mix equilibrado
5. Alto potencial de expansão geográfica

### Pontos de Atenção
1. 67% das vendas concentradas no Sudeste
2. Queda de 30% nas vendas aos fins de semana
3. Alto custo de frete em regiões distantes
4. Baixa recorrência de compra dos clientes
5. Sazonalidade forte com queda no último trimestre

## 📁 Estrutura do Projeto
ecommerce-analysis/
├── data/
│   ├── processed/  # Dados processados
│   └── raw/        # Dados originais Olist
├── docs/           # Documentação
│   ├── setup.md    # Configuração do ambiente
│   ├── database.md # Estrutura do banco
│   ├── analysis.md # Análises realizadas
│   └── insights.md # Conclusões
├── notebooks/      # Análises Jupyter
├── sql/           # Scripts SQL
└── src/           # Códigos fonte

## ▶️ Como Executar

1. Clone o repositório
git clone https://github.com/yanzer0/ecommerce-analysis-project

2. Instale as dependências
pip install -r requirements.txt

3. Configure o banco de dados MySQL
- Crie um banco chamado 'olist_ecommerce'
- Execute os scripts da pasta 'sql'
- Configure suas credenciais no arquivo .env

4. Execute os notebooks na ordem numérica
- 01_import_data.ipynb
- 02_preparacao_dados.ipynb
- ...
- 08_analise_final.ipynb

## 👤 Autor
Yan Botossi Galasso

## 📜 Licença
Este projeto está sob a licença MIT.
