Feature: professor
  As an usuario do sistema
  I want to adicionar, editar, ver e remover um professor do sistema
  so that eu nao tenha que fazer isso manualmente

  Scenario: cadastrar professor sem cpf
    Given Eu estou na pagina de novos professores
    When Eu preencho o campo nome com 'Teste' e o nao preencho campo cpf com 'Teste'
    And Eu clico no botao create Professor
    Then Eu vejo uma mensagem de erro 'erro'