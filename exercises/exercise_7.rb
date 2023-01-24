require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

### Exercise 7: Validations for both models
puts "Enter a store name:"
store = gets.chomp

newStore = Store.create(
  name: store
)

newStore.valid?
puts newStore.errors.full_messages
