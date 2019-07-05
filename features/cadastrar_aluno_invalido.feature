Feature: Aluno
  As an usuario do sistema
  I want to adicionar, editar, ver e remover um aluno do sistema
  so that eu nao tenha que fazer isso manualmente


  Scenario: cadastrar aluno invalido
    Given Eu estou na pagina de novos alunos
    When Eu nao preencho o campo nome com 'Teste' e o campo cpf com '11111'
    And Eu clico no botao create Aluno
    Then Eu vejo uma mensagem de erro 'erro'