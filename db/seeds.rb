require 'open-uri'

puts "Cleaning database..."

Booking.destroy_all
Animal.destroy_all
User.destroy_all

puts 'Creating user...'

tom = User.create!(username: "Tom", age: 28, job: "painting", email: "tom@mail.com", password: "secret")
flora = User.create!(username: "Flora", age: 25, job: "motorcycle", email: "flora@mail.com", password: "secret")
ben = User.create!(username: "Ben", age: 32, job: "drum kit", email: "ben@mail.com", password: "secret")
peggy = User.create!(username: "Peggy", age: 35, job: "yoga", email: "peggy@mail.com", password: "secret")
harry = User.create!(username: "Harry", age: 26, job: "photography", email: "harry@mail.com", password: "secret")
sasha = User.create!(username: "Sasha", age: 30, job: "taxidermist", email: "sasha@mail.com", password: "secret")

puts "Creating animals..."

acromantula = Animal.create!(
  name: 'Acromantula',
  price_per_day: 600,
  localisation: 'Hogwarts',
  can_fly: true,
  can_swim: false,
  can_walk: true,
  summary: 'Buck is a very friendly griffin. A little shy at first but once the connection is established, experience an incredible flight',
  owner: harry
)

  file = File.open(Rails.root.join("db/images/1_ACROMANTULA.jpg"))
  acromantula.photo.attach(io: file, filename: "acromantula.jpg", content_type: "image/jpeg")
  acromantula.save!

gorillax = Animal.create!(
  name: 'Gorillax',
  price_per_day: 1000,
  localisation: 'Amazon Jungle',
  can_fly: false,
  can_swim: false,
  can_walk: true,
  summary: "Gorillax is the king of the jungle, a massive gorilla that stands over 20 feet tall and weighs more than 10 tons.",
  owner: tom
)

  file = File.open(Rails.root.join("db/images/2_GORILLAX.jpg"))
  gorillax.photo.attach(io: file, filename: "gorillax.jpg", content_type: "image/jpeg")
  gorillax.save!

griffon = Animal.create!(
  name: 'Griffon',
  price_per_day: 1600,
  localisation: 'Far far away',
  can_fly: true,
  can_swim: false,
  can_walk: true,
  summary: "this cute little couple will be able to welcome you at home if you wish to make a delicious meal with you",
  owner: flora)

  file = File.open(Rails.root.join("db/images/3_GRIFFON.jpg"))
  griffon.photo.attach(io: file, filename: "griffon.jpg", content_type: "image/jpeg")
  griffon.save!

hippogriff = Animal.create!(
  name: 'Hippogriff',
  price_per_day: 850,
  localisation: 'Aqualand',
  can_fly: true,
  can_swim: false,
  can_walk: true,
  summary: "Lokhlass is the ideal ocean companion for your family outings. He lives in the marvelous Aqualand water park but he can be privatized just for you.. Try the cruise on the back of Lokhlass",
  owner: sasha)

  file = File.open(Rails.root.join("db/images/4_HIPPOGRIFF.jpg"))
  hippogriff.photo.attach(io: file, filename: "hippogriff.jpg", content_type: "image/jpeg")
  hippogriff.save!


