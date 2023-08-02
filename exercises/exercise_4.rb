require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# Create 3 more stores
Store.create(name: 'Surrey', annual_revenue: 224_000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Whistler', annual_revenue: 1_900_000, mens_apparel: true, womens_apparel: false)
Store.create(name: 'Yaletown', annual_revenue: 430_000, mens_apparel: true, womens_apparel: true)

# Fetch stores that carry men's apparel and assign the results to @mens_stores
@mens_stores = Store.where(mens_apparel: true)

# Output the name and annual revenue of stores that carry men's apparel
puts "Men's Apparel Stores:"
@mens_stores.each do |store|
  puts "Store Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

# Fetch stores that carry women's apparel and have annual revenue less than $1M
@womens_stores_less_than_1M = Store.where(womens_apparel: true, annual_revenue: 0..999999)

# Output the name and annual revenue of stores that carry women's apparel and have revenue less than $1M
puts "\nWomen's Apparel Stores with Annual Revenue < $1M:"
@womens_stores_less_than_1M.each do |store|
  puts "Store Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end