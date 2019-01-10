def alphabetize(arr, rev=false)
  arr.sort!
  if rev
    arr.reverse!
  end  
  return arr
end

number = [1,2,-1,0]

puts alphabetize(number)
puts alphabetize(number, true)
