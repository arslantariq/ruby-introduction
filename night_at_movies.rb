movies ={
   
  first: 5 ,
  second: 4 ,
  third: 3 
}

puts "Enter your choice add, update, display or delete ? "
choice = gets.chomp

case choice
  when "add"
  	puts "Enter title of movie ?"
  	title = gets.chomp
  	if movies[title.to_sym].nil?
  	puts "Enter rating ?"
  	rating = gets.chomp
  	movies[title.to_sym]=rating.to_i
    puts "Movie '#{title}' with rating '#{rating}' is added"
    else
      puts "movie already exist"
    end
  	puts movies
  when "update"
  	puts "Enter title of movie ?"
  	title = gets.chomp
  	if movies[title.to_sym].nil?
        puts "movie doesn't exist"
    else
      puts "Enter rating ?"
  	  rating = gets.chomp
  	  movies[title.to_sym]=rating.to_i
      puts "Movie '#{title}' with rating '#{rating}' is updated"
    end
    puts movies
  when "display"
  	movies.each {|movie,rating|
    puts "#{movie}: #{rating}"     
    }
  when "delete"
  	puts "Enter title of movie ?"
  	title = gets.chomp
  	if movies[title.to_sym].nil?
        puts "movie doesn't exist"
    else
      movies.delete(title.to_sym)
      puts "Movie '#{title}' is deleted"
    end
    puts movies
	else
  	puts "Error!"
end
