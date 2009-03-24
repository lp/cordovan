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
		clipboard
		close
		exit
		gutter
		location
		mouse
		nofill
		nostroke
		owner
		started?
		].each do |generic|
		class_eval("def #{generic}; @shoes.#{generic}; end\n")
	end
	# generic with arguments
	%w[
		alert
		ask
		ask_color
		border
		cap
		confirm
		debug
		error
		fill
		font
		gradient
		gray
		imagesize
		info
		rgb
		rotate
		stroke
		strokewidth
		transform
		visit
		warn
		window
		].each do |generic|
		class_eval("def #{generic}(*args); @shoes.#{generic}(*args); end\n")
	end
	# generic with arguments and block
	%w[
		animate
		dialog
		download
		every
		timer
		].each do |generic|
		class_eval("def #{generic}(*args); @shoes.#{generic}(*args) { yield if block_given? }; end\n")
	end
	# generic with block only
	%w[
		click
		finish
		hover
		keypress
		leave
		motion
		release
		start
		].each do |generic|
		class_eval("def #{generic}; @shoes.#{generic} { yield if block_given? }; end\n")
	end
end
