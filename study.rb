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

#Hashes (associative arrays, maps, or dictionaries)
ages = { "David" => 28, "Amy"=> 19, "Rob" => 42 }
puts ages["Rob"]  # 42
#can also {[1,"jan"] => "January"}
#--------
car = {brand:"BMW", year:2016, color: "red", length:205}
car.delete(:length)
puts car.values  # BMV 2016 red
#--------
cars = {
    bmw: { year:2016, color:"red"},
    mercedes: { year:2012, color:"black"},
    porsche: { year:2014, color:"white"}
}
puts cars[:bmw][:color] #red
# There are useful methods available for manipulating hashes:
# hash.delete(key) removes the key-value pair from hash by key.
# hash.key(value) returns the key for the given value in hash, nil if no matching value is found.
# hash.invert creates a new hash, reversing keys and values from hash; that is, in the new hash, the keys from hash become values and values become keys.
# hash.keys returns a new array with keys from hash.
# hash.values returns a new array containing all the values of hash.
# hash.length returns the length of hash as an integer.
#-------------------

# Iterators
arr = [2, 4, 6]
arr.each do |x|
    puts x
end
#--------
arr = [2, 4, 6]
sum = 0
arr.each do |x|
    sum += x
end
puts sum
#--------
sizes = {svga:800, hd:1366, uhd:3840}
sizes.each do |key, value|
    puts "#{key}=>#{value}"
end  # svga=>800 hd=>1366 uhd=>3840
#or same uses
sizes = {svga:800, hd:1366, uhd:3840}
sizes.each {|key, value| puts "#{key}=>#{value}"} # svga=>800 hd=>1366 uhd=>3840
#--------
10.times do
    puts "Hi"
end
#--------
#Letter Frequency Counter
text = "I am learning Ruby and it is fun!"
text.downcase!
freqs = {}
freqs.default = 0
text.each_char { |char| freqs[char] += 1}
("a".."z").each {|x| puts "#{x} : #{freqs[x]}" }  # a : 3   b : 1   c : 0


# Defining & Calling Methods
def say
    puts "Hi"
end
say  # Hi
say  # Hi
say  # Hi
#--------
def someMethod(*p) #optional parameters
    puts p
end
someMethod(25, "hello", true)
#--------
def sum(a, b)
    res = a+b
    return res
end
x = sum(5, 23)
puts x  #28
#-------
def squares(a, b, c)
    return a*a, b*b, c*c
end
arr = squares(2, 3, 6)
puts arr
#-------
def demo(a, b)
    a = b-2
    b = a-3
end
puts demo(5, 6)
#-------
def square(x)
    x*x
end
square(4).times {puts "Hi"}
#-------
def add(a, b)
    a+b
end
def mult(a, b)
    a*b
end
x = mult(add(2, 3), add(4, 7))
puts x
#Global Scope
$x = 42
def change
    $x = 8
end
change
puts $x
#Recursion
def fact(n)
    if n<= 1
        1
    else
        n * fact( n - 1 )
    end
end
puts fact(5)  #120

#Classes

class Person
    def initialize
      puts "Hi there"
    end
end
#-------
class Person
    def initialize
        puts "Hi there"
    end
end
p1 = Person.new
p2 = Person.new  
#Instance Variables
class Person
    def initialize(name)
      @name = name
    end
end
#--------
class Animal
    @age = 0
    def initialize(name, age)
      @name = name
      @age = age
    end
end
ob = Animal.new("Jacky", 3)
#Accessors
class Person
    def initialize(name)
        @name = name
    end
    def get_name
        @name
    end
end
p = Person.new("David")
puts p.get_name
#Setter Method
class Person
    def initialize(name)
        @name = name
    end
    def get_name
        @name
    end
    def set_name=(name)
        @name = name
    end
end
p = Person.new("David")
p.set_name = "Bob"
puts p.get_name
#--------
class Person
    def initialize(name)
        @name = name
    end
    def name
        @name
    end
    def name=(name)
        @name = name
    end
end
p = Person.new("David")
p.name = "Bob"
puts p.name
#Accessor Methods - self
class Person
    attr_accessor :name, :age
    def initialize(name, age)
        @name = name
        @age = age
    end
    def change(n, a)
        self.name = n
        self.age = a
    end
    def show_info
        puts "#{self.name} is #{self.age}"
    end
end
p = Person.new("David", 28)
p.change("Bob", 42)
p.show_info
