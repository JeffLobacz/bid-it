# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

# Number of employees for each employment_status
workgroup_number = 5

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

# Create CC Shifts
shift_number = 1

start_times_array = []
start = Time.new(2016, 10, 1, 21, 0, 0)
5.times do
  start_times_array << start
  start += 30.minutes
end
# quit = start + 8.hours + 30.minutes
locations = %w[40 42A 42B 46A 46B 46C 48A 48B 49B 49A 47B 47A 45 43 41]
5.times do
  start_time = start_times_array[rand(start_times_array.length)]
  quit_time = start_time + (8.5*60*60)
  Shift.create!(
    main_location:          "Ramp",
    detail_location:        "Gates",
    shift_number:           shift_number,
    employment_status:      "FT CC",
    sun_start_time:         start_time,
    sun_quit_time:          quit_time,
    sun_location:           locations[rand(locations.length)],
  )
  # start += 30.minutes
  # quit = start + 8.hours + 30.minutes
  shift_number += 1
end

shifts = Shift.all

puts "Seed finished"
puts "#{Seniority.count} seniorities created"
puts "#{Shift.count} shifts created"
