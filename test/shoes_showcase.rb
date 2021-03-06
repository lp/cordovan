class Tester < Shoes
	require File.join( File.dirname( File.expand_path(__FILE__)), '..', 'lib', 'cordovan')
	
	url '/', :load
	url 'other', :other
	
	Cordovan.craft('magical',:v_grid => 4, :h_grid => 4) do |craft|
		craft.stroke craft.red; craft.fill craft.coral
		craft.rect(:v_pos => 1,:h_pos => 1,:v_span => 1,:h_span => 3)
		craft.button("Ou-la-la!!!",:v_pos => 1, :h_pos => 1, :v_span => 1, :h_span => 3) { alert("this has closures!!") }
	end
	
	def load
			Cordovan.lattice(binding,:height => 700,:width => 500, :v_grid => 12, :h_grid => 12) do |cordovan|
				cordovan.background(cordovan.aqua)
				cordovan.stroke cordovan.red; cordovan.fill cordovan.azure
				cordovan.rect(:v_pos => 10, :h_pos => 8, :v_span => 1, :h_span => 1)
				cordovan.button("okyyy!!", :v_pos => 1, :h_pos => 1, :v_span => 1, :h_span => 1) {clear; other}
				cordovan.edit_box(:v_pos => 4, :h_pos => 2, :v_span => 2, :h_span => 3)
				cordovan.magical(:v_pos => 7, :h_pos => 4, :v_span => 2, :h_span => 3)
				cordovan.lattice(:v_grid => 4, :h_grid => 4,:v_pos => 10, :h_pos => 1, :v_span => 2, :h_span => 6) do |sub_cordovan|
					sub_cordovan.button("in secong lattice", :v_pos => 1, :h_pos => 1, :v_span => 3, :h_span => 3) { alert("very much closure...") }
				end
			end
	end
	
	def other
		para "other"
		stroke red; fill blue
		rect(:top => 100, :left => 40, :width => 50, :height => 50)
	end
	
end
Shoes.app :title => 'WidgetTester', :width => 500, :height => 700
