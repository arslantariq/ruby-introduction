puts "Enter the string : "
text = gets.chomp
puts "Enter string to search : "
redact = gets.chomp
redact.downcase!

words = text.split(" ")
words.each { |word|
  if word.downcase == redact
    print "REDACTED "
  else
    print word + " "
  end
}
