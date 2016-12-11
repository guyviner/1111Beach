# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'csv'
# require "prawn"
#
un = ["201",	"202",	"203",	"204",	"205",	"206",	"207",	"208",	"301",	"302",	"303",	"304",	"305",	"306",	"307",	"308",	"401",	"402",	"403",	"404",	"405",	"406",	"407",	"408",	"501",	"502",	"503",	"504",	"505",	"506",	"507",	"508",	"601",	"602",	"603",	"604",	"605",	"606",	"607",	"608",	"701",	"702",	"703",	"704",	"705",	"706",	"707",	"708",	"801",	"802",	"803",	"804",	"805",	"806",	"807",	"808",	"901",	"902",	"903",	"904",	"905",	"906",	"907",	"908",	"1001",	"1002",	"1003",	"1004",	"1005",	"1006",	"1007",	"1008",	"1101",	"1102",	"1103",	"1104",	"1105",	"1106",	"1107",	"1108",	"1201",	"1202",	"1203",	"1204",	"1205",	"1206",	"1207",	"1208",	"1301",	"1302",	"1303",	"1304",	"1305",	"1306",	"1307",	"1308",	"1401",	"1402",	"1403",	"1404",	"1405",	"1406",	"1407",	"1408",	"1501",	"1502",	"1503",	"1504",	"1505",	"1506",	"1507",	"1508",	"1601",	"1602",	"1603",	"1604",	"1605",	"1606",	"1607",	"1608",	"1701",	"1702",	"1703",	"1704",	"1705",	"1706",	"1707",	"1708",	"1801",	"1802",	"1803",	"1804",	"1805",	"1806",	"1807",	"1808",	"1901",	"1902",	"1903",	"1904",	"1905",	"1906",	"1907",	"1908",	"2001",	"2002",	"2003",	"2004",	"2005",	"2006",	"2007",	"2008",	"2101",	"2102",	"2103",	"2104",	"2201",	"2202",	"2203",	"2204",	"2301",	"2302",	"2303",	"2304",	"2401",	"2402",	"2403",	"2404",	"2501",	"2502",	"2503",	"2504",	"2601",	"2602",	"2603",	"2604",	"2701",	"2702",	"2703",	"2704",	"2801",	"2802",	"2803",	"2804"]

pw = ["g!D533",	"g!D534",	"g!D535",	"g!D540",	"g!D541",	"g!D542",	"g!D543",	"g!D544",	"g!D1221",	"g!D1222",	"g!D1223",	"g!D1224",	"g!D1225",	"g!D1230",	"g!D1231",	"g!D1232",	"g!D1505",	"g!D1510",	"g!D1511",	"g!D1512",	"g!D1513",	"g!D1514",	"g!D1515",	"g!D1520",	"g!D2153",	"g!D2154",	"g!D2155",	"g!D2200",	"g!D2201",	"g!D2202",	"g!D2203",	"g!D2204",	"g!D2441",	"g!D2442",	"g!D2443",	"g!D2444",	"g!D2445",	"g!D2450",	"g!D2451",	"g!D2452",	"g!D3125",	"g!D3130",	"g!D3131",	"g!D3132",	"g!D3133",	"g!D3134",	"g!D3135",	"g!D3140",	"g!D3413",	"g!D3414",	"g!D3415",	"g!D3420",	"g!D3421",	"g!D3422",	"g!D3423",	"g!D3424",	"g!D4101",	"g!D4102",	"g!D4103",	"g!D4104",	"g!D4105",	"g!D4110",	"g!D4111",	"g!D4112",	"g!D4345",	"g!D4350",	"g!D4351",	"g!D4352",	"g!D4353",	"g!D4354",	"g!D4355",	"g!D4400",	"g!D5033",	"g!D5034",	"g!D5035",	"g!D5040",	"g!D5041",	"g!D5042",	"g!D5043",	"g!D5044",	"g!D5321",	"g!D5322",	"g!D5323",	"g!D5324",	"g!D5325",	"g!D5330",	"g!D5331",	"g!D5332",	"g!D10005",	"g!D10010",	"g!D10011",	"g!D10012",	"g!D10013",	"g!D10014",	"g!D10015",	"g!D10020",	"g!D10253",	"g!D10254",	"g!D10255",	"g!D10300",	"g!D10301",	"g!D10302",	"g!D10303",	"g!D10304",	"g!D10541",	"g!D10542",	"g!D10543",	"g!D10544",	"g!D10545",	"g!D10550",	"g!D10551",	"g!D10552",	"g!D11225",	"g!D11230",	"g!D11231",	"g!D11232",	"g!D11233",	"g!D11234",	"g!D11235",	"g!D11240",	"g!D11513",	"g!D11514",	"g!D11515",	"g!D11520",	"g!D11521",	"g!D11522",	"g!D11523",	"g!D11524",	"g!D12201",	"g!D12202",	"g!D12203",	"g!D12204",	"g!D12205",	"g!D12210",	"g!D12211",	"g!D12212",	"g!D12445",	"g!D12450",	"g!D12451",	"g!D12452",	"g!D12453",	"g!D12454",	"g!D12455",	"g!D12500",	"g!D13133",	"g!D13134",	"g!D13135",	"g!D13140",	"g!D13141",	"g!D13142",	"g!D13143",	"g!D13144",	"g!D13421",	"g!D13422",	"g!D13423",	"g!D13424",	"g!D14105",	"g!D14110",	"g!D14111",	"g!D14112",	"g!D14353",	"g!D14354",	"g!D14355",	"g!D14400",	"g!D15041",	"g!D15042",	"g!D15043",	"g!D15044",	"g!D15325",	"g!D15330",	"g!D15331",	"g!D15332",	"g!D20013",	"g!D20014",	"g!D20015",	"g!D20020",	"g!D20301",	"g!D20302",	"g!D20303",	"g!D20304",	"g!D20545",	"g!D20550",	"g!D20551",	"g!D20552"]

