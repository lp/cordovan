# Author:: lp (mailto:lp@spiralix.org)
# Copyright:: 2009 Louis-Philippe Perron - Released under the terms of the MIT license
# 
# :title:Cordovan
class Cordovan
	
	def arc(style={})
		in_grid(style) do |props|
			@shoes.arc(props)
		end
	end
	
	def arrow(style={})
		in_grid(style) do |props|
			@shoes.arrow(props)
		end
	end
	
	def background(color,style={})
		@shoes.background(color,style={})
	end
	
	def border(color,style={})
		@shoes.border(color,style={})
	end
	
	def button(text,style={})
		in_grid(style) do |props|
			@shoes.button(text,props) { yield if block_given? }
		end
	end
	
	def cap(type)
		@shoes.cap(type)
	end
	
	def check(style={})
		in_grid(style) do |props|
			@shoes.check(props) { yield if block_given? }
		end
	end
	
	def edit_box(style={})
		in_grid(style) do |props|
			@shoes.edit_box(props) { yield if block_given? }
		end
	end
	
	def edit_line(style={})
		in_grid(style) do |props|
			@shoes.edit_line(props) { yield if block_given? }
		end
	end
	
	def fill(color)
		@shoes.fill(color)
	end
	
	def flow(style={})
		in_grid(style) do |props|
			@shoes.flow(props)
		end
	end
	
	def image(url,style={})
		in_grid(style) do |props|
			@shoes.image(url,props)
		end
	end
	
	def list_box(style={})
		in_grid(style) do |props|
			@shoes.list_box(props) { yield if block_given? }
		end
	end
	
	def oval(style={})
		in_grid(style) do |props|
			@shoes.oval(props)
		end
	end
	
	def para(text,style={})
		in_grid(style) do |props|
			@shoes.para(text,props)
		end
	end
	
	def progress(style={})
		in_grid(style) do |props|
			@shoes.progress(props) { yield if block_given? }
		end
	end
	
	def radio(group=nil,style={})
		if group.nil?
			in_grid(style) do |props|
				@shoes.radio(props)
			end
		else
			in_grid(style) do |props|
				@shoes.radio(group,props)
			end
		end
	end
	
	def stack(style={})
		in_grid(style) do |props|
			@shoes.stack(props) { yield if block_given? }
		end
	end
	
	def stroke(color)
		@shoes.stroke(color)
	end
	
end