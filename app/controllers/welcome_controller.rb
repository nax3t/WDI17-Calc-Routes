class WelcomeController < ApplicationController
  def index
  end

  def add
  	x = params[:x]
  	y = params[:y]
  	@result = x.to_i + y.to_i
  	render :index
  end
end
