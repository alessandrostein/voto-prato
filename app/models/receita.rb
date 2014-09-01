class Receita < ActiveRecord::Base
	validates_presence_of :conteudo, message: "Receita deve ser preenchido"
end
