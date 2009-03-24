# Author:: lp (mailto:lp@spiralix.org)
# Copyright:: 2009 Louis-Philippe Perron - Released under the terms of the MIT license
# 
# :title:Cordovan
class Cordovan
	
	def arc(style={})
		@shoes.arc( fit_in_grid( style))		
	end
	
	def arrow(style={})
		@shoes.arrow( fit_in_grid( style))
	end
	
	def background(pattern,style={})
		@shoes.background( pattern, fit_in_grid( style))
	end
	
	def banner(text,style={})
		@shoes.banner( text, fit_in_grid( style))
	end
	
	def button(text,style={})
		@shoes.button( text, fit_in_grid( style)) { yield if block_given? }
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
	
	def edit_box(style={})
		@shoes.edit_box( fit_in_grid( style)) { yield if block_given? }
	end
	
	def edit_line(style={})
		@shoes.edit_line( fit_in_grid( style)) { yield if block_given? }
	end
	
	def em(text,style={})
		@shoes.em( fit_in_grid( style)) { yield if block_given? }
	end
	
	def flow(style={})
		@shoes.flow( fit_in_grid( style)) { yield if block_given? }
	end
	
	def image(url,style={})
		@shoes.image( url, fit_in_grid( style))
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
	
	def oval(style={})
		@shoes.oval( fit_in_grid( style))
	end
	
	def para(text,style={})
		@shoes.para( text, fit_in_grid( style))
	end
	
	def progress(style={})
		@shoes.progress( fit_in_grid( style))
	end
	
	def radio(*args)
		if args[0].is_a?(Hash)
			@shoes.radio( fit_in_grid( args[0]))
		else
			@shoes.radio( args[0], fit_in_grid( args[1]))
		end
	end
	
	def rect(style={})
		@shoes.rect( fit_in_grid( style))
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
	
	def title(text,style={})
		@shoes.title( text, fit_in_grid( style)) { yield if block_given? }
	end
	
	# not integrated in lattice!!!  TO BE CONTINUED!!!
	def translate(style={})
		@shoes.translate(style)
	end
	
	def video(path,style={})
		@shoes.video( path, fit_in_grid( style))
	end
		
end