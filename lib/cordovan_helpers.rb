# Author:: lp (mailto:lp@spiralix.org)
# Copyright:: 2009 Louis-Philippe Perron - Released under the terms of the MIT license
# 
# :title:Cordovan
class Cordovan
	private

	def fit_in_grid(style)
		style[:v_span] = @v_grid if style[:v_span].nil?
		style[:h_span] = @h_grid if style[:h_span].nil?
		style[:v_pos] = 1 if style[:v_pos].nil?
		style[:h_pos] = 1 if style[:h_pos].nil?
		style[:height] = height_from(style[:v_span])
		style[:width] = width_from(style[:h_span])
		style[:left] = x_from(style[:h_pos])
		style[:top] = y_from(style[:v_pos])
		style
	end 

	def height_from(v_span)
		return (@height * v_span).to_i if v_span.is_a?(Float) and v_span <= 1.0
		(@height.to_f / @v_grid * v_span).to_i
	end

	def width_from(h_span)
		return (@width * h_span).to_i if h_span.is_a?(Float) and h_span <= 1.0
		(@width.to_f / @h_grid * h_span).to_i
	end

	def x_from(h_pos)
		return (@width * h_pos).to_i if h_pos.is_a?(Float) and h_pos <= 1.0
		(@width.to_f / @h_grid * (h_pos-1)).to_i
	end
	
	def y_from(v_pos)
		return (@height * v_pos).to_i if v_pos.is_a?(Float) and v_pos <= 1.0
		(@height.to_f / @v_grid * (v_pos-1)).to_i
	end
	
end