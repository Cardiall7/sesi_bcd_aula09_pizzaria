# Projeto Pizzaria - Banco de Dados

Repositório criado para a atividade prática de Banco de Dados, focando na modelagem, criação, população, manipulação de dados e criação de relatórios em formato de Views utilizando **MySQL / XAMPP**.

---

## Estrutura de Ficheiros do Repositório

O projeto está organizado com os seguintes scripts SQL e de configuração:

* **`index.sql`**: Script principal / consolidador contendo a estrutura geral do projeto ou rotinas iniciais.
* **`pizzaria.sql`**: Script de criação do banco de dados e configuração inicial de charset.
* **`pizzariaUSE.sql`**: Comando de seleção/ativação do banco de dados (`USE Pizzaria`).
* **`tables.sql`**: Script de criação das tabelas relacionais (`Clientes`, `Telefones`, `Pizzas`, `Pedidos` e `Itens_Pedido`).
* **`clientes.sql`**: Script específico focado na inserção e gestão dos dados dos clientes.
* **`queries.sql`**: Operações de Manipulação de Dados (DML), incluindo o cadastro do cliente Gaspar Oliveira, novas pizzas ("A moda do chef") e atualizações/exclusões de itens de pedidos.
* **`views.sql`**: Criação das *Views* (visões) para relatórios gerenciais automatizados.
* **`viewspizza.sql`**: Consultas e testes específicos focados nas visões de pizzas e pedidos.
* **`show_tables.sql`**: Comando utilitário para validação e listagem das tabelas ativas no banco de dados.
* **`.gitignore`**: Ficheiro de configuração para ignorar ficheiros desnecessários do sistema/ambiente de desenvolvimento no controlo de versão.

---

## Resumo das Atividades Desenvolvidas

1. **Modelagem e DDL (`tables.sql`, `pizzaria.sql`)**: 
   - Criação do esquema relacional do banco de dados da pizzaria com restrições de chaves primárias e estrangeiras (`ON DELETE CASCADE`).
2. **População de Dados (`clientes.sql`)**: 
   - Inserção em massa de clientes, telefones, cardápio de pizzas e histórico de pedidos.
3. **Manipulação (DML) (`queries.sql`)**: 
   - Inserção de novos registos (ex: cliente *Gaspar Oliveira* e a pizza *A moda do chef*), simulação de alterações de pedidos de última hora e remoção de itens.
4. **Relatórios e Views (`views.sql`, `viewspizza.sql`)**: 
   - Criação de visões para cálculo automático de subtotais, valores totais por pedido e contagem de itens/pizzas.