mermaid = Animal.create!(
  name: 'Mermaid',
  price_per_day: 2000,
  localisation: 'Infinite sky',
  can_fly: true,
  can_swim: false,
  can_walk: false,
  summary: "this dragon is the friendliest of companions. Despite his size, he will be able to show kindness and gentleness",
  owner: tom)

  file = File.open(Rails.root.join("db/images/5_MERMAID.jpg"))
  mermaid.photo.attach(io: file, filename: "mermaid.jpg", content_type: "image/jpeg")
  mermaid.save!

  occamy = Animal.create!(
    name: 'Occamy',
    price_per_day: 2000,
    localisation: 'Infinite sky',
    can_fly: false,
    can_swim: true,
    can_walk: false,
    summary: "this dragon is the friendliest of companions. Despite his size, he will be able to show kindness and gentleness",
    owner: tom)

    file = File.open(Rails.root.join("db/images/6_OCCAMY.jpg"))
    occamy.photo.attach(io: file, filename: "occamy.jpg", content_type: "image/jpeg")
    occamy.save!

  phoenix = Animal.create!(
    name: 'Phoenix',
    price_per_day: 2000,
    localisation: 'Infinite sky',
    can_fly: false,
    can_swim: true,
    can_walk: false,
    summary: "this dragon is the friendliest of companions. Despite his size, he will be able to show kindness and gentleness",
    owner: tom)

    file = File.open(Rails.root.join("db/images/7_PHOENIX.jpg"))
    phoenix.photo.attach(io: file, filename: "phoenix.jpg", content_type: "image/jpeg")
    phoenix.save!

  werewolf = Animal.create!(
    name: 'Werewolf',
    price_per_day: 2000,
    localisation: 'Infinite sky',
    can_fly: false,
    can_swim: true,
    can_walk: false,
    summary: "this dragon is the friendliest of companions. Despite his size, he will be able to show kindness and gentleness",
    owner: tom)

    file = File.open(Rails.root.join("db/images/8_WEREWOLF.jpg"))
    werewolf.photo.attach(io: file, filename: "werewolf.jpg", content_type: "image/jpeg")
    werewolf.save!

  zephir = Animal.create!(
    name: 'Zephir',
    price_per_day: 2000,
    localisation: 'Infinite sky',
    can_fly: false,
    can_swim: true,
    can_walk: false,
    summary: "this dragon is the friendliest of companions. Despite his size, he will be able to show kindness and gentleness",
    owner: tom)

    file = File.open(Rails.root.join("db/images/9_ZEPHIR.jpg"))
    zephir.photo.attach(io: file, filename: "zephir.jpg", content_type: "image/jpeg")
    zephir.save!


  duckzilla = Animal.create!(
    name: 'Duckzilla',
    price_per_day: 2000,
    localisation: 'Infinite sky',
    can_fly: false,
    can_swim: false,
    can_walk: true,
    summary: "this dragon is the friendliest of companions. Despite his size, he will be able to show kindness and gentleness",
    owner: tom)

    file = File.open(Rails.root.join("db/images/10_DUCKZILLA.jpg"))
    duckzilla.photo.attach(io: file, filename: "duckzilla.jpg", content_type: "image/jpeg")
    duckzilla.save!

  sandstinger = Animal.create!(
    name: 'Sandstinger',
    price_per_day: 2000,
    localisation: 'Infinite sky',
    can_fly: false,
    can_swim: false,
    can_walk: true,
    summary: "this dragon is the friendliest of companions. Despite his size, he will be able to show kindness and gentleness",
    owner: tom)

    file = File.open(Rails.root.join("db/images/11_SANDSTINGER.jpg"))
    sandstinger.photo.attach(io: file, filename: "sandstinger.jpg", content_type: "image/jpeg")
    sandstinger.save!


  karktopus = Animal.create!(
    name: 'Karktopus',
    price_per_day: 2000,
    localisation: 'Infinite sky',
    can_fly: false,
    can_swim: true,
    can_walk: false,
    summary: "this dragon is the friendliest of companions. Despite his size, he will be able to show kindness and gentleness",
    owner: tom)

    file = File.open(Rails.root.join("db/images/12_KARKTOPUS.jpg"))
    karktopus.photo.attach(io: file, filename: "karktopus.jpg", content_type: "image/jpeg")
    karktopus.save!


  sharknado = Animal.create!(
    name: 'Sharknado',
    price_per_day: 2000,
    localisation: 'Infinite sky',
    can_fly: false,
    can_swim: true,
    can_walk: false,
    summary: "this dragon is the friendliest of companions. Despite his size, he will be able to show kindness and gentleness",
    owner: tom)

    file = File.open(Rails.root.join("db/images/13_SHARKNADO.jpg"))
    sharknado.photo.attach(io: file, filename: "sharknado.jpg", content_type: "image/jpeg")
    sharknado.save!
puts "Creating bookings..."

Booking.create!(
  user: tom, # <= dans le contexte, il s'agit du renter
  animal: acromantula, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 1800,
  status: "in progress..."
)

Booking.create!(
  user: flora, # <= dans le contexte, il s'agit du renter
  animal: gorillax, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 3000,
  status: "delined"
)

Booking.create!(
  user: ben, # <= dans le contexte, il s'agit du renter
  animal: hippogriff, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 6000,
  status: "accepted"
)

Booking.create!(
  user: peggy, # <= dans le contexte, il s'agit du renter
  animal: griffon, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 6000,
  status: "declined"
)

Booking.create!(
  user: tom, # <= dans le contexte, il s'agit du renter
  animal: mermaid, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 2550,
  status: "accepted"
)

Booking.create!(
  user: tom, # <= dans le contexte, il s'agit du renter
  animal: occamy, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 2550,
  status: "accepted"
)

Booking.create!(
  user: tom, # <= dans le contexte, il s'agit du renter
  animal: phoenix, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 2550,
  status: "accepted"
)

Booking.create!(
  user: tom, # <= dans le contexte, il s'agit du renter
  animal: werewolf, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 2550,
  status: "accepted"
)

Booking.create!(
  user: tom, # <= dans le contexte, il s'agit du renter
  animal: zephir, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 2550,
  status: "accepted"
)

Booking.create!(
  user: tom, # <= dans le contexte, il s'agit du renter
  animal: duckzilla, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 2550,
  status: "accepted"
)

Booking.create!(
  user: tom, # <= dans le contexte, il s'agit du renter
  animal: sandstinger, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 2550,
  status: "accepted"
)

Booking.create!(
  user: tom, # <= dans le contexte, il s'agit du renter
  animal: karktopus, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 2550,
  status: "accepted"
)

Booking.create!(
  user: tom, # <= dans le contexte, il s'agit du renter
  animal: sharknado, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 2550,
  status: "accepted"
)
