# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seed Questions"

Question.create!(description: "You find it takes effort to introduce yourself to other people.",
                 dimension: "EI",
                 direction: "1",
                 meaning: "I")

Question.create!(description: "You consider yourself more practical than creative.",
                 dimension: "SN",
                 direction: "-1",
                 meaning: "S")

Question.create!(description: "Winning a debate matters less to you than making sure no one gets upset.",
                 dimension: "TF",
                 direction: "1",
                 meaning: "F")

Question.create!(description: "You get energized going to social events that involve many interactions.",
                 dimension: "EI",
                 direction: "-1",
                 meaning: "E")

Question.create!(description: "You often spend time exploring unrealistic and impractical yet intriguing ideas.",
                 dimension: "SN",
                 direction: "1",
                 meaning: "N")

Question.create!(description: "Deadlines seem to you to be of relative rather than absolute importance.",
                 dimension: "JP",
                 direction: "1",
                 meaning: "P")

Question.create!(description: "Logic is usually more important than heart when it comes to making important decisions.",
                 dimension: "TF",
                 direction: "-1",
                 meaning: "T")

Question.create!(description: "Your home and work environments are quite tidy.",
                 dimension: "JP",
                 direction: "-1",
                 meaning: "J")

Question.create!(description: "You do not mind being at the center of attention.",
                 dimension: "EI",
                 direction: "-1",
                 meaning: "E")

Question.create!(description: "Keeping your options open is more important than having a to-do list.",
                 dimension: "JP",
                 direction: "1",
                 meaning: "P")