require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

### Exercise 6: One-to-many association
@store1.employees.create(first_name: "Gojo", last_name: "Satoru", hourly_rate: 60)
@store1.employees.create(first_name: "Yuuji", last_name: "Itadori", hourly_rate: 70)

@store2.employees.create(first_name: "Harry", last_name: "Potter", hourly_rate: 90)
@store2.employees.create(first_name: "Rimuru", last_name: "Tempest", hourly_rate: 100)