Feature: Disciplina
  As an usuario do sistema
  I want to adicionar, editar, ver e remover uma Disciplina do sistema
  so that eu nao tenha que fazer isso manualmente

  Scenario: cadastrar Disciplina corretamente
    Given Eu estou na pagina de novas disciplinas
    When Eu crio uma nova disciplina com o nome 'Disciplina' e a sigla "DI"
    Then Eu vejo que a disciplina chamada 'Disciplina' foi criada corretamente