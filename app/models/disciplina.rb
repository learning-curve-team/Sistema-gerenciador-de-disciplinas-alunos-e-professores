class Disciplina < ApplicationRecord
  validates :Nome, :presence => true, :length => {:minimum => 3}
  validates :Sigla, presence: true, :length => {:is => 2}, uniqueness: {message: 'is already used by one student. It must be unique.'}
end
