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