class Restaurante < ActiveRecord::Base	

	validates_presence_of :nome, message: "Campo nome deve ser preenchido"
	validates_presence_of :endereco, message: "Campo endereco deve ser preenchido"
	validates_presence_of :especialidade, message: "Campo especialidade deve ser preenchido"

	validates_uniqueness_of :nome, message: "Nome ja cadastrado"
	validates_uniqueness_of :endereco, message: "Endereco ja cadastrado"

	validate :primeira_letra_deve_ser_maiscula

	private 
	def primeira_letra_deve_ser_maiscula
		errors.add(:nome, "Primeira letra deve ser maiscula") unless nome =~ /[A-Z].*/
	end

end
