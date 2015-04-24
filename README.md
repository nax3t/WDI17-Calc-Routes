### Setup Notes
*the $ sign indicates that you are in terminal (command line for Windows users), do not copy the $ sign*

Create a new rails app
> ```$ rails new app_name```

Run bundle install
> ```$ bundle```

Create a calc controller with an index action (and view)
> ```$ rails g controller calc index```

Open your routes file ('ctrl + p' to search for a file) and set root to calc#index
> ```$ root 'calc#index'```

Create routes for add, subtract(sub), divide(div), multiply(mult)
> ```$ get 'add/:x/:y' => 'calc#add'```

Create corresponding actions in the calc controller

    def index
    end

	def add
		x = params[:x]
		y = params[:y]
		@result = x.to_i + y.to_i
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

```*see actual code for comments```
