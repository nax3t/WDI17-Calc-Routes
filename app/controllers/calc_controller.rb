class CalcController < ApplicationController
	def index
		# this renders the index.html.erb view because 
		# we set calc#index as our root in routes.rb
	end

	def add
		# this is the action that gets called when we type 'add/:x/:y' 
		# at the end of our url  (localhost:3000/) in the browser 
		# params is a hash that holds the values from :x and :y 
		# localhost:3000/add/5/5 would produce a params hash like this,
		# { x: "5", y: "5" }
		# the code below sets local variables x and y to the values
		# :x and :y from the params hash
		x = params[:x]
		y = params[:y]
		# @result is an instance variable that is made available to us on 
		# the index.html.erb page (due to using @ before the variable name)
		# x.to_i utilizes the 'to integer' method that converts a string to an integer
		# if we didn't use to_i the result would be a concatenated string instead of
		# an actual integer calculation
		@result = x.to_i + y.to_i
		# render :index tells the browser to render the index.html.erb
		# (look for changes in the code and render them)
		# so we never leave the index page
		render :index
	end

	def sub
		x = params[:x]
		y = params[:y]
		@result = x.to_i - y.to_i
		render :index
	end

	def div
		x = params[:x]
		y = params[:y]
		@result = x.to_i / y.to_i
		render :index
	end

	def mult
		x = params[:x]
		y = params[:y]
		@result = x.to_i * y.to_i
		render :index
	end
end
