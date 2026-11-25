# TECHSTORE — BANCO DE DADOS

### Sistema de Gestão Comercial, Catálogo e Pedidos (`loja_tech`)

**Instituição:** Escola SENAI Suíço-Brasileira  
**Professor:** Átila  
**Disciplina:** Banco de Dados  
**Autora:** Maria Gabriela 
**Turma:** SEDUC 2  
**Data:** 25/11/2026  

---

## 1. Apresentação do Projeto

Este projeto consiste na aplicação prática de consultas SQL e rotinas armazenadas em um Banco de Dados Relacional chamado `loja_tech`, desenvolvido e testado no MySQL Workbench.

A atividade tem como objetivo consolidar conhecimentos sobre estruturação de bancos de dados, consultas e manipulação de informações, relacionamentos entre tabelas e criação de Stored Procedures parametrizadas para o gerenciamento operacional da loja de tecnologia TechStore.

## 2. Escopo Operacional

### Gestão de Clientes
Cadastro centralizado de consumidores, controle de dados de contato, como e-mail e telefone, e histórico de compras realizadas na plataforma.

### Catálogo de Produtos e Categorias
Organização de produtos tecnológicos por categorias, controle de preços, buscas textuais e monitoramento da disponibilidade em estoque.

### Controle de Pedidos e Faturamento
Acompanhamento do status das vendas, associação entre clientes e pedidos e cálculo do faturamento bruto.

### Automação com Stored Procedures
Utilização de procedimentos armazenados para realizar consultas, inserções, atualizações e contagens de registros diretamente no servidor MySQL.

## 3. Estrutura do Banco de Dados

O banco de dados `loja_tech` é composto pelas seguintes tabelas:

| Tabela | Finalidade |
|---|---|
| `categorias` | Armazenar as categorias dos produtos. |
| `produtos` | Armazenar informações dos produtos e seus estoques. |
| `clientes` | Armazenar os dados dos consumidores. |
| `pedidos` | Registrar os pedidos realizados pelos clientes. |
| `itens_pedido` | Registrar os produtos e quantidades de cada pedido. |
| `log_operacoes` | Registrar informações sobre operações realizadas. |

## 4. Resultados das Queries

### Resultado #1 — Listagem Básica de Clientes

Exibe somente o nome e o e-mail dos clientes cadastrados.

| Nome | E-mail |
|---|---|
| Ana Silva | ana.silva@email.com |
| Carlos Eduardo Santos | carlos.santos@email.com |
| Beatriz Almeida Costa | beatriz.costa@email.com |
| Lucas Oliveira Pereira | lucas.pereira@email.com |
| Fernanda Souza Lima | fernanda.lima@email.com |

### Resultado #2 — Produtos Abaixo de R$ 500,00

Apresenta os produtos com preço inferior ao valor definido na consulta.

| Nome | Preço (R$) |
|---|---:|
| Monitor Samsung T350 22" Full HD | 489,90 |
| Mouse Logitech G203 RGB | 149,90 |
| Teclado Mecânico Redragon Kumara | 249,90 |
| Headset Gamer HyperX Cloud Stinger | 329,90 |
| SSD Kingston NV2 1TB NVMe | 419,90 |

### Resultado #3 — Pedidos Pendentes de Pagamento

Apresenta todos os pedidos que possuem status pendente.

| ID Pedido | ID Cliente | Data do Pedido | Status | Valor Total (R$) |
|---:|---:|---|---|---:|
| 2 | 2 | 2026-11-11 | pendente | 899,90 |
| 3 | 1 | 2026-11-14 | pendente | 579,80 |
| 5 | 4 | 2026-11-16 | pendente | 419,90 |

### Resultado #4 — Catálogo Ordenado por Maior Preço

Exibe o nome e o preço dos produtos em ordem decrescente de valor.

| Nome | Preço (R$) |
|---|---:|
| Notebook Lenovo IdeaPad Gaming | 4.299,00 |
| Notebook Dell Inspiron 15 | 3.499,90 |
| Monitor LG UltraGear 24" 144Hz | 899,90 |
| Monitor Samsung T350 22" Full HD | 489,90 |
| SSD Kingston NV2 1TB NVMe | 419,90 |
| Headset Gamer HyperX Cloud Stinger | 329,90 |
| Teclado Mecânico Redragon Kumara | 249,90 |
| Mouse Logitech G203 RGB | 149,90 |

### Resultado #5 — Busca Textual por "Monitor"

Localiza produtos cujo nome contém a palavra Monitor.

