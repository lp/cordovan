# Author:: lp (mailto:lp@spiralix.org)
# Copyright:: 2009 Louis-Philippe Perron - Released under the terms of the MIT license
# 
# :title:Cordovan
class Cordovan
	require File.join( File.dirname( File.expand_path(__FILE__)), 'cordovan_color')
	require File.join( File.dirname( File.expand_path(__FILE__)), 'cordovan_helpers')
	require File.join( File.dirname( File.expand_path(__FILE__)), 'cordovan_native')
	
	@@crafts = Hash.new
	# To be initialize as top level matrix, needs the :height and :height of the shoes window
	# and the number of horizontal and vertical grid, :v_grid and :h_grid
	# to be initialize as a secondary level matrix, that is a matrix within a matrix, you need
	#  a matrix position first, :v_pos and :h_pos, and a size as :v_span and :h_span and a number
	# of sub-grid :v_grid and :h_grid
	def initialize(style={})
		@shoes = eval('self', @@shoes_binding)
		@height = style[:height]; @width = style[:width]
		@v_grid = style[:v_grid]; @h_grid = style[:h_grid]
		self.flow(style) do
			yield self if block_given?
		end
	end
	
	def self.lattice(shoes_binding,style={})
		@@shoes_binding = shoes_binding
		Cordovan.new(style) do |cordovan|
			yield cordovan if block_given?
		end
	end
	
	def self.craft(name,style={},&block)
		@@crafts[name.to_sym] = {:style => style, :block => block}
	end
	
	def lattice(style={})
		style = fit_in_grid(style)
		Cordovan.new(style) do |cordovan|
			yield cordovan if block_given?
		end
	end
	
	def method_missing(name,*args)
		Shoes.debug("name is #{name.inspect}")
		if @@crafts.include?(name)
			craft = @@crafts[name]
			style = craft[:style].merge(args[0])
			style = fit_in_grid(style)
			Cordovan.new(style) do |cordovan|
				craft[:block].call(cordovan)
			end
		else
			raise NoMethodError "method #{name.to_s} does not exist"
		end
	end
	
end