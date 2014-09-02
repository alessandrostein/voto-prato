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

	def new
		@restaurante = Restaurante.new
	end

	def create
		@restaurante = Restaurante.new(restaurante_params)
		@restaurante.save
		redirect_to(action: 'show', id: @restaurante)
	end

	def restaurante_params
		params.require(:restaurante).permit(:nome, :endereco, :especialidade)
	end

	def edit
		@restaurante = Restaurante.find(params[:id])
	end

	def update
		@restaurante = Restaurante.find(params[:id])
		@restaurante.update_attributes(restaurante_params)

		redirect_to action: "show", id: @restaurante
	end
end
