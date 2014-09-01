class CreateReceitas < ActiveRecord::Migration
  def change
    create_table :receitas do |t|
      t.text :conteudo
      t.timestamps
    end
  end
end
