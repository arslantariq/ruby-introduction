print "Provide string : "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
  puts "Updated string : #{user_input}"
else
  puts "No s/S in string : #{user_input}"
end
