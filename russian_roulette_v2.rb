def load_gun()
  gun = Array.new(6, 0)
  gun[rand(0...6)] = 1
  return gun
end

def take_shot(gun_array)
  gun_array.shift
end

revolver = load_gun()
is_alive = true

while is_alive
  puts "Press enter to pull trigger.."
  gets
  if take_shot(revolver) == 1
    puts "Bang! You are dead."
    is_alive = false
  else
    puts "You get to live. For now..."
  end
end
