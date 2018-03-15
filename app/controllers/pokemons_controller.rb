class PokemonsController < ApplicationController

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.create(poke_params)
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.trainer_id = current_trainer.id
		if @pokemon.save
			redirect_to trainer_path(id: current_trainer.id)
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			render 'new'
		end
	end

	def poke_params
		params.require(:pokemon).permit(:name, :ndex)
	end

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to capture_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health - 10
		@pokemon.save
		if @pokemon.health <= 0
			@pokemon.destroy
		end
		redirect_to trainer_path(id: params[:trainer])
	end
end