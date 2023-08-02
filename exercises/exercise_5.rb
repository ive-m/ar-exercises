require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# Calculate and output the total revenue for all stores
total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue for the entire company: $#{total_revenue}"

# Calculate and output the average annual revenue for all stores
average_revenue = Store.average(:annual_revenue)
puts "Average Annual Revenue for all stores: $#{average_revenue}"

# Output the number of stores generating $1M or more in annual sales
high_revenue_stores_count = Store.where("annual_revenue >= ?", 1_000_000).size
puts "Number of stores generating $1M or more in annual sales: #{high_revenue_stores_count}"