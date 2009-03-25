# Author:: lp (mailto:lp@spiralix.org)
# Copyright:: 2009 Louis-Philippe Perron - Released under the terms of the MIT license
# 
# :title:Cordovan
class Cordovan
	
	def clipboard=(string)
		@shoes.clipboard = string
	end
	
	def line(*args)
		args[0] = x_from(args[0]); args[1] = y_from(args[1])
		args[2] = x_from(args[2]); args[3] = y_from(args[3])
		@shoes.line(*args)
	end
	
	def oval(style={})
		style = fit_in_grid( style)
		style[:radius] = width_from(style[:radius])
		@shoes.oval( style)
	end
	
	def radio(*args)
		if args[0].is_a?(Hash)
			@shoes.radio( fit_in_grid( args[0]))
		else
			@shoes.radio( args[0], fit_in_grid( args[1]))
		end
	end

	def rect(style={})
		style = fit_in_grid(style)
		style[:curve] = width_from(style[:curve]) if style[:curve]
		@shoes.debug("rect: #{style.inspect}")
		@shoes.rect( style)
	end
	
	def star(style={})
		style = fit_in_grid( style)
		style[:outer] = width_from(style[:outer])
		style[:inner] = width_from(style[:inner])
		@shoes.stack( style)
	end
		
end