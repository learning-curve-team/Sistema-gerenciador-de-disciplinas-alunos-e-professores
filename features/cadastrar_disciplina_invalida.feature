Feature: Disciplina
  As an usuario do sistema
  I want to adicionar, editar, ver e remover uma Disciplina do sistema
  so that eu nao tenha que fazer isso manualmente


  Scenario: cadastrar Disciplina invalida
    Given Eu estou na pagina de novas disciplinas
    When Eu nao preencho o campo nome com 'Teste' e o campo sigla com 'SI'
    And Eu clico no botao create Disciplina
    Then Eu vejo uma mensagem de erro 'erro'