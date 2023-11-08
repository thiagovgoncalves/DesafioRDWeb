#language: pt

Funcionalidade: Buscar um usuário

Cenario: Buscar um admin
Dado que um admin logado acessou a área de gerenciamento de usuários
Quando buscar pelo nome de um Admin
Então o registro deverá ser exibido