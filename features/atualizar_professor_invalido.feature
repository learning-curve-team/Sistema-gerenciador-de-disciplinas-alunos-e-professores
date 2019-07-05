Feature: Professor
  As an usuario do sistema
  I want to adicionar, editar, ver e remover um professor do sistema
  so that eu nao tenha que fazer isso manualmente

  Scenario: atualizar professor invalido
    Given Eu estou na pagina do professor de nome 'professor'
    And Eu clico no link editar
    When Eu preencho o campo nome com '' e o campo CPF com ''
    And Eu clico no botao atualizar professor
    Then Eu vejo uma mensagem de erro 'erro'