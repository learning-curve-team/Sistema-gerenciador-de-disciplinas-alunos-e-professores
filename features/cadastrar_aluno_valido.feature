Feature: Aluno
  As an usuario do sistema
  I want to adicionar, editar, ver e remover um aluno do sistema
  so that eu nao tenha que fazer isso manualmente

  Scenario: cadastrar aluno corretamente
    Given Eu estou na pagina de novos alunos
    When Eu crio um novo aluno com o nome 'Aluno' e o cpf '11111111111'
    Then Eu vejo que o aluno chamado 'Aluno' foi criado corretamente