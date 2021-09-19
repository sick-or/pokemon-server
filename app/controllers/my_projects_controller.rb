class MyProjectsController < ApplicationController
  def my
    @pokemon = Pokemon.all
  end
end
