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
#---------
class Person
    def self.info
        puts "A Person"
    end
end
Person.info  # A Person
#----------
class Person
    @@count = 0
    def initialize
        @@count += 1
    end
    def self.get_count
        @@count
    end
end
p1 = Person.new
p2 = Person.new
puts Person.get_count  # 2
# Class constant
class Calc
    PI = 3.14
end
puts Calc::PI
# The to_s Method
class Person
    def initialize(n, a)
      @name = n
      @age = a
    end
    def to_s
        "#{@name} is #{@age} years old."
    end
end
p = Person.new("David", 28)
puts p  #David is 28 years old.
#he to_s method also gets called when the object is used as a value in a string, like "#{p}"

#Inheritance
class Animal
    def initialize(name, color)
      @name = name
      @color = color
    end
    def speak
      puts "Hi"
    end
  end
  
  class Dog < Animal
end
#-----------
class Animal
    def initialize(name, color)
        @name = name
        @color = color
    end
    def speak
        puts "Hi"
    end
end

class Dog < Animal
end
class Cat < Animal
    attr_accessor :age
    def speak
        puts "Meow"
    end
end

c = Cat.new("Lucy", "white")
c.age = 2
c.speak  # Meow

#super
class Animal
    def speak
        puts "Hi"
    end
end

class Cat < Animal
    def speak
        super
        puts "Meow"
    end
end
c = Cat.new
c.speak
#-----------
class Animal
    def initialize(name)
        @name = name
    end
end

class Cat  < Animal
    def initialize(name, age)
        super(name)
        @age = age
    end
    def to_s
        "#{@name} is #{@age} years old."
    end
end
c = Cat.new("Bob", 3)
puts c

#Operator Overloading
class Shape
    attr_accessor :h, :w
    def initialize(h, w)
        self.h = h
        self.w = w
    end
    def +(other)
        Shape.new(self.h+other.h, self.w+other.w)
    end
end
a = Shape.new(7, 4)
b = Shape.new(9, 18)
c = a+b
puts c.h  # 16
puts c.w  # 22

# Access Modifiers
class Person
    def initialize(age)
        @age = age
    end
    def show
        puts "#{@age} years = #{days_lived} days"
    end

    private  #private
    def days_lived
        @age * 365
    end
end
p = Person.new(42)
p.show  # 42 years = 15330 days
#-----------
#Protected
class Product
    attr_accessor :name, :num
    def initialize(name, num)
        @name = name
        @num = num
    end
    def ==(other)
        self.id == other.id
    end
    protected
    def id
        name.length*num
    end
end
p1 = Product.new("PC", 5)
p2 = Product.new("Laptop", 3)
puts (p1 == p2) # false

# Modules
# A module is a collection of methods that can be used in other classes. 
# Ruby does not allow a class to inherit from multiple classes.

module Flayable
    def fly 
        puts "I'm flying"
    end
end
#---------
module Flyable
    def fly
      puts "I'm flying!"
    end
end
  
  class Vehicle
  end
  
  class Car < Vehicle
  end
  
  class Jet < Vehicle
    include Flyable
  end
  
  class Plane < Vehicle
    include Flyable
  end

  ob = Plane.new
  ob.fly   # I'm flying

# Mixins
# If it's an "is-a" relationship, choose class inheritance. If it's a "has-a" relationship, choose modules.
 class Human
    include Walkable
    include Speakable
    include Runnable
  end 

  class Cat
    attr_accessor :name, :age
    include Comparable
    def initialize(n, a)
        self.name = n
        self.age = a
    end
    def <=>(other)            # <=>  to compare that all comparisons
        self.age <=> other.age
    end
end
c1 = Cat.new("Bob", 3)
c2 = Cat.new("Lucy", 7)
puts c1 < c2  #true

# Namespacing
# It becomes easy for us to recognize related classes in our code. We can have the same class names across different modules.
module Mammal
    class Dog
        def speak
            puts "Woof!"
        end
    end

    class Cat
        def speak
            puts "Meow"
        end
    end
end

a = Mammal::Dog.new
b = Mammal::Cat.new
a.speak
b.speak
#-------------
module MyMath
    PI = 3.14
    def self.square(x)
        x*x
    end
    def self.negate(x)
        -x
    end
    def self.factorial(x)
         (1..x).inject(:*) || 1
    end
end
puts MyMath.factorial(8)

# Structs  
# Structs is a built-in Ruby class and makes it shorter to define simple classes, accessors, and their initialize methods.

Point = Struct.new(:x, :y)
origin = Point.new(0,0)
dest = Point.new(15, 42)
puts dest.y  # 42

# Ostruct
require "ostruct"

person = OpenStruct.new  # or can also OpenStruct.new(name: "John", age:42, salary:250)
person.name = "John"
person.age = 42
person.salary = 250
puts person.name  # John

# Stadart Classes
#square root
puts Math.sqrt(9)

#pi constant
puts Math::PI

#trigonometry (sin, cos, tan)
puts Math::cos(0)

#current time
t = Time.now
puts t.inspect

#year, month, day
puts t.year
puts t.month
puts t.day

#custom date
t = Time.new(1988, 6, 10)

#day of week: 0 is Sunday
puts t.wday

#day of year
puts t.yday

