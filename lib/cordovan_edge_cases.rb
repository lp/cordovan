# Author:: lp (mailto:lp@spiralix.org)
# Copyright:: 2009 Louis-Philippe Perron - Released under the terms of the MIT license
# 
# :title:Cordovan
class Cordovan
	
	def arc(style={})
		@shoes.arc( fit_in_grid( style))		
	end
	
	def arrow(style={})
		@shoes.arrow( fit_in_grid( style))
	end
	
	def clipboard=(string)
		@shoes.clipboard = string
	end
	
	def line(*args)
		args[0] = x_from(args[0]); args[1] = y_from(args[1])
		args[2] = x_from(args[2]); args[3] = y_from(args[3])
		@shoes.line(*args)
	end
	
	def oval(style={})
		@shoes.oval( fit_in_grid( style))
	end
	
	def radio(*args)
		if args[0].is_a?(Hash)
			@shoes.radio( fit_in_grid( args[0]))
		else
			@shoes.radio( args[0], fit_in_grid( args[1]))
		end
	end
	
	def shape(style={})
		@shoes.shape( fit_in_grid( style)) { yield if block_given? }
	end
	
	def star(style={})
		@shoes.stack( fit_in_grid( style)) { yield if block_given? }
	end
	
	# not integrated in lattice!!!  TO BE CONTINUED!!!
	def translate(style={})
		@shoes.translate(style)
	end
		
end