# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

house_attributes = [
  { name: "Greyjoy", author: "GRRM", source_material: "A Song of Ice and Fire", motto: "We do not sow", sigil: "Golden Kraken on Black Field"},
  { name: "Harlaw", author: "GRRM", source_material: "A Song of Ice and Fire", motto: "Reap the dawn", sigil: "Silver Scythe on Black Field"},
]

house_attributes.each do |attributes|
  house = House.new(attributes)
  house.save
end
