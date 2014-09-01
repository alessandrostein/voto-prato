class Receita < ActiveRecord::Base

	belongs_to :prato

	validates_presence_of :prati_id
	validetes_associated :prato

	validates_presence_of :conteudo, message: "Receita deve ser preenchido"
end
