class RestaurantesController < ApplicationController

	def index
		@restaurantes = Restaurante.order :nome
	end

	def show
		@restaurante = Restaurante.find(params[:id])
	end

	def destroy
		@restaurante = Restaurante.find(params[:id])
		@restaurante.destroy

		redirect_to(action: "index")
	end
end
