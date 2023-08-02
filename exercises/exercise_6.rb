require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

# Create employees for @store1 (Burnaby)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 50)
@store1.employees.create(first_name: "Marie", last_name: "Kia", hourly_rate: 40)
@store1.employees.create(first_name: "Val", last_name: "Stark", hourly_rate: 50)

# Create employees for @store2 (Richmond)
@store2.employees.create(first_name: "Jane", last_name: "Smith", hourly_rate: 55)
@store2.employees.create(first_name: "Mike", last_name: "Johnson", hourly_rate: 45)
@store2.employees.create(first_name: "Lui", last_name: "Ser", hourly_rate: 15)
@store2.employees.create(first_name: "Stuart", last_name: "Little", hourly_rate: 20)
