Feature: Aluno
  As an usuario do sistema
  I want to adicionar, editar, ver e remover um aluno do sistema
  so that eu nao tenha que fazer isso manualmente

  Scenario: cadastrar aluno sem cpf
    Given Eu estou na pagina de novos alunos
    When Eu preencho o campo nome com 'Teste' e o nao preencho campo cpf com 'Teste'
    And Eu clico no botao create Aluno
    Then Eu vejo uma mensagem de erro 'erro'