class Qualificacao < ActiveRecord::Base
	validates_presence_of :nota, message: "Nota deve ser preenchido"
	validates_presence_of :valor_gasto, message: "Valor gasto deve ser preenchido"

	validates_numericality_of :nota, greater_than_or_equal_to: 0,
									 less_than_or_equal_to: 10,
									 message: "Nota deve ser um numero de 0 a 10"

	validates_numericality_of :valor_gasto, greater_than: 0,
											message: "O valor gasto deve ser maior que 0"
end
