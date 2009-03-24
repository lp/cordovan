# Author:: lp (mailto:lp@spiralix.org)
# Copyright:: 2009 Louis-Philippe Perron - Released under the terms of the MIT license
# 
# :title:Cordovan
class Cordovan
	private

	def fit_in_grid(style)
		style[:v_span] = @v_grid if style[:v_span].nil?
		style[:h_span] = @h_grid if style[:h_span].nil?
		style[:v_pos] = 1 if style[:v_pos].nil? || style[:v_pos] < 1
		style[:h_pos] = 1 if style[:h_pos].nil? || style[:h_pos] < 1
		style[:height] = height_from(style[:v_span])
		style[:width] = width_from(style[:h_span])
		style[:left] = x_from(style[:h_pos])
		style[:top] = y_from(style[:v_pos])
		style
	end 

	def height_from(v_span)
		(@height.to_f / @v_grid * v_span).to_i
	end

	def width_from(h_span)
		(@width.to_f / @h_grid * h_span).to_i
	end

	def x_from(h_pos)
		(@width.to_f / @h_grid * (h_pos-1)).to_i
	end
	
	def y_from(v_pos)
		(@height.to_f / @v_grid * (v_pos-1)).to_i
	end
	
end