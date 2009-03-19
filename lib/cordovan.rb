# Author:: lp (mailto:lp@spiralix.org)
# Copyright:: 2009 Louis-Philippe Perron - Released under the terms of the MIT license
# 
# :title:Cordovan
class Cordovan
	require File.join( File.dirname( File.expand_path(__FILE__)), 'cordovan_helpers')
	require File.join( File.dirname( File.expand_path(__FILE__)), 'cordovan_native')
	# To be initialize as top level matrix, needs the :height and :height of the shoes window
	# and the number of horizontal and vertical grid, :v_grid and :h_grid
	# to be initialize as a secondary level matrix, that is a matrix within a matrix, you need
	#  a matrix position first, :v_pos and :h_pos, and a size as :v_span and :h_span and a number
	# of sub-grid :v_grid and :h_grid
	def initialize(shoes,style={})
		@shoes = shoes
		style = fit_in_grid(style)
		@shoes.background style[:background]
		@shoes.flow do
			@shoes.stroke @shoes.white; @shoes.fill @shoes.slategray
			@shoes.rect :top => 10, :left => 10, :width => 580, :height => 560, :curve => 40
			yield self if block_given?
		end
	end
	
end