class CreateProfessors < ActiveRecord::Migration[5.1]
  def change
    create_table :professors do |t|
      t.string :Nome
      t.string :CPF
      t.references :Disciplina, foreign_key: true

      t.timestamps
    end
  end
end
