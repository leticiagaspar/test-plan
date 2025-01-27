# Plano de Teste E-commerce - Automation Exercise
https://www.automationexercise.com/

# 1. Introdução 

Este plano de testes tem como objetivo validar a qualidade e funcionalidade do sistema, assegurando que as principais operações (login, cadastro e fluxo de compra) atendam aos requisitos e proporcionem uma experiência positiva e confiável ao usuário final.

O documento também serve como referência para gerentes de projeto e demais partes interessadas, permitindo o monitoramento do progresso e garantindo que as funcionalidades estejam em conformidade com os padrões de qualidade estabelecidos nas User Stories.

# 2. Escopo do Teste
### Funcionalidades cobertas:

1. **Login:** autenticação de usuários existentes.

2. **Cadastro**: criação de novos usuários.

3. **Fluxo de compra:** seleção de produtos, carrinho, finalização e pagamento.

### Funcionalidades fora do escopo: 
1. **Formulário de Contato:** envio de mensagens e sugestões dos usuários. 

2. **Assinaturas:** notificações relacionadas à assinatura do sistema.

# 3. Casos de Teste

### Login

<details>
  <summary>Login com credenciais válidas</summary>

  **ID**: TC01  
  **Objetivo do Teste**: Validar o login com credenciais corretas.  
  **Pré-condições**: O usuário deve possuir um cadastro válido no sistema.  

  **Passos**:  
  1. Acessar a página de login.  
  2. Informar o e-mail e a senha válidos
  3. Clicar no botão "Login".  

  **Resultado Esperado**: O login é bem-sucedido e o sistema redireciona para a página inicial.  

</details>

<details>
  <summary>Tentativa de login com credenciais inválidas</summary>

  **ID**: TC02  
  **Objetivo do Teste**: Garantir que o sistema exibe erro ao usar credenciais inválidas.  
  **Pré-condições**:  O usuário deve estar na página de login.   

  **Passos**:  
  1. Acessar a página de login.  
  2. Informar e-mail e/ou senha inválidos.  
  3. Clicar no botão "Login".  

  **Resultado Esperado**: O sistema exibe uma mensagem de erro: "Your email or password is incorrect!".  

</details>

<details>
  <summary>Login com credenciais não preenchidas</summary>

  **ID**: TC03  
  **Objetivo do Teste**: Validar o comportamento do sistema quando o usuário tenta logar sem preencher os campos.  
  **Pré-condições**: O usuário deve estar na página de login.  

  **Passos**:  
  1. Acessar a página de login.  
  2. Deixar os campos de usuário e/ou senha vazios.  
  3. Clicar no botão "Login".  

  **Resultado Esperado**: O sistema exibe uma mensagem solicitando o preenchimento dos campos obrigatórios.  

</details>

<details>
  <summary>Recuperação de senha <strong>(recurso ainda não disponível)</strong></summary> 

</details>

<details>
  <summary>Logout</summary>

  **ID**: TC04  
  **Objetivo do Teste**: Garantir que o usuário consiga realizar logout com sucesso.  
  **Pré-condições**: O usuário deve estar autenticado no sistema.  

  **Passos**:
  1. Acessar qualquer página do site.    
  2. Clicar no botão "Logout".  

  **Resultado Esperado**: O sistema realiza o logout e redireciona o usuário para a página de login.  

</details>

---

### Cadastro

<details>
  <summary>Cadastro com dados válidos</summary>

  **ID**: TC05 
  **Objetivo do Teste**: Validar o cadastro com todos os dados corretos.  
  **Pré-condições**: O e-mail informado não deve estar cadastrado.  

  **Passos**:  
  1. Acessar a página de cadastro.  
  2. Preencher os campos obrigatórios (Nome, Email, Senha, Primeiro e Último nome, Endereço, País, ZipCode, Estado, Cidade e Número).  
  3. Clicar no botão "Create Account".  

  **Resultado Esperado**: O cadastro é realizado com sucesso e o sistema exibe uma mensagem de sucesso "Account Created!".  

</details>

<details>
  <summary>Tentativa de cadastro com e-mail já cadastrado</summary>

  **ID**: TC06  
  **Objetivo do Teste**: Validar a mensagem de erro ao cadastrar com e-mail já existente.  
  **Pré-condições**: O e-mail já deve estar cadastrado no sistema.  

  **Passos**:  
  1. Acessar a página de cadastro.  
  2. Preencher os campos obrigatórios com o e-mail já existente.  
  3. Clicar no botão "Signup".  

  **Resultado Esperado**: O sistema exibe a mensagem: "Email Address already exist!".  

</details>

<details>
  <summary>Verificação de e-mail <strong>(recurso ainda não disponível)</strong></summary>
</details>

<details>
  <summary>Verificação de senha fraca <strong>(recurso ainda não disponível)</strong></summary>

