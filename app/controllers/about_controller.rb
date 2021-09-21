class AboutController < ApplicationController
  def about
    @pokemon = Pokemon.all.includes(:poke_types)
  end
end
