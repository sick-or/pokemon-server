class AboutController < ApplicationController
  def about
    @pokemon = Pokemon.all
  end
end
