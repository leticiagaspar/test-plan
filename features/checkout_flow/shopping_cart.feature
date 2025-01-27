Feature: Gerenciar carrinho de compras
As a um cliente
I want to adicionar, visualizar, atualizar e remover itens do meu carrinho de compras
So that eu possa organizar minhas compras antes de finalizar o pedido no site

Scenario: Adição de produtos ao carrinho de compras
Given eu estou na página "https://www.automationexercise.com/products"
When eu busco o produto "Blue Top" na aba de pesquisa
And eu seleciono "Adicionar ao carrinho" 
Then eu permaneço na página "https://www.automationexercise.com/products"
And eu vejo uma mensagem de sucesso "Added!"
 

Scenario: Remoção de produtos do carrinho de compras
Given eu estou na página "https://www.automationexercise.com/view_cart"
And  há "1" produto "Blue Top" no carrinho de compras
When eu deleto o produto "Blue Top"
Then eu permaneço na página "https://www.automationexercise.com/view_cart"
And eu não vejo o produto "Blue Top" no carrinho de compras

Scenario: Verificar a quantidade de produtos no carrinho
Given eu estou na página "https://www.automationexercise.com/products"
And há "1" produto "Blue Top" no carrinho de compras
When eu busco o produto "Blue Top" na aba de pesquisa
And eu adiciono o produto ao carrinho
And eu seleciono "View cart"
Then eu sou redirecionado para a página "https://www.automationexercise.com/view_cart"
And eu vejo a quantidade do produto "Blue Top" é atualizada para "2"



