class HomeController < ApplicationController
  def index
    @politicas = Politica.all
  end
end
