# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
require "prawn"
#

CSV.open("./user_credentials.csv", "wb") do |csv|
  csv << ["username", "password"]
    (2..20).each do |i|
        (1..8).each do |n|
          username = "#{i}0#{n}"
          password = Faker::Internet.password(6, 6)
          User.create(username: username, password: password)
          csv << [username, password]

          Prawn::Document.generate("./invitations/hello#{username}.pdf") do
            dice = "./invitation.jpg"
            image dice, :at => [-45, 780], :scale => 0.25

            draw_text username, :at => [370,572.5], :size => 28
            draw_text username, :at => [200,200], :size => 26
            draw_text password, :at => [200,170], :size => 26
          end
        end
        # ...
    end

  (21..28).each do |i|
      (1..4).each do |n|
        username = "#{i}0#{n}"
        password = Faker::Internet.password(6, 6)
        User.create(username: username, password: password)
      csv << [username, password]

      Prawn::Document.generate("./invitations/hello#{username}.pdf") do
        dice = "./invitation.jpg"
        image dice, :at => [-45, 780], :scale => 0.25

        draw_text username, :at => [370,572.5], :size => 28
        draw_text username, :at => [200,200], :size => 26
        draw_text password, :at => [200,170], :size => 26
      end
      end
      # ...
  end
end

# CSV.open("./user_credentials.csv", "wb") do |csv|
#   csv << ["username", "password"]
#   (2..2).each do |i|
#     (1..1).each do |n|
#       username = "#{i}0#{n}"
#       password = Faker::Internet.password(6, 6)
#       # User.create(username: username, password: password)
#       # csv << [username, password]
#
#       Prawn::Document.generate("./invitations/hello#{username}.pdf") do
#         dice = "./invitation.jpg"
#         image dice, :at => [-45, 780], :scale => 0.25
#
#         draw_text username, :at => [370,572.5], :size => 28
#         draw_text username, :at => [200,200], :size => 26
#         draw_text password, :at => [200,170], :size => 26
#       end
#
#     end
#     # ...
#   end
# end
# Floors 2-20 - 8 apartments per floor , i.e. 201 - 208
# Floors 21-28 - 4 apartments per floor, i.e. 2101 - 2104
