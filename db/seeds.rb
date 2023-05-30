require 'open-uri'

puts "Cleaning database..."

Booking.destroy_all
Animal.destroy_all
User.destroy_all

puts 'Creating user...'

tom = User.create!(email: "tom@mail.com", password: "azerty")
flora = User.create!(email: "flora@mail.com", password: "azerty")
ben = User.create!(email: "ben@mail.com", password: "azerty")
peggy = User.create!(email: "peggy@mail.com", password: "azerty")

puts "Creating animals..."

buckbeak = Animal.create!(
  name: 'Buckbeak',
  price_per_day: 600,
  localisation: 'Hogwarts',
  can_fly: true,
  can_swim: false,
  can_walk: true,
  summary: 'Buck is a very friendly griffin. A little shy at first but once the connection is established, experience an incredible flight',
  owner: tom)

  file = File.open(Rails.root.join("db/images/13_BUCKBEAK_HOGWARTS.jpg"))
  buckbeak.photo.attach(io: file, filename: "buckbeak.jpg", content_type: "image/jpeg")
  buckbeak.save!

ikran = Animal.create!(
  name: 'Ikran',
  price_per_day: 1000,
  localisation: 'Pandora',
  can_fly: true,
  can_swim: false,
  can_walk: false,
  summary: "Fly away with this superb ikran to a new horizon. Don't be put off by its growling, it doesn't eat its owner",
  owner: flora)

  file = File.open(Rails.root.join("db/images/10_IKRAN_AVATAR.jpeg"))
  ikran.photo.attach(io: file, filename: "ikran.jpg", content_type: "image/jpeg")
  ikran.save!

dragon_and_donkey = Animal.create!(
  name: 'Dragon and Donkey',
  price_per_day: 1600,
  localisation: 'Far far away',
  can_fly: true,
  can_swim: false,
  can_walk: true,
  summary: "this cute little couple will be able to welcome you at home if you wish to make a delicious meal with you",
  owner: ben)

  file = File.open(Rails.root.join("db/images/8_DRAGON_DONKEY_SHREK.jpeg"))
  dragon_and_donkey.photo.attach(io: file, filename: "dragon_and_donkey.jpg", content_type: "image/jpeg")
  dragon_and_donkey.save!


lokhlass = Animal.create!(
  name: 'Lokhlass',
  price_per_day: 850,
  localisation: 'Aqualand',
  can_fly: true,
  can_swim: false,
  can_walk: true,
  summary: "Lokhlass is the ideal ocean companion for your family outings. He lives in the marvelous Aqualand water park but he can be privatized just for you.. Try the cruise on the back of Lokhlass",
  owner: ben)

  file = File.open(Rails.root.join("db/images/14_LOKHLASS_POKEMON.jpg"))
  lokhlass.photo.attach(io: file, filename: "lokhlass.jpg", content_type: "image/jpeg")
  lokhlass.save!


falkor = Animal.create!(
  name: 'Falkor',
  price_per_day: 2000,
  localisation: 'Infinite sky',
  can_fly: true,
  can_swim: false,
  can_walk: false,
  summary: "this dragon is the friendliest of companions. Despite his size, he will be able to show kindness and gentleness",
  owner: ben)

  file = File.open(Rails.root.join("db/images/7_FALKOR_HISTOIRE_SANS_FIN.jpg"))
  falkor.photo.attach(io: file, filename: "falkor.jpg", content_type: "image/jpeg")
  falkor.save!


puts "Creating bookings..."

Booking.create!(
user:      peggy,
animal:  buckbeak,
start_date:   Date.parse("16-06-2023"),
end_date:     Date.parse("18-06-2023"),
total_price: 1800,
status:      "accepted")
