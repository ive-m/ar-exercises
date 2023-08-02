require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# Ask for a store name from the user
puts "Enter the name of the new store:"
store_name = gets.chomp

# Attempt to create the store with the provided name
new_store = Store.new(name: store_name)

if new_store.save
  puts "Store '#{store_name}' created successfully!"
else
  puts "Errors occurred while creating the store:"
  new_store.errors.full_messages.each { |message| puts message }
end