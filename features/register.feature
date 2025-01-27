# Parametrização - testes mais flexíveis e reutilizáveis, evitando a duplicação de código.

Feature: Cadastro de clientes
As a um novo usuário
I want to me cadastrar no sistema
So that eu possa criar uma conta, salvar meus dados de entrega e realizar compras no site

Scenario: Cadastro bem-sucedido 
Given eu estou na página "https://automationexercise.com/signup"
When eu preencho o campo "signup-name" com "Maria Letícia"
And eu preencho o campo "signup-email" com "mleticiagaspar17@gmail.com"
And eu seleciono "signup-button" 
And eu preencho o campo "password" com "let123"
And eu seleciono o campo "days" com "17"
And eu seleciono o campo "months" com "10"
And eu seleciono o campo "years" com "2003"
And eu preencho o campo "first_name" com "Maria"
And eu preencho o campo "last_name" com "Gaspar"
And eu preencho o campo "adress" com "rua 1"
And eu seleciono o campo "country" com "Canada"
And eu preencho o campo "state" com "British Columbia"
And eu preencho o campo "city" com "Vancouver"
And eu preencho o campo "zipcode" com "V5K 0A1"
And eu preencho o campo "mobile_number" com "+1 604-111-1111"
And eu seleciono "create-account"
Then eu vejo "ACCOUNT CREATED!"

Scenario: Cadastro com dados opcionais preenchidos
Given eu estou na página "https://automationexercise.com/signup"
When eu preencho o campo "signup-name" com "Maria Letícia"
And eu preencho o campo "signup-email" com "mleticiagaspar@gmail.com"
And eu seleciono "signup-button" 
And eu preencho o campo "password" com "let123"
And eu seleciono o campo "days" com "17"
And eu seleciono o campo "months" com "10"
And eu seleciono o campo "years" com "2003"
And eu preencho o campo "first_name" com "Maria"
And eu preencho o campo "last_name" com "Gaspar"
And eu preencho o campo "adress" com "rua 1"
And eu preencho o campo "adress2" com "rua2"
And eu seleciono o campo "country" com "Canada"
And eu preencho o campo "state" com "British Columbia"
And eu preencho o campo "city" com "Vancouver"
And eu preencho o campo "zipcode" com "V5K 0A1"
And eu preencho o campo "mobile_number" com "+1 604-111-1111"
And eu seleciono "create-account"
Then eu vejo "ACCOUNT CREATED!"

Scenario: Tentativa de cadastro com campos obrigatórios não preenchidos
Given eu estou na página "https://automationexercise.com/signup"
And os campos "signup-name" e "signup-email" não estão preenchidos
When eu seleciono "signup-button"
Then eu permaneço na página "https://automationexercise.com/signup"
And eu vejo "Preencha este campo."



Scenario: Cadastro mal-sucedido por e-mail já cadastrado
Given eu estou na página "https://automationexercise.com/signup"
When eu preencho o campo "signup-name" com "Maria Letícia"
And eu preencho o campo "signup-email" com "mleticiagaspar17@gmail.com"
And eu seleciono "signup-button" 
Then eu vejo "Email Address already exist!"










