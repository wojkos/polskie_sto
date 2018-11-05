# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |place|
  Place.create!(title: "Test Place#{place}",
                description: 'Lorem ipsum dolor, sit amet consectetur
                adipisicing elit. Nobis veniam quo fuga ratione animi cumque
                ex, quam optio, dolore aliquid illo pariatur ab nam distinctio?
                Totam neque adipisci quis illo!',
                location: 'Some place on map')
end
