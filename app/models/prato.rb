class Prato < ActiveRecord::Base

	has_and_belongs_to_many :restaurantes
	has_one :receita

	validate :validate_presence_of_more_than_one_restaurante

	validates_presence_of :nome, message: "Nome deve ser preenchido"

	validates_uniqueness_of :nome, message: "Nome ja foi cadastrado	"

	private 
	
	def validate_presence_of_more_than_one_restaurante
		errors.add("restaurantes", "Deve haver a menos um restaurante") if restaurantes.empty?
	end
end
