# Author:: lp (mailto:lp@spiralix.org)
# Copyright:: 2009 Louis-Philippe Perron - Released under the terms of the MIT license
# 
# :title:Cordovan
class Cordovan
	# generic with no argument
	%w[
		ask_open_file
		ask_save_file
		ask_open_folder
		ask_save_folder
		exit
		].each do |generic|
		class_eval("def #{generic}; @shoes.#{generic}; end\n")
	end
	# generic with arguments
	%w[
		alert
		ask
		ask_color
		confirm
		debug
		error
		font
		gradient
		gray
		info
		rgb
		warn
		].each do |generic|
		class_eval("def #{generic}(*args); @shoes.#{color}(*args); end\n")
	end
end
