# Author:: lp (mailto:lp@spiralix.org)
# Copyright:: 2009 Louis-Philippe Perron - Released under the terms of the MIT license
# 
# :title:Cordovan
class Cordovan
	
	def animate(fps)
		@shoes.animate(fps) { yield if block_given? }
	end
	
	def arc(style={})
		@shoes.arc( fit_in_grid( style))		
	end
	
	def arrow(style={})
		@shoes.arrow( fit_in_grid( style))
	end
	
	def background(pattern,style={})
		@shoes.background( pattern, style={})
	end
	
	def banner(text,style={})
		@shoes.banner( text, fit_in_grid( style))
	end
	
	def border(color,style={})
		@shoes.border( color, style={})
	end
	
	def button(text,style={})
		@shoes.button( text, fit_in_grid( style)) { yield if block_given? }
	end
	
	def cap(type)
		@shoes.cap(type)
	end
	
	def caption(text,style={})
		@shoes.caption( text, fit_in_grid( style))
	end
	
	def check(style={})
		@shoes.check( fit_in_grid( style)) { yield if block_given? }
	end
	
	def code(text,style={})
		@shoes.code(text, fit_in_grid( style))
	end
	
	def del(text,style={})
		@shoes.del(text, fit_in_grid( style))
	end
	
	def dialog(styles={})
		@shoes.dialog(style) { yield if block_given? }
	end
	
	def edit_box(style={})
		@shoes.edit_box( fit_in_grid( style)) { yield if block_given? }
	end
	
	def edit_line(style={})
		@shoes.edit_line( fit_in_grid( style)) { yield if block_given? }
	end
	
	def em(text,style={})
		@shoes.em( fit_in_grid( style)) { yield if block_given? }
	end
	
	def every(seconds)
		@shoes.every(seconds) { yield if block_given? }
	end
	
	def fill(color)
		@shoes.fill(color)
	end
	
	def flow(style={})
		@shoes.flow( fit_in_grid( style)) { yield if block_given? }
	end
	
	def image(url,style={})
		@shoes.image( url, fit_in_grid( style))
	end
	
	def imagesize(path)
		@shoes.imagesize(path)
	end
	
	def ins(text,style={})
		@shoes.ins( text, fit_in_grid( style))
	end
	
	def inscription(text,style={})
		@shoes.inscription( text, fit_in_grid( style))
	end
	
	# not integrated in lattice!!!  TO BE CONTINUED!!!
	def line(style={})
		@shoes.line(style)
	end
	
	def link(text,style={})
		@shoes.link( text, fit_in_grid( style))
	end
	
	def list_box(style={})
		@shoes.list_box( fit_in_grid( style)) { yield if block_given? }
	end
	
	def nofill
		@shoes.nofill
	end
	
	def nostroke
		@shoes.nostroke
	end
	
	def oval(style={})
		@shoes.oval( fit_in_grid( style))
	end
	
	def para(text,style={})
		@shoes.para( text, fit_in_grid( style))
	end
	
	def progress(style={})
		@shoes.progress( fit_in_grid( style))
	end
	
	def radio(group=nil,style={})
		if group.nil?
			@shoes.radio( fit_in_grid( style))
		else
			@shoes.radio( group, fit_in_grid( style))
		end
	end
	
	def rect(style={})
		@shoes.rect( fit_in_grid( style))
	end
	
	def rotate(degrees)
		@shoes.rotate(degrees)
	end
	
	def shape(style={})
		@shoes.shape( fit_in_grid( style)) { yield if block_given? }
	end
	
	def stack(style={})
		@shoes.stack( fit_in_grid( style)) { yield if block_given? }
	end
	
	def star(style={})
		@shoes.stack( fit_in_grid( style)) { yield if block_given? }
	end
	
	def stroke(color)
		@shoes.stroke(color)
	end
	
	def strokewidth(width)
		@shoes.strokewidth(width)
	end
	
	def strong(text,style={})
		@shoes.stack( text, fit_in_grid( style))
	end
	
	def sub(text,style={})
		@shoes.sub( text, fit_in_grid( style))
	end
	
	def subtitle(text,style={})
		@shoes.sub( text, fit_in_grid( style))
	end
	
	def sup(text,style={})
		@shoes.sup( text, fit_in_grid( style))
	end
	
	def tagline(text,style={})
		@shoes.sup( text, fit_in_grid( style))
	end
	
	def timer(seconds)
		@shoes.timer(seconds) { yield if block_given? }
	end
	
	def title(text,style={})
		@shoes.title( text, fit_in_grid( style)) { yield if block_given? }
	end
	
	def transform(where)
		@shoes.transform(where)
	end
	
	# not integrated in lattice!!!  TO BE CONTINUED!!!
	def translate(style={})
		@shoes.transform(style)
	end
	
	def video(path,style={})
		@shoes.video( path, fit_in_grid( style))
	end
	
	def window(style={})
		@shoes.window(style)
	end
		
end