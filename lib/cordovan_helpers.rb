# Author:: lp (mailto:lp@spiralix.org)
# Copyright:: 2009 Louis-Philippe Perron - Released under the terms of the MIT license
# 
# :title:Cordovan
class Cordovan
	private

	def fit_in_grid(style)
		style[:height] = grid_slot_height(style)
		style[:width] = grid_slot_width(style)
		style[:top] = grid_slot_top(style)
		style[:left] = grid_slot_left(style)
		style
	end

	def split_style(style)
  	return {:height => style[:height],
						:width => style[:width],
						:top => style[:top],
						:left => style[:left]},
						style.delete_if { |k,v|
							k == :height ||
							k == :width ||
							k == :top ||
							k == :left }
	end

	def in_grid(style)
		position, props = split_style( fit_in_grid( style))
		@shoes.flow position do
			yield props if block_given?
		end
	end

	def grid_slot_height(style)
		@height / @v_grid * style[:v_span]
	end

	def grid_slot_width(style)
		@width / @h_grid * style[:h_span]
	end

	def grid_slot_top(style)
		pos = style[:v_pos] - 1; pos = 0 if pos < 0
		@height / @v_grid * pos
	end

	def grid_slot_left(style)
		pos = style[:h_pos] - 1; pos = 0 if pos < 0
		@width / @h_grid * pos
	end
end