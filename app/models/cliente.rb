class Cliente < ActiveRecord::Base

	validates_presence_of :nome, message: "Nome deve ser preenchido"
	validates_uniqueness_of :nome, message: "Nome ja cadastrado"

	validates_numericality_of :idade, greater_than: 0, 
	                                  less_than: 100,
	                                  message: "Idade deve ser um numero de 0 a 100"
end
