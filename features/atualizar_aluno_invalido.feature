Feature: Aluno
  As an usuario do sistema
  I want to adicionar, editar, ver e remover um aluno do sistema
  so that eu nao tenha que fazer isso manualmente

  Scenario: atualizar aluno invalido
    Given Eu estou na pagina do aluno de nome 'Aluno'
    And Eu clico no link editar
    When Eu preencho o campo nome '' e o campo CPF ''
    And Eu clico no botao atualizar aluno
    Then Eu vejo uma mensagem de erro 'erro'