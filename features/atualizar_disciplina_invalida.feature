Feature: Disciplina
  As an usuario do sistema
  I want to adicionar, editar, ver e remover uma Disciplina do sistema
  so that eu nao tenha que fazer isso manualmente

  Scenario: atualizar Disciplina invalido
    Given Eu estou na pagina da disciplina de nome 'Disciplina'
    And Eu clico no link editar
    When Eu preencho o campo nome '' e o campo Sigla ''
    And Eu clico no botao atualizar Disciplina
    Then Eu vejo uma mensagem de erro 'erro'