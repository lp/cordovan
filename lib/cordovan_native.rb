# Author:: lp (mailto:lp@spiralix.org)
# Copyright:: 2009 Louis-Philippe Perron - Released under the terms of the MIT license
# 
# :title:Cordovan
class Cordovan
	
	def animate(fps)
		@shoes.animate(fps) { yield if block_given? }
	end
	
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
	
	def background(pattern,style={})
		@shoes.background(pattern,style={})
	end
	
	def banner(text,style={})
		in_grid(style) do |props|
			@shoes.banner(text,props)
		end
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
	
	def caption(text,style={})
		in_grid(style) do |props|
			@shoes.caption(text,props)
		end
	end
	
	def check(style={})
		in_grid(style) do |props|
			@shoes.check(props) { yield if block_given? }
		end
	end
	
	def code(text,style={})
		in_grid(style) do |props|
			@shoes.code(text,props)
		end
	end
	
	def del(text,style={})
		in_grid(style) do |props|
			@shoes.del(text,props)
		end
	end
	
	def dialog(styles={})
		@shoes.dialog(style) { yield if block_given? }
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
	
	def em(text,style={})
		in_grid(style) do |props|
			@shoes.edit_line(props) { yield if block_given? }
		end
	end
	
	def every(seconds)
		@shoes.every(seconds) { yield if block_given? }
	end
	
	def fill(color)
		@shoes.fill(color)
	end
	
	def flow(style={})
		in_grid(style) do |props|
			@shoes.flow(props) { yield if block_given? }
		end
	end
	
	def image(url,style={})
		in_grid(style) do |props|
			@shoes.image(url,props)
		end
	end
	
	def imagesize(path)
		@shoes.imagesize(path)
	end
	
	def ins(text,style={})
		in_grid(style) do |props|
			@shoes.ins(text,props)
		end
	end
	
	def inscription(text,style={})
		in_grid(style) do |props|
			@shoes.inscription(text,props)
		end
	end
	
	# not integrated in lattice!!!  TO BE CONTINUED!!!
	def line(style={})
		@shoes.line(style)
	end
	
	def link(text,style={})
		in_grid(style) do |props|
			@shoes.link(text,props)
		end
	end
	
	def list_box(style={})
		in_grid(style) do |props|
			@shoes.list_box(props) { yield if block_given? }
		end
	end
	
	def nofill
		@shoes.nofill
	end
	
	def nostroke
		@shoes.nostroke
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
			@shoes.progress(props)
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
	
	def rect(style={})
		in_grid(style) do |props|
			@shoes.rect(props)
		end
	end
	
	def rotate(degrees)
		@shoes.rotate(degrees)
	end
	
	def shape(style={})
		in_grid(style) do |props|
			@shoes.shape(props) { yield if block_given? }
		end
	end
	
	def stack(style={})
		in_grid(style) do |props|
			@shoes.stack(props) { yield if block_given? }
		end
	end
	
	def star(style={})
		in_grid(style) do |props|
			@shoes.stack(props) { yield if block_given? }
		end
	end
	
	def stroke(color)
		@shoes.stroke(color)
	end
	
	def strokewidth(width)
		@shoes.strokewidth(width)
	end
	
	def strong(text,style={})
		in_grid(style) do |props|
			@shoes.stack(text,props)
		end
	end
	
	def sub(text,style={})
		in_grid(style) do |props|
			@shoes.sub(text,props)
		end
	end
	
	def subtitle(text,style={})
		in_grid(style) do |props|
			@shoes.sub(text,props)
		end
	end
	
	def sup(text,style={})
		in_grid(style) do |props|
			@shoes.sup(text,props)
		end
	end
	
	def tagline(text,style={})
		in_grid(style) do |props|
			@shoes.sup(text,props)
		end
	end
	
	def timer(seconds)
		@shoes.timer(seconds) { yield if block_given? }
	end
	
	def title(text,style={})
		in_grid(style) do |props|
			@shoes.title(text,props) { yield if block_given? }
		end
	end
	
	def transform(where)
		@shoes.transform(where)
	end
	
	# not integrated in lattice!!!  TO BE CONTINUED!!!
	def translate(style={})
		@shoes.transform(style)
	end
	
	def video(path,style={})
		in_grid(style) do |props|
			@shoes.video(path,props)
		end
	end
	
	def window(style={})
		@shoes.window(style)
	end
		
end