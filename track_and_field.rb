field = ["-"]* 20 # ["#","-","-",]
player = { avatar: "#", position: 0 }
field.insert(player[:position], player[:avatar])
p field


right = 1
left = -1

loop do
  system 'clear'
  p field.join
  puts "a left, d right"
  input = gets.chomp

  case input
  when "q"
    exit
  when "a"
   field.delete_at(player[:position])
   player[:position] += left
   field.insert( player[:position], player[:avatar])
  when "d"
   field.delete_at(player[:position])
   player[:position] += right
   field.insert( player[:position], player[:avatar])
  when "w"
   field.delete_at(player[:position])

   player[:position] += right
   player[:position] += right
   field.insert( player[:position], player[:avatar])


   field.delete_at(player[:position])
   player[:position] += left
   field.insert( player[:position], player[:avatar])
   p field.join

   field.delete_at(player[:position])
   player[:position] += left
   field.insert( player[:position], player[:avatar])

   player[:position] += right
   player[:position] += right
   field.insert( player[:position], player[:avatar])
   p field.join

   field.delete_at(player[:position] + (2 * left))
   field.delete_at(player[:position] + left)
  
   field.insert( player[:position], player[:avatar])
   sleep 1
  when "s"
    p "Javelin throw"
    sleep 1
   
  end

  if player[:position] == field.length - 1
    p field.join
    p "Boom You Win!!!"
    exit
  end

end



