Feature: professor
  As an usuario do sistema
  I want to adicionar, editar, ver e remover um professor do sistema
  so that eu nao tenha que fazer isso manualmente

  Scenario: cadastrar professor corretamente
    Given Eu estou na pagina de novos professores
    When Eu crio um novo professor com o nome 'professor' e o cpf '11111111111'
    Then Eu vejo que o professor chamado 'professor' foi criado corretamente