Feature: Realizar Login
As a Usuário registrado
I want to acessar minha conta no sistema
So that eu possa realizar compras no site

Scenario: Login com credenciais válidas 
Given eu estou na página "https://automationexercise.com/login"
When eu preencho o campo "login-email" com "mleticiagaspar17@gmail.com"
And eu preencho o campo "login-password" com "let123"
And eu seleciono "login-button" 
Then eu sou redirecionado para a página "https://automationexercise.com/"
And eu vejo "Logged in as Maria Letícia"

Scenario: Login com credenciais inválidas
Given eu estou na página "https://automationexercise.com/login"
When eu preencho o campo "login-email" com "mleticiagaspar17@gmail.com"
And eu preencho o campo "login-password" com "let12"
And eu seleciono "login-button" 
Then eu continuo na página "https://automationexercise.com/login"
And eu vejo "Your email or password is incorrect!"

Scenario: Login com credenciais não preenchidas
Given eu estou na página "https://automationexercise.com/login"
And os campos "login-email" e "login-senha" não estão preenchidos
When eu seleciono "login-button" 
Then eu continuo na página "https://automationexercise.com/login"
And eu vejo "Preencha este campo."










