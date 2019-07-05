class CreateDisciplinas < ActiveRecord::Migration[5.1]
  def change
    create_table :disciplinas do |t|
      t.string :Nome
      t.string :Sigla

      t.timestamps
    end
  end
end
