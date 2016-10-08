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
  Seniority.create!(
    employment_status:      "CC",
    bid_number:             bid_number,
    first_name:             Faker::Name.first_name,
    last_name:              Faker::Name.last_name,
    employee_number:        employee_number,
    seniority:              seniority,
    bid_time:               bid_time,
    qualification:          qualified_array[rand(qualified_array.length)],
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
  Seniority.create!(
    employment_status:      "FT",
    bid_number:             bid_number,
    first_name:             Faker::Name.first_name,
    last_name:              Faker::Name.last_name,
    employee_number:        employee_number,
    seniority:              seniority,
    bid_time:               bid_time,
    qualification:          qualified_array[rand(qualified_array.length)],
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
  Seniority.create!(
    employment_status:      "PT",
    bid_number:             bid_number,
    first_name:             Faker::Name.first_name,
    last_name:              Faker::Name.last_name,
    employee_number:        employee_number,
    seniority:              seniority,
    bid_time:               bid_time,
    qualification:          qualified_array[rand(qualified_array.length)],
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
  # watched
watched_array = [true, false]
  # Days OFF
days_off_array = %w[SM MT TW WQ QF FJ JS]
  # Start Times
start_times_array = []
start = Time.new(2016, 10, 1, 21, 0, 0)
(8*4).times do
  start_times_array << start
  start += 15.minutes
end
locations = %w[40 42A 42B 46A 46B 46C 48A 48B 49B 49A 47B 47A 45 43 41]
5.times do
  weekend = days_off_array[rand(days_off_array.length)]
  unless weekend == "JS" || weekend == "SM"
    sun_start = start_times_array[rand(start_times_array.length)]
    sun_quit = sun_start + (8.5*60*60)
  end
  unless weekend == "SM" || weekend == "MT"
    mon_start = start_times_array[rand(start_times_array.length)]
    mon_quit = mon_start + (8.5*60*60)
  end
  unless weekend == "MT" || weekend == "TW"
    tue_start = start_times_array[rand(start_times_array.length)]
    tue_quit = tue_start + (8.5*60*60)
  end
  unless weekend == "TW" || weekend == "WQ"
    wed_start = start_times_array[rand(start_times_array.length)]
    wed_quit = wed_start + (8.5*60*60)
  end
  unless weekend == "WQ" || weekend == "QF"
    thu_start = start_times_array[rand(start_times_array.length)]
    thu_quit = thu_start + (8.5*60*60)
  end
  unless weekend == "QF" || weekend == "FJ"
    fri_start = start_times_array[rand(start_times_array.length)]
    fri_quit = fri_start + (8.5*60*60)
  end
  unless weekend == "FJ" || weekend == "JS"
    sat_start = start_times_array[rand(start_times_array.length)]
    sat_quit = sat_start + (8.5*60*60)
  end
  Shift.create!(
    watched:                watched_array[rand(watched_array.length)],
    main_location:          "Ramp",
    detail_location:        "Gates",
    shift_number:           shift_number,
    employment_status:      "CC",
    days_off:               weekend,
    sun_start_time:         sun_start,
    sun_quit_time:          sun_quit,
    sun_location:           locations[rand(locations.length)],
    mon_start_time:         mon_start,
    mon_quit_time:          mon_quit,
    mon_location:           locations[rand(locations.length)],
    tue_start_time:         tue_start,
    tue_quit_time:          tue_quit,
    tue_location:           locations[rand(locations.length)],
    wed_start_time:         wed_start,
    wed_quit_time:          wed_quit,
    wed_location:           locations[rand(locations.length)],
    thu_start_time:         thu_start,
    thu_quit_time:          thu_quit,
    thu_location:           locations[rand(locations.length)],
    fri_start_time:         fri_start,
    fri_quit_time:          fri_quit,
    fri_location:           locations[rand(locations.length)],
    sat_start_time:         sat_start,
    sat_quit_time:          sat_quit,
    sat_location:           locations[rand(locations.length)],
  )
  shift_number += 1
end

shifts = Shift.all

puts "Seed finished"
puts "#{Seniority.count} seniorities created"
puts "#{Shift.count} shifts created"
