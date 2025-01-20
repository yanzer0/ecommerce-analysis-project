# Configuração do Ambiente

## Pré-requisitos
- Python 3.11
- MySQL Server
- Git

## Estrutura do Projeto
ECOMMERCE-ANALYSIS/
├── data/
│   ├── processed/  # Dados processados
│   └── raw/        # Dados originais Olist
├── docs/           # Documentação
├── notebooks/      # Análises Jupyter
├── sql/           # Scripts SQL
└── src/           # Códigos fonte

## Instalação
1. Clone o repositório
2. Crie ambiente virtual:
conda create -n ecommerce_env python=3.11
conda activate ecommerce_env

3. Instale dependências:
pip install -r requirements.txt

## Configuração Banco de Dados
1. Configure MySQL Server
2. Execute script sql/01_create_tables.sql
3. Execute notebook 01_import_data.ipynb