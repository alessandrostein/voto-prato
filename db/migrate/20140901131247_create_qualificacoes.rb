class CreateQualificacoes < ActiveRecord::Migration
  def change
    create_table :qualificacoes do |t|
  	  t.float :nota
  	  t.float :valor_gasto
      t.timestamps
    end
  end
end
