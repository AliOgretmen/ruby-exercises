=begin
self study with Ruby
=end
 

# Comparison Operators

myVar = 'new'
compareVar = 'new'
puts myVar.eql?(compareVar)

# if Statements

num = 8
if num == 3
    puts "Number is 3"
elsif num == 10
    puts "Number is 10"
elsif num == 7
    puts "Number is 7"
else
    puts "Not found"
end
#------
a = 42
unless a < 10
    puts "Yes"
else
    puts "No"
end

# case Statements

a = 2
case a
when 1
    puts "One"
when 2
    puts "Two"
when 3
    puts "Three"
end
#------
age = 18
case age
when 1, 2, 3
    puts "Little baby"
when 4, 5
    puts "Child"
else
    puts "Not a baby"
end

# Loops

x = 0
while x < 10
    puts x
    x += 1
end
#------
t = 5
until t > 10
    puts "t = #{t}"
    t += 1
 end  
#------
 for i in 1..5
    break if i > 3
    puts i
 end
 #------
 for i in 0..10
    next if i %2 == 0
    puts i
end
#------
x = 0
loop do  
    puts x
    x += 1
    break if x > 10
end

 #Ranges (The to_a method is used to convert a range to an array)

 a = (1..7).to_a  # ..
puts a
puts '-----'
b = (79...82).to_a # .. not execute high value
puts b
puts '-----'
c = ("a".."d").to_a
puts c
#------
age = 42
case age
when 0..14
    puts "Child"
when 15..24
    puts "Youth"
when 25..64
    puts "Adult"
else
    puts "Senior"
end

# Arrays

arr = [5, "Dave", 15.88, false]
arr << 8  # (<<) -->  arr.push(8)
puts arr
#--------
arr = [5, "Dave", 15.88, false]
arr.insert(2, 8)
puts arr
#--------
arr = [1, 2, 3]
arr.pop
print arr  # [1, 2]
#--------
arr = [2, 4, 6, 8]
arr.delete_at(2)
print arr  # [2, 4, 8]

#--------  Array Ranges
nums = [6, 3, 8, 7, 9]
print nums[1..3]  # [3, 8, 7]  -- can also print nums[1...3]

#--------  Array Manipulations
a = [1, 2, 3, 4, 5]
b = [2, 4, 5, 6]
res = a - b
print res  # [1, 3]  
# [1, 2, 3] * 3 results in [1, 2, 3, 1, 2, 3, 1, 2, 3]
#--------
a = [2, 3, 7, 8]
b = [2, 7, 9]
print a & b  # [2, 7]
#--------
a = [2, 3, 7, 8]
b = [2, 7, 9]
print a | b   # [2, 3, 7, 8, 9]
#--------
arr = [5, 3, 8]
res = arr.reverse
print res
#--------
arr = [5, 3, 8]
res = arr.reverse!
print res   
=begin If you use the reverse method without (!) and don’t save it to a new variable, 
it will just reverse it once and keep the original value.
=end
#--------
=begin
array.length or array.size returns the number of elements in array.
array.sort returns a new array with the elements sorted
array.uniq returns a new array with duplicate values removed from array.
array.uniq! removes duplicates in place.
array.freeze safeguards the array, preventing it from being modified.
array.include?(obj) returns true if obj is present in array, false otherwise.
array.min returns the element with the minimum value.
array.max returns the element with the maximum value.
=end

