# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  content = ""
  content << Faker::Lorem.paragraph(5) + "\n\n"
  content << "##" + Faker::Lorem.sentence + "\n\n"
  content << Faker::Lorem.paragraph(10) + "\n\n"
  content << "##" + Faker::Lorem.sentence + "\n\n"
  content << "![](http://lorempixel.com/800/300/)" + "\n\n"
  content << Faker::Lorem.paragraph(6)

  Article.create(title: Faker::Lorem.sentence, content: content)
end
