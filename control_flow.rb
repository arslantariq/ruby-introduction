print "First integer please: "
user_num = Integer(gets.chomp)

print "Second integer please: "
user_num2 = Integer(gets.chomp)

if user_num < user_num2
  puts "#{user_num} is less then #{user_num2}"
elsif user_num > user_num2
  puts "#{user_num} is greater then #{user_num2}"
else
  puts "Both numbers are equal"
end

puts "Comparision results are shown below"

print "#{user_num} == #{user_num2} : "
puts user_num == user_num2

print "#{user_num} != #{user_num2} : "
puts user_num != user_num2

print "#{user_num} >= #{user_num2} : "
puts user_num >= user_num2

print "#{user_num} <= #{user_num2} : "
puts user_num <= user_num2

print "true && true : "
puts true && true

print "true && false : "
puts true && false

print "false && true : "
puts false && true

print "false && false : "
puts false && false

print "true || true : "
puts true || true

print "true || false : "
puts true || false

print "false || true : "
puts false || true

print "false || false : "
puts false || false

print "!false : "
puts !false

print "!true : "
puts !true
