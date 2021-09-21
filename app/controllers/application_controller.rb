class ApplicationController < ActionController::Base
  def index
    @pokemon = Pokemon.all.includes(:poke_types)
  end

  def show
    @pokemon = Pokemon.all.includes(:poke_types)
  end

end
