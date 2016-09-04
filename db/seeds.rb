# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

# Create CC list
cc_bid_number = 1
3.times do
  Seniority.create!(
    employment_status:      "CC",
    bid_number:             cc_bid_number,
    first_name:             Faker::Name.first_name,
    last_name:              Faker::Name.last_name,
    seniority:              Faker::Date.between(50.years.ago, 2.months.ago),
    shift:                  Faker::Number.between(1,100)
  )
  cc_bid_number += 1
end

# Create FT list
ft_bid_number = 1
3.times do
  Seniority.create!(
    employment_status:      "FT",
    bid_number:             ft_bid_number,
    first_name:             Faker::Name.first_name,
    last_name:              Faker::Name.last_name,
    seniority:              Faker::Date.between(50.years.ago, 2.months.ago),
    shift:                  Faker::Number.between(1,500)
  )
  ft_bid_number += 1
end

# Create PT list
pt_bid_number = 1
3.times do
  Seniority.create!(
    employment_status:      "PT",
    bid_number:             pt_bid_number,
    first_name:             Faker::Name.first_name,
    last_name:              Faker::Name.last_name,
    seniority:              Faker::Date.between(50.years.ago, 2.months.ago),
    shift:                  Faker::Number.between(1,300)
  )
  pt_bid_number += 1
end


seniorities = Seniority.all

puts "Seed finished"
puts "#{Seniority.count} seniorities created"
