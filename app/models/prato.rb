class Prato < ActiveRecord::Base
	validates_presence_of :nome, message: "Nome deve ser preenchido"

	validates_uniqueness_of :nome, message: "Nome ja foi cadastrado	"
end
