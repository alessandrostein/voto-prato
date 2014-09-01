class AddColumnEspecialidadeToRestaurante < ActiveRecord::Migration
  def change
    add_column :restaurantes, :especialidade, :string, limit: 40
  end
end
