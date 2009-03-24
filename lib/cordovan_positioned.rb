# Author:: lp (mailto:lp@spiralix.org)
# Copyright:: 2009 Louis-Philippe Perron - Released under the terms of the MIT license
# 
# :title:Cordovan
class Cordovan
	# positioned with style only
	%w[
		progress
		rect
		].each do |positioned|
		class_eval("def #{positioned}(style={}); @shoes.#{positioned}( fit_in_grid( style)); end\n")
	end
	# positioned with one arg and style
	%w[
		background
		banner
		caption
		code
		del
		em
		image
		ins
		inscription
		link
		para
		strong
		sub
		subtitle
		sup
		tagline
		title
		video
		].each do |positioned|
		class_eval("def #{positioned}(arg,style={}); @shoes.#{positioned}( arg, fit_in_grid( style)); end\n")
	end
	
	# positioned with style and block
	%w[
		check
		edit_box
		edit_line
		flow
		list_box
		stack
		].each do |positioned|
		class_eval("def #{positioned}(style={}); @shoes.#{positioned}( fit_in_grid( style)) { yield if block_given? }; end\n")
	end
	# positioned with one arg, style and block
	%w[
		button
		].each do |positioned|
		class_eval("def #{positioned}(arg,style={}); @shoes.#{positioned}( arg, fit_in_grid( style)) { yield if block_given? }; end\n")
	end
	
end