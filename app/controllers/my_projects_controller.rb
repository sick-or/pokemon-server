class MyProjectsController < ApplicationController
  def my
    @pokemon = Pokemon.all.includes(:poke_types)
  end
end