</details>

<details>
  <summary>Tentativa de cadastro com campos obrigatórios não preenchidos</summary>

  **ID**: TC07 
  **Objetivo do Teste**: Garantir que o sistema não permita cadastro com campos obrigatórios vazios.  
  **Pré-condições**: O usuário deve estar na página de cadastro.  

  **Passos**:  
  1. Acessar a página de cadastro.  
  2. Deixar campos obrigatórios como Nome e Email vazios.  
  3. Clicar no botão "Signup".  

  **Resultado Esperado**: O sistema exibe mensagens indicando os campos obrigatórios que não foram preenchidos.  

</details>

<details>
  <summary>Cadastro com dados opcionais preenchidos</summary>

  **ID**: TC08  
  **Objetivo do Teste**: Verificar se o sistema aceita dados opcionais no cadastro.  
  **Pré-condições**: O e-mail informado não deve estar cadastrado.  

  **Passos**:  
  1. Acessar a página de cadastro.  
  2. Preencher os campos obrigatórios e dados opcionais como Endereço 2.  
  3. Clicar no botão "Create Account".  

  **Resultado Esperado**: O cadastro é realizado com sucesso e os dados opcionais são salvos.  

</details>

<details>
  <summary>Excluir cadastro</summary>

  **ID**: TC09  
  **Objetivo do Teste**: Garantir que o usuário consiga excluir seu cadastro.  
  **Pré-condições**: O usuário deve estar logado no sistema.  

  **Passos**:
  1. Acessar qualquer página do site.  
  2. Clicar na opção "Delete Account".  

  **Resultado Esperado**: O cadastro é excluído com sucesso e os dados são removidos do sistema.  

</details>

---

### Fluxo de Compra
#### Carrinho de Compras

<details>
  <summary>Pesquisar produto</summary>

  **ID**: TC10  

  **Objetivo do Teste**: Verficar se o produto foi listado ao ser pesquisado.

  **Pré-condições**: O usuário deve estar na página de produtos.  

  **Passos**:  
  1. Acessar a página de produtos
  2. Clicar na barra de busca
  3. Informar o produto desejado
  4. Clicar em pesquisar

  **Resultado Esperado**: O produto desejado estar visível.

</details>

<details>
  <summary>Adição de produtos ao carrinho</summary>

  **ID**: TC11  
  **Objetivo do Teste**: Garantir que o sistema permita adicionar produtos ao carrinho.  
  **Pré-condições**:  
  - O produto deve estar disponível em estoque.  
  - O usuário deve estar na página do produto.  

  **Passos**:  
  1. Navegar até a página de um produto.  
  2. Selecionar a quantidade desejada.  
  3. Clicar no botão "Add to cart".  

  **Resultado Esperado**: O produto é adicionado ao carrinho e o sistema exibe a mensagem "Added!".  

</details>

<details>
  <summary>Remoção de produtos do carrinho</summary>

  **ID**: TC12  
  **Objetivo do Teste**: Validar que o sistema permita remover produtos do carrinho de compras.  
  **Pré-condições**:  
  - O carrinho deve conter pelo menos um produto adicionado.  

  **Passos**:  
  1. Acessar a página de carrinho de compras.  
  2. Clicar no botão "x" ao lado do produto desejado.  

  **Resultado Esperado**: O produto é removido do carrinho.  

</details>

<details>
  <summary>Verificar quantidade de produtos no carrinho</summary>

  **ID**: TC13  
  **Objetivo do Teste**: Garantir que o sistema exiba corretamente a quantidade de produtos no carrinho.  
  **Pré-condições**:  
  - O carrinho deve conter "a" produtos "y" adicionados previamente.  

  **Passos**:
  1. Acessar a página de produtos.  
  2. Adicionar "x" produtos "y" ao carrinho.  
  3. Navegar até a página do carrinho.
  4. Verificar a quantidade de produtos "y"

  **Resultado Esperado**: A quantidade exibida no carrinho corresponde à quantidade total de produtos (a + x).  

</details>

<details>
  <summary>Verificar a persistência do carrinho ao fazer login</summary>

  **ID**: TC14  
  **Objetivo do Teste**: Garantir que os produtos no carrinho sejam mantidos ao fazer login.  
  **Pré-condições**:  
  - O carrinho deve conter produtos adicionados previamente.  

  **Passos**:  
  1. Acessar a página de Login.
  2. Inserir credenciais válidas.
  3. Clicar no botão "Login".  

  **Resultado Esperado**: O carrinho mantém os produtos adicionados, sem perdas de dados.  

</details>

<details>
  <summary>Adição de produtos fora do estoque <strong>(recurso ainda não disponível)</strong></summary>
</details>


#### Finalização de Compra

