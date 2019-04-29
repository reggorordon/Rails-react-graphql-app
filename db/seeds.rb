# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.create(
    title:"Jaws",
    description:"A movie about a Shark"
)
Movie.create(
    title:"GodFather",
    description:"A movie about the Mob"
)
Movie.create(
    title:"GodFather 2",
    description:"Another Movie about the Mob"
)
Movie.create(
    title:"GoodFellas",
    description:"Another movie about a Shark. Just kidding its about the Mob"
)

Review.create(
    content:"Best movie ever",
    movie_id:1
)
Review.create(
    content:"Best movie ever",
    movie_id:3
)
Review.create(
    content:"Best movie ever",
    movie_id:2
)
Review.create(
    content:"Best movie ever",
    movie_id:4
)