| ID Produto | Nome | Preço (R$) |
|---:|---|---:|
| 3 | Monitor LG UltraGear 24" 144Hz | 899,90 |
| 4 | Monitor Samsung T350 22" Full HD | 489,90 |

### Resultado #6 — Periféricos com Estoque Acima de 40 Unidades

Apresenta os produtos da categoria Periféricos que possuem estoque superior a 40 unidades.

| Nome | Estoque |
|---|---:|
| Mouse Logitech G203 RGB | 65 |
| Teclado Mecânico Redragon Kumara | 50 |

### Resultado #7 — Contagem Total de Clientes

Apresenta a quantidade total de clientes cadastrados.

| Total de Clientes |
|---:|
| 5 |

### Resultado #8 — Faturamento Bruto Total

Calcula a soma dos valores dos pedidos registrados.

| Faturamento Bruto (R$) |
|---:|
| 10.338,30 |

### Resultado #9 — Catálogo de Produtos e Categorias

Apresenta os produtos associados às suas respectivas categorias, utilizando INNER JOIN.

| Produto | Categoria |
|---|---|
| Notebook Dell Inspiron 15 | Notebooks |
| Notebook Lenovo IdeaPad Gaming | Notebooks |
| Monitor LG UltraGear 24" 144Hz | Monitores |
| Monitor Samsung T350 22" Full HD | Monitores |
| Mouse Logitech G203 RGB | Periféricos |
| Teclado Mecânico Redragon Kumara | Periféricos |
| Headset Gamer HyperX Cloud Stinger | Periféricos |
| SSD Kingston NV2 1TB NVMe | Hardware |

### Resultado #10 — Pedidos da Cliente Ana Silva

Apresenta os pedidos associados à cliente Ana Silva.

| ID Pedido | Status | Valor Total (R$) |
|---:|---|---:|
| 1 | pago | 3.649,80 |
| 3 | pendente | 579,80 |

## 5. Resultados das Stored Procedures

### Resultado Procedure #1 — `listar_categorias_ativas`

Lista as categorias que estão ativas, organizadas em ordem alfabética.

| ID Categoria | Nome | Descrição |
|---:|---|---|
| 4 | Hardware | Processadores, placas de vídeo, memórias e SSDs |
| 2 | Monitores | Monitores LED, IPS, 4K e gamers de alta taxa |
| 1 | Notebooks | Notebooks corporativos, gamers e ultrabooks |
| 3 | Periféricos | Teclados, mouses, headsets e webcams |

### Resultado Procedure #2 — `buscar_pedidos_por_status`

Busca os pedidos de acordo com o status informado. Neste exemplo, foi utilizado o status `pendente`.

| ID Pedido | ID Cliente | Data do Pedido | Valor Total (R$) |
|---:|---:|---|---:|
| 2 | 2 | 2026-11-11 | 899,90 |
| 3 | 1 | 2026-11-14 | 579,80 |
| 5 | 4 | 2026-11-16 | 419,90 |

### Resultado Procedure #3 e #4 — Execução de Inserção e Atualização

Demonstra a execução de duas Stored Procedures: uma para inserir uma nova categoria e outra para atualizar o telefone de um cliente.

| Procedure Executada | Retorno no MySQL Workbench |
|---|---|
| `inserir_categoria('Acessórios', 'Cabos, suportes e adaptadores diversos')` | 1 row(s) affected |
| `atualizar_telefone_cliente(1, '11999998888')` | 1 row(s) affected |

### Resultado Procedure #5 — `contar_produtos_categoria`

Realiza a contagem de produtos pertencentes à categoria de ID 3.

| Total de Produtos na Categoria |
|---:|
| 3 |

## 6. Arquivos do Repositório

O projeto está organizado nos seguintes arquivos SQL:

| Arquivo | Descrição |
|---|---|
| `db_lojaTech.sql` | Estrutura e criação das tabelas do banco de dados. |
| `db_lojaTech_informacoes.sql` | Inserção dos dados iniciais nas tabelas. |
| `db_lojaTech_queries.sql` | Consultas SQL desenvolvidas para os exercícios. |
| `db_lojaTech_storedProcedures.sql` | Criação e execução das Stored Procedures. |

## 7. Tecnologias Utilizadas

- **MySQL:** Sistema de gerenciamento de banco de dados relacional.
- **MySQL Workbench:** Ambiente utilizado para criação, execução e teste dos comandos SQL.
- **SQL:** Linguagem utilizada para definição, consulta e manipulação dos dados.
- **GitHub:** Plataforma utilizada para armazenar e compartilhar os arquivos do projeto.

---

**SENAI Suíço-Brasileira | Banco de Dados Relacional**  
**Projeto TechStore — `loja_tech`**
