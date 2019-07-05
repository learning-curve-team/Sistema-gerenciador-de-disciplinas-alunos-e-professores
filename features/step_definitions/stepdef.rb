Given('Eu estou na pagina de novos alunos')do
  visit'alunos/new'
  expect(page).to have_current_path('/alunos/new')
end

Given("Eu estou na pagina do aluno de nome {string}") do |nome|
  visit 'alunos/new'
  fill_in 'aluno[Nome]', :with => nome
  fill_in 'aluno[CPF]', :with => "11111111111"
  click_button 'Create Aluno'
  expect(page).to have_content("11111111111")
end

Given('Eu estou na pagina de novos professores')do
  visit'professors/new'
  expect(page).to have_current_path('/professors/new')
end

Given("Eu estou na pagina do professor de nome {string}") do |nome|
  visit 'professors/new'
  fill_in 'professor[Nome]', :with => nome
  fill_in 'professor[CPF]', :with => "11111111111"
  click_button 'Create Professor'
  expect(page).to have_content("11111111111")
end

Given('Eu estou na pagina de novas disciplinas')do
  visit'disciplinas/new'
  expect(page).to have_current_path('/disciplinas/new')
end

Given("Eu estou na pagina da disciplina de nome {string}") do |nome|
  visit 'disciplinas/new'
  fill_in 'disciplina[Nome]', :with => nome
  fill_in 'disciplina[Sigla]', :with => "SI"
  click_button 'Create Disciplina'
  expect(page).to have_content("SI")
end

Given("Eu clico no link editar") do
  click_link "Edit"
end

When('Eu nao preencho o campo nome com {string} e o campo cpf com {string}')do |nome, cpf|
  expect(page).to have_no_content(nome)
  expect(page).to have_no_content(cpf)
end

When('Eu nao preencho o campo nome com {string} e o campo sigla com {string}')do |nome, sigla|
  expect(page).to have_no_content(nome)
  expect(page).to have_no_content(sigla)
end

When('Eu crio um novo aluno com o nome {string} e o cpf {string}')do |nome, cpf|
  fill_in'aluno[Nome]', :with =>nome
  fill_in'aluno[CPF]', :with =>cpf
  click_button 'Create Aluno'
end

When('Eu crio um novo professor com o nome {string} e o cpf {string}')do |nome, cpf|
  fill_in'professor[Nome]', :with =>nome
  fill_in'professor[CPF]', :with =>cpf
  click_button 'Create Professor'
end

When('Eu crio uma nova disciplina com o nome {string} e a sigla {string}')do |nome, sigla|
  fill_in'disciplina[Nome]', :with =>nome
  fill_in'disciplina[Sigla]', :with =>sigla
  click_button 'Create Disciplina'
end

When("Eu preencho o campo nome {string} e o campo CPF {string}") do |nome, cpf|
  fill_in 'aluno[Nome]', :with => nome
  fill_in 'aluno[CPF]', :with => cpf
end

When("Eu preencho o campo nome {string} e o campo Sigla {string}") do |nome, sigla|
  fill_in 'disciplina[Nome]', :with => nome
  fill_in 'disciplina[Sigla]', :with => sigla
end

When("Eu preencho o campo nome com {string} e o campo CPF com {string}") do |nome, cpf|
  fill_in 'professor[Nome]', :with => nome
  fill_in 'professor[CPF]', :with => cpf
end

When('Eu preencho o campo nome com {string} e o nao preencho campo cpf com {string}')do |cpf|
  expect(page).to have_no_content(cpf)
end

When('Eu preencho o campo nome com {string} e o nao preencho campo sigla com {string}')do |sigla|
  expect(page).to have_no_content(sigla)
end

And('Eu clico no botao create Aluno')do
  click_button 'Create Aluno'
end

And('Eu clico no botao create Professor')do
  click_button 'Create Professor'
end

And('Eu clico no botao create Disciplina')do
  click_button 'Create Disciplina'
end

And("Eu clico no botao atualizar aluno") do
  click_button "Update Aluno"
end

And("Eu clico no botao atualizar Disciplina") do
  click_button "Update Disciplina"
end

And("Eu clico no botao atualizar professor") do
  click_button "Update Professor"
end

Then('Eu vejo que o aluno chamado {string} foi criado corretamente')do |nome|
  expect(page).to have_content(nome)
  expect(page).to have_current_path(alunos_path + '/' + Aluno.last.id.to_s)
end

Then('Eu vejo que o professor chamado {string} foi criado corretamente')do |nome|
  expect(page).to have_content(nome)
  expect(page).to have_current_path(professors_path + '/' + Professor.last.id.to_s)
end

Then('Eu vejo que a disciplina chamada {string} foi criada corretamente')do |nome|
  expect(page).to have_content(nome)
  expect(page).to have_current_path(disciplinas_path + '/' + Disciplina.last.id.to_s)
end

Then('Eu vejo uma mensagem de erro {string}')do |error|
  expect(page).to have_content(error)
end