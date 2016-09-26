# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

# Number of employees for each employment_status
workgroup_number = 20

# Create CC list
shift_array = (1..workgroup_number*rand(0.3..0.8)).to_a
bid_number = 1
seniority = Faker::Date.between(50.years.ago, 40.years.ago)
employee_number = Faker::Number.between(100000, 110000)
bid_time = DateTime.new(2017,1,9,5)
qualified_array = ["Exp", "", "", "", "", "", "", ""]
workgroup_number.times do
  random_shift = shift_array.delete_at(rand(shift_array.length))
  Seniority.create!(
    employment_status:      "CC",
    bid_number:             bid_number,
    first_name:             Faker::Name.first_name,
    last_name:              Faker::Name.last_name,
    employee_number:        employee_number,
    seniority:              seniority,
    bid_time:               bid_time,
    qualification:          qualified_array[rand(qualified_array.length)],
    shift:                  random_shift
  )
  bid_number += 1
  random_amount = Faker::Date.between(1.years, 1.day)
  seniority += random_amount
  random_number = Faker::Number.between(1,200)
  employee_number += random_number
  bid_time = bid_time + 5.minutes
end

# Create FT list
shift_array = (1..workgroup_number*rand(0.3..0.8)).to_a
bid_number = 1
seniority = Faker::Date.between(50.years.ago, 40.years.ago)
employee_number = Faker::Number.between(100000, 110000)
bid_time = DateTime.new(2017,1,10,5)
qualified_array = ["Exp", "", "", "", "", "", "", ""]
workgroup_number.times do
  random_shift = shift_array.delete_at(rand(shift_array.length))
  Seniority.create!(
    employment_status:      "FT",
    bid_number:             bid_number,
    first_name:             Faker::Name.first_name,
    last_name:              Faker::Name.last_name,
    employee_number:        employee_number,
    seniority:              seniority,
    bid_time:               bid_time,
    qualification:          qualified_array[rand(qualified_array.length)],
    shift:                  random_shift
  )
  bid_number += 1
  random_amount = Faker::Date.between(1.years, 1.day)
  seniority += random_amount
  random_number = Faker::Number.between(1,200)
  employee_number += random_number
  bid_time = bid_time + 5.minutes
end

# Create PT list
shift_array = (1..workgroup_number*rand(0.3..0.8)).to_a
bid_number = 1
seniority = Faker::Date.between(50.years.ago, 40.years.ago)
employee_number = Faker::Number.between(100000, 110000)
bid_time = DateTime.new(2017,1,11,5)
qualified_array = ["Exp", "", "", "", "", "", "", ""]
workgroup_number.times do
  random_shift = shift_array.delete_at(rand(shift_array.length))
  Seniority.create!(
    employment_status:      "PT",
    bid_number:             bid_number,
    first_name:             Faker::Name.first_name,
    last_name:              Faker::Name.last_name,
    employee_number:        employee_number,
    seniority:              seniority,
    bid_time:               bid_time,
    qualification:          qualified_array[rand(qualified_array.length)],
    shift:                  random_shift
  )
  bid_number += 1
  random_amount = Faker::Date.between(1.years, 1.day)
  seniority += random_amount
  random_number = Faker::Number.between(1,200)
  employee_number += random_number
  bid_time = bid_time + 5.minutes
end

seniorities = Seniority.all

puts "Seed finished"
puts "#{Seniority.count} seniorities created"
