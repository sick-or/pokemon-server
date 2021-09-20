class ApplicationController < ActionController::Base
  def index
    @pokemon = Pokemon.all
  end

  def show
    @pokemon = Pokemon.all

  end
end
