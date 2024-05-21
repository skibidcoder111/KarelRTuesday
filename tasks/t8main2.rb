require_relative "robotfacenord.rb"

def task ()
	karel =RobotFaceNord.new(5, 5, 0)
	karel.return
end



if __FILE__ == $0
  if $graphical
     screen = window(8, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end
