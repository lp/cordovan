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
		Shoes.debug("fit in grid: #{style.inspect} base h: #{@height.inspect} w: #{@width.inspect}")
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
		style[:v_span] = @v_grid if style[:v_span].nil?
		@height / @v_grid * style[:v_span]
	end

	def grid_slot_width(style)
		style[:h_span] = @h_grid if style[:h_span].nil?
		@width / @h_grid * style[:h_span]
	end

	def grid_slot_top(style)
		style[:v_pos] = 1 if style[:v_pos].nil? || style[:v_pos] < 1
		@height / @v_grid * style[:v_pos]
	end

	def grid_slot_left(style)
		style[:h_pos] = 1 if style[:h_pos].nil? || style[:h_pos] < 1
		@width / @h_grid * style[:h_pos]
	end
end