i = 0
while i < un.length do
  User.create(username: un[i], password: pw[i])
  i+=1
end
# CSV.open("./user_credentials.csv", "wb") do |csv|
#   csv << ["username", "password"]
#     (2..20).each do |i|
#         (1..8).each do |n|
#           username = "#{i}0#{n}"
#           password = Faker::Internet.password(6, 6)
#           User.create(username: username, password: password)
#           csv << [username, password]
#
#           Prawn::Document.generate("./tmp/hello#{username}.pdf") do
#             dice = "./invitation.jpg"
#             image dice, :at => [-45, 780], :scale => 0.25
#
#             draw_text username, :at => [370,572.5], :size => 28
#             draw_text username, :at => [200,200], :size => 26
#             draw_text password, :at => [200,170], :size => 26
#           end
#         end
#         # ...
#     end
#
#   (21..28).each do |i|
#       (1..4).each do |n|
#         username = "#{i}0#{n}"
#         password = Faker::Internet.password(6, 6)
#         User.create(username: username, password: password)
#       csv << [username, password]
#
#       Prawn::Document.generate("./tmp/hello#{username}.pdf") do
#         dice = "./invitation.jpg"
#         image dice, :at => [-45, 780], :scale => 0.25
#
#         draw_text username, :at => [370,572.5], :size => 28
#         draw_text username, :at => [200,200], :size => 26
#         draw_text password, :at => [200,170], :size => 26
#       end
#       end
#       # ...
#   end
# end

# CSV.open("./user_credentials.csv", "wb") do |csv|
#   csv << ["username", "password"]
#   (2..2).each do |i|
#     (1..1).each do |n|
#       username = "#{i}0#{n}"
#       password = Faker::Internet.password(6, 6)
#       User.create(username: username, password: password)
#       csv << [username, password]
#
#       Prawn::Document.generate("./invitations/hello#{username}.pdf") do
#         dice = "./invitationFinal.jpg"
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
# CSV.open("./user_credentials.csv", "wb") do |csv|
#   csv << ["username", "password"]
#   (21..28).each do |i|
#     (1..4).each do |n|
#       username = "#{i}0#{n}"
#       password = "g!D"+username.to_i.to_s(6)
#       User.create(username: username, password: password)
#       csv << ["#{username},", "#{password},"]
#
#       Prawn::Document.generate("./invitations/hello#{username}.pdf") do
#         dice = "./invitationFinal.jpg"
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
# CSV.open("./user_credentials.csv", "wb") do |csv|
#   csv << ["username", "password"]
#   (2..20).each do |i|
#     (1..8).each do |n|
#       username = "#{i}0#{n}"
#       password = "g!D"+username.to_i.to_s(6)
#       User.create(username: username, password: password)
#       csv << ["#{username},", "#{password},"]
#
#       Prawn::Document.generate("./invitations/hello#{username}.pdf") do
#         dice = "./invitationFinal.jpg"
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

# CSV.open("./user_credentials.csv", "wb") do |csv|
#   csv << ["username", "password"]
#   (2..20).each do |i|
#     (1..8).each do |n|
#       username = "#{i}0#{n}"
#       password = "g!D"+username.to_i.to_s(6)
#       User.create(username: username, password: password)
#       csv << ["#{username},", "#{password},"]
#
#       Prawn::Document.generate("./invitations/hello#{username}.pdf") do
#         dice = "./invitationFinal.jpg"
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
#   (21..28).each do |i|
#     (1..4).each do |n|
#       username = "#{i}0#{n}"
#       password = "g!D"+username.to_i.to_s(6)
#       User.create(username: username, password: password)
#       csv << ["#{username},", "#{password},"]
#
#       Prawn::Document.generate("./invitations/hello#{username}.pdf") do
#         dice = "./invitationFinal.jpg"
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
