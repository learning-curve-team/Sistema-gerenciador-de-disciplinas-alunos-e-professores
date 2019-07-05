json.extract! aluno, :id, :Nome, :CPF, :Disciplina_id, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
