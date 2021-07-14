#!/usr/bin/ruby -w

class Pet
	attr_accessor :name, :age, :gender, :color
end

class Cat < Pet
end

class Dog < Pet
	def bark
		puts "Woof!"
	end
end

class Snake < Pet
	attr_accessor :length
end

# Dog Example
d = Dog.new
puts d.class
d.name = "Lassie"
d.age = 5
d.bark
