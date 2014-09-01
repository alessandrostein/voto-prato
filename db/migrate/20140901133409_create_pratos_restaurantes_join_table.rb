class CreatePratosRestaurantesJoinTable < ActiveRecord::Migration
  def change
  	create_table :pratos_restaurantes, id: false do |t|
  		t.integer :prato_id
  		t.integer :restaurantes_id
  	end
  end
end
