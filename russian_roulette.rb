def russian_roulette()
  gun = []
  6.times do
    gun << 0
  end
  gun[rand(0...6)] = 1

  gun_array = *(1..6)
  # print gun_array

  puts "pick a number 1 to 6"
  player_choose = gets.chomp.to_i
  # print player_choose

  index_chosen = gun_array.index(player_choose)
  bullet_in = gun.find_index(1)

  if  bullet_in == index_chosen
    puts "Bang! you die.."
  else
    puts "bullet was in " + (bullet_in + 1).to_s
    puts "you picked " + (index_chosen + 1).to_s
    puts "you survived. would you want to try again? type yes or no"
    answer = gets.chomp
    if answer == "yes"
      russian_roulette()
    else
      return
    end
  end
end
russian_roulette()
