class AddClienteIdAndRestauranteIdToQualificacoes < ActiveRecord::Migration
  def change
    add_column :qualificacoes, :cliente_id, :integer
    add_column :qualificacoes, :restaurante_id, :integer
  end
end
