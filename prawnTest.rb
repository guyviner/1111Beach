require "prawn"

Prawn::Document.generate("hello.pdf") do
	
  dice = "./invitation.jpg"
    image dice, :at => [-45, 780], :scale => 0.25 
 
    draw_text "1903", :at => [370,572.5], :size => 28
  draw_text "Hello", :at => [200,200], :size => 26
	draw_text "World", :at => [200,170], :size => 26
end
