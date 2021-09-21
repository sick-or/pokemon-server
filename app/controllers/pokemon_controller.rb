class PokemonController < ApplicationController
  def index
    @pokemon = Pokemon.all.includes(:poke_types,:stats)
  end

  def show
    @pokemon_sel = Pokemon.find(params[:id])
    @pokemon = Pokemon.all.includes(:poke_types, :stats)
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)

    if @pokemon.save
      redirect_to @pokemon
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @pokemon = Pokemon.find(params[:id])
  end

  def update
    @pokemon = Pokemon..find(params[:id])

    if @pokemon.update(pokemon_params)
      redirect_to @pokemon
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def pokemon_params
    params.require(:pokemon).permit(:pokedex, :name, :icon, :total)
  end
end