<details>
  <summary>Checkout bem-sucedido</summary>

  **ID**: TC15 
  **Objetivo do Teste**: Validar o fluxo de finalização de compra com sucesso.  
  **Pré-condições**:  
  - O usuário deve estar logado no sistema.  
  - O carrinho deve conter pelo menos um produto.  

  **Passos**:  
  1. Acessar a página do carrinho de compras.  
  2. Clicar no botão "Proceed To Checkout".  
  3. Analisar as informações do pedido
  4. Clicar em "Place Order".
  4. Preencher as informações pagamento.  
  4. Confirmar o pedido.  

  **Resultado Esperado**: O sistema finaliza a compra e exibe uma mensagem de sucesso "Order Placed!".  

</details>

<details>
  <summary>Checkout sem estar logado no sistema</summary>

  **ID**: TC16  
  **Objetivo do Teste**: Garantir que o sistema redirecione o usuário para login caso ele tente finalizar compra sem estar autenticado.  
  **Pré-condições**:  
  - O carrinho deve conter pelo menos um produto.  

  **Passos**:  
  1. Acessar a página do carrinho de compras sem estar logado.  
  2. Clicar no botão "Proceed To Checkout".  

  **Resultado Esperado**: O sistema exibe a mensagem "Checkout!" e informa o link para redirecionar a página de login antes de permitir a finalização da compra.  

</details>

<details>
  <summary>Verificar se as informações exibidas no checkout estão corretas</summary>

  **ID**: TC17  
  **Objetivo do Teste**: Validar se as informações de preço, total e endereço exibidas no checkout estão corretas.  
  **Pré-condições**:  
  - O carrinho deve conter produtos adicionados.  
  - O endereço do usuário deve estar configurado corretamente.  

  **Passos**:  
  1. Acessar a página do carrinho.  
  2. Clicar no botão "Proceed To Checkout".   

  **Resultado Esperado**: Todas as informações exibidas (produtos, preços, total e endereço) estão corretas.  

</details>

#### Pagamento

<details>
  <summary>Pagamento com cartão válido</summary>

  **ID**: TC18  
  **Objetivo do Teste**: Validar que o sistema aceite pagamentos com cartões válidos.  
  **Pré-condições**:  
  - O carrinho deve conter produtos adicionados.  
  - O sistema de pagamento deve estar funcional.  

  **Passos**:  
  1. Acessar a página de pagamento.  
  2. Inserir os dados de um cartão válido.  
  3. Confirmar o pagamento.  

  **Resultado Esperado**: O sistema aceita o pagamento e finaliza a compra.  

</details>

<details>
  <summary>Tentativa de pagamento com cartão inválido <strong>(recurso ainda não disponível)</strong></summary>

</details>

#### Pós-compra

<details>
  <summary>Baixar comprovante</summary>

  **ID**: TC19
  **Objetivo do Teste**: Validar que o sistema envie o comprovante de compra para o e-mail do usuário após o pagamento.  
  **Pré-condições**:  
  - O pagamento deve ser realizado com sucesso.   

  **Passos**:  
  1. Realizar o pagamento de um pedido.  
  2. Clicar em "Download Invoice".  

  **Resultado Esperado**: O comprovante de compra é baixado com sucesso 

</details>

---

# 4. Cobertura dos Testes

Critérios para seleção de testes:

- Cobertura dos principais fluxos (login, cadastro e compra).
- Cenários de sucesso e falha.
- Testes de validação em campos críticos.
- Testes de usabilidade e mensagens ao usuário.

Priorização:

- Fluxos críticos (login, cadastro, checkout).
- Casos de erro comuns (credenciais inválidas, campos obrigatórios vazios).
- Experiência geral do usuário.


# 5. Estratégias de Teste

## Tipos de testes

- **Teste Unitário:** garantir que unidades isoladas de código (funções, métodos ou componentes) funcionem como esperado.

- **Teste de Integração:** verificar se os diferentes módulos ou componentes do sistema interagem corretamente entre si.

- **Teste Funcional:** verificar se cada funcionalidade (login, cadastro e compra) funciona em conformidade com a sua User Story. 

- **Teste de Fluxo (End-to-End):** simular o caminho que um usuário real seguiria (do cadastro até a compra) para garantir que o sistema funciona como um todo.

- **Teste de Regressão:** garantir que alterações no sistema não impactem funcionalidades existentes.
---


# 6. Ambiente de Teste (Dados ficcionados)

### Configurações de Hardware

- **PCs:** Processadores i7, 8GB RAM, 256GB SSD.
- **Dispositivos móveis:** iPhone 13, Android 12 (para testes mobile).
- **Rede:** Internet de 20 Mbps ou mais.

### Configurações de Software

- **Sistemas Operacionais:** Windows 10, macOS, Ubuntu.
- **Navegadores:** Google Chrome, Mozilla Firefox, Microsoft Edge, Safari.
- **APIs:** Versões 1.2.0 (Login), 1.3.0 (Cadastro), 2.0.0 (Compra).


### Ferramentas de Teste

- **Testes manuais:** Postman para APIs.

- **Automação:** Cypress configurado no ambiente de staging para validação dos fluxos críticos e Selenium WebDriver integrado com BrowserStack para cobertura de dispositivos e navegadores..

- **Gerenciamento de testes:** Jira para rastreamento de bugs e progresso.

### Dados de Teste

#### Ambiente de Dados
- Banco de dados PostgreSQL com scripts de preenchimento automático para cenários de testes.
- Mocks e dados dinamicamente gerados para simular situações reais.


# 7. Equipe


| **Papel**                | **Responsabilidades**                                                                                          | **Nome**            |
|--------------------------|---------------------------------------------------------------------------------------------------------------|---------------------|
| Líder de Testes          | Planejar a estratégia de testes, priorizar atividades, acompanhar o progresso e consolidar relatórios.         | Maria Letícia         |
| Analista de Testes       | Criar casos de teste, validar os requisitos e assegurar a cobertura de cenários principais e excepcionais.     | João Lucas        |
| Testador                 | Executar testes manuais, relatar defeitos e verificar correções.                                               | Ana Paula       |
| Engenheiro de Testes     | Configurar o ambiente de teste, desenvolver scripts de automação e realizar testes de performance.             | Pedro Ferras        |
| Desenvolvedor | Implementar testes unitários e auxiliar na análise de defeitos identificados nos testes | Joana Cristina


# 8. Cronograma de Testes 

| **ID** | **Atividade**                   | **Descrição**                                                            | **Categoria**       | **Responsável**       | **Data de Início** | **Data de Término** | **Duração (dias)** | **Dependências** | **Status**      |
|--------|---------------------------------|--------------------------------------------------------------------------|---------------------|-----------------------|---------------------|---------------------|--------------------|------------------|----------------|
| 1      | Planejamento de Testes          | Definir estratégia, escopo e tipos de testes necessários                 | Planejamento        | Líder de Testes       | 01/02/2025          | 03/02/2025          | 3                  | -                | Concluído       |
| 2      | Criação de Casos de Teste       | Elaborar casos de teste baseados nos requisitos e fluxos principais      | Planejamento        | Analista de Testes    | 04/02/2025          | 07/02/2025          | 4                  | 1                |  Concluído   |
| 3      | Configuração do Ambiente de Teste | Configurar ambiente para testes unitários, de integração e E2E           | Infraestrutura      | Engenheiro de Testes  | 08/02/2025          | 09/02/2025          | 2                  | 1                |  Em andamento   |
| 4      | Testes Unitários                | Garantir o funcionamento correto de funções/componentes isolados         | Teste Unitário      | Desenvolvedor         | 10/02/2025          | 13/02/2025          | 4                  | 3                | Não iniciado    |
| 5      | Testes Funcionais               | Validar funcionalidades principais como cadastro, login e fluxo de compra | Teste Funcional     | Testador             | 14/02/2025          | 18/02/2025          | 5                  | 4                | Não iniciado    |
| 6      | Automação de Testes de Regressão | Desenvolver scripts para testes automatizados das funcionalidades principais | Automação           | Engenheiro de Testes  | 14/02/2025          | 21/02/2025          | 8                  | 4                | Não iniciado    |
| 7      | Testes de Integração            | Verificar a interação entre módulos, como API de checkout e pagamento    | Teste de Integração | Analista de Testes    | 19/02/2025          | 22/02/2025          | 4                  | 5, 6             | Não iniciado    |
| 8      | Testes de Fluxo (E2E)           | Simular caminhos reais para validar o funcionamento do sistema como um todo | Teste End-to-End    | Analista de Testes    | 23/02/2025          | 25/02/2025          | 3                  | 7                | Não iniciado    |
| 9     | Testes de Performance           | Avaliar o desempenho sob condições de carga e estresse                  | Teste de Performance | Engenheiro de Testes | 01/03/2025          | 03/03/2025          | 3                  | 8                | Não iniciado    |
| 10     | Relatório de Testes             | Consolidar resultados, relatórios de bugs e métricas de qualidade        | Planejamento        | Líder de Testes       | 04/03/2025          | 05/03/2025          | 2                  | 4, 5, 6, 7, 8 | Não iniciado    |
| 11     | Retestes e Validação Final      | Garantir que bugs corrigidos foram resolvidos e o sistema está estável   | Teste Final         | Testador             | 06/03/2025          | 08/03/2025          | 3                  | 11               | Não iniciado    |





# 9. Critérios de Aceitação
- Todos os casos de teste planejados foram executados corretamente.
- Os fluxos principais (login, cadastro e compra) funcionam conforme os requisitos.

