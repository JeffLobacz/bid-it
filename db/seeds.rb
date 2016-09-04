# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

# Number of employees for each employment_status
workgroup_number = 30

# Create CC list
shift_array = (1..100).to_a
bid_number = 1
seniority = Faker::Date.between(50.years.ago, 40.years.ago)
workgroup_number.times do
  random_shift = shift_array.delete_at(rand(shift_array.length))
  Seniority.create!(
    employment_status:      "CC",
    bid_number:             bid_number,
    first_name:             Faker::Name.first_name,
    last_name:              Faker::Name.last_name,
    seniority:              seniority,
    shift:                  random_shift
  )
  bid_number += 1
  random_amount = Faker::Date.between(3.years, 1.day)
  seniority += random_amount
end

# Create FT list
shift_array = (1..400).to_a
bid_number = 1
seniority = Faker::Date.between(50.years.ago, 40.years.ago)
workgroup_number.times do
  random_shift = shift_array.delete_at(rand(shift_array.length))
  Seniority.create!(
    employment_status:      "FT",
    bid_number:             bid_number,
    first_name:             Faker::Name.first_name,
    last_name:              Faker::Name.last_name,
    seniority:              seniority,
    shift:                  random_shift
  )
  bid_number += 1
  random_amount = Faker::Date.between(3.years, 1.day)
  seniority += random_amount
end

# Create PT list
shift_array = (1..200).to_a
bid_number = 1
seniority = Faker::Date.between(50.years.ago, 40.years.ago)
workgroup_number.times do
  random_shift = shift_array.delete_at(rand(shift_array.length))
  Seniority.create!(
    employment_status:      "PT",
    bid_number:             bid_number,
    first_name:             Faker::Name.first_name,
    last_name:              Faker::Name.last_name,
    seniority:              seniority,
    shift:                  random_shift
  )
  bid_number += 1
  random_amount = Faker::Date.between(3.years, 1.day)
  seniority += random_amount
end

seniorities = Seniority.all

puts "Seed finished"
puts "#{Seniority.count} seniorities created"
