Feature: Professor
  As an usuario do sistema
  I want to adicionar, editar, ver e remover um professor do sistema
  so that eu nao tenha que fazer isso manualmente


  Scenario: cadastrar professor invalido
    Given Eu estou na pagina de novos professores
    When Eu nao preencho o campo nome com 'Teste' e o campo cpf com '11111'
    And Eu clico no botao create Professor
    Then Eu vejo uma mensagem de erro 'erro'