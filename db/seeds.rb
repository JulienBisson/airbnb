require 'open-uri'

puts "Cleaning database..."

Booking.destroy_all
Animal.destroy_all
User.destroy_all

puts 'Creating user...'

tom = User.create!(username: "Tom", age: 28, job: "painting", email: "tom@mail.com", password: "secret")

file = File.open(Rails.root.join("db/images/21_tom.jpg"))
tom.avatar.attach(io: file, filename: "tom.jpg", content_type: "image/jpeg")
tom.save!

flora = User.create!(username: "Flora", age: 25, job: "motorcycle", email: "flora@mail.com", password: "secret")

file = File.open(Rails.root.join("db/images/25_flora.jpg"))
flora.avatar.attach(io: file, filename: "flora.jpg", content_type: "image/jpeg")
flora.save!

ben = User.create!(username: "Ben", age: 32, job: "drum kit", email: "ben@mail.com", password: "secret")

file = File.open(Rails.root.join("db/images/22_ben.jpg"))
ben.avatar.attach(io: file, filename: "ben.jpg", content_type: "image/jpeg")
ben.save!

peggy = User.create!(username: "Peggy", age: 35, job: "yoga", email: "peggy@mail.com", password: "secret")

file = File.open(Rails.root.join("db/images/26_peggy.jpg"))
peggy.avatar.attach(io: file, filename: "peggy.jpg", content_type: "image/jpeg")
peggy.save!

harry = User.create!(username: "Harry", age: 26, job: "photography", email: "harry@mail.com", password: "secret")

file = File.open(Rails.root.join("db/images/23_harry.jpg"))
harry.avatar.attach(io: file, filename: "harry.jpg", content_type: "image/jpeg")
harry.save!

sasha = User.create!(username: "Sasha", age: 30, job: "taxidermist", email: "sasha@mail.com", password: "secret")

file = File.open(Rails.root.join("db/images/24_sasha.jpg"))
sasha.avatar.attach(io: file, filename: "sasha.jpg", content_type: "image/jpeg")
sasha.save!

puts "Creating animals..."

acromantula = Animal.create!(
  name: 'Acromantula',
  price_per_day: 1200,
  localisation: 'New-York',
  can_fly: true,
  can_swim: false,
  can_walk: true,
  summary: 'Acromantula is a huge spider that can talk like humans. It is native to the rainforests of Southeast Asia, but some live in other places. It has eight black eyes, thick black hair, and long legs that can span up to 15 feet. It has sharp fangs that contain venom and pincers that make clicking sounds. It is carnivorous and likes to eat human flesh. It lives in colonies with many other Acromantulas and lays up to 100 eggs at a time.',
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
  summary: "Gorillax is a huge ape that lives in the Amazon jungle. It is over 30 meters tall and weighs more than 200 tons. It has dark brown fur, red eyes, and sharp teeth and claws. It is the king of the jungle, eating plants and animals. It avoids humans, but will attack if provoked. Some people think it is a god or a legend..",
  owner: tom
)

  file = File.open(Rails.root.join("db/images/2_GORILLAX.jpg"))
  gorillax.photo.attach(io: file, filename: "gorillax.jpg", content_type: "image/jpeg")
  gorillax.save!

griffon = Animal.create!(
  name: 'Griffon',
  price_per_day: 1600,
  localisation: 'French Alps',
  can_fly: true,
  can_swim: false,
  can_walk: true,
  summary: "Griffon is a mythical creature that appears in several ancient cultures. It has the body of a lion (abdomen, legs and tail) and the head, wings and claws of an eagle. It also has horse ears. It is usually depicted as a powerful and majestic animal, often associated with gods and heroes. It can fly and hunt large prey. It lives in mountains or deserts, guarding treasures or sacred places.",
  owner: flora)

  file = File.open(Rails.root.join("db/images/3_GRIFFON.jpg"))
  griffon.photo.attach(io: file, filename: "griffon.jpg", content_type: "image/jpeg")
  griffon.save!

hippogriff = Animal.create!(
  name: 'Hippogriff',
  price_per_day: 1500,
  localisation: 'Sahara desert',
  can_fly: true,
  can_swim: false,
  can_walk: true,
  summary: "Hippogriff is a mythical creature that has the head, wings and front legs of an eagle and the body, hind legs and tail of a horse. It is similar to a griffin, but with a horse instead of a lion. It was invented by the poet Ludovico Ariosto in his poem Orlando Furioso. It is very fast and can fly around the world and to the moon. It is ridden by magicians and heroes, such as Ruggiero and Harry Potter. It is usually loyal and proud, but can be fierce if provoked.",
  owner: sasha)

  file = File.open(Rails.root.join("db/images/4_HIPPOGRIFF.jpg"))
  hippogriff.photo.attach(io: file, filename: "hippogriff.jpg", content_type: "image/jpeg")
  hippogriff.save!


mermaid = Animal.create!(
  name: 'Mermaid',
  price_per_day: 2000,
  localisation: 'Atlantic Ocean',
  can_fly: true,
  can_swim: false,
  can_walk: false,
  summary: "A mermaid is a mythical creature that has the upper body of a human and the lower body of a fish. She lives in the ocean and can breathe underwater. She has long hair, often adorned with shells or pearls, and a scaly tail that can be of various colors. She can sing beautifully and sometimes uses her voice to enchant sailors or other humans. She is curious about the world above the water and sometimes interacts with people or animals on the shore. She is also very graceful and agile in the water.",
  owner: tom)

  file = File.open(Rails.root.join("db/images/5_MERMAID.jpg"))
  mermaid.photo.attach(io: file, filename: "mermaid.jpg", content_type: "image/jpeg")
  mermaid.save!

  occamy = Animal.create!(
    name: 'Occamy',
    price_per_day: 2000,
    localisation: 'Pacific Ocean',
    can_fly: false,
    can_swim: true,
    can_walk: false,
    summary: "An occamy is a magical beast that resembles a giant snake with wings and a beak. It can grow or shrink to fit the available space, making it very dangerous if provoked. It lives in the Far East and India and feeds mainly on rats and birds. It lays eggs of pure silver, which are very valuable and sought after by collectors. It is very protective of its eggs and will attack anyone who tries to steal them. It can fly and has a venomous bite. It is classified as XXXX by the Ministry of Magic, meaning that it requires a skilled wizard to handle it.",
    owner: tom)

    file = File.open(Rails.root.join("db/images/6_OCCAMY.jpg"))
    occamy.photo.attach(io: file, filename: "occamy.jpg", content_type: "image/jpeg")
    occamy.save!

  phoenix = Animal.create!(
    name: 'Phoenix',
    price_per_day: 4500,
    localisation: 'Vienna',
    can_fly: true,
    can_swim: false,
    can_walk: false,
    summary: "A phoenix is a legendary bird that has the power of rebirth. It has a fiery plumage of red, orange and yellow feathers and a long tail. It lives in the mountains of Austria, where it builds a nest of twigs and spices. When it reaches the end of its life cycle, it sets itself on fire and burns to ashes. From the ashes, a new phoenix emerges, young and strong. It can live for hundreds of years, repeating this cycle of death and resurrection. It is very loyal and faithful to its mate and can heal others with its tears. It is also very intelligent and can understand human speech.",
    owner: tom)

    file = File.open(Rails.root.join("db/images/7_PHOENIX.jpg"))
    phoenix.photo.attach(io: file, filename: "phoenix.jpg", content_type: "image/jpeg")
    phoenix.save!

  werewolf = Animal.create!(
    name: 'Werewolf',
    price_per_day: 2000,
    localisation: 'Paris',
    can_fly: false,
    can_swim: false,
    can_walk: true,
    summary: "A werewolf is a mythical creature that can transform from a human into a wolf. The term means “man-wolf” in French and comes from the folklore of Europe. According to some legends, a loup-garou is a person who is cursed or bewitched by a witch, a demon, or the devil. Other legends say that a loup-garou can voluntarily change shape by wearing a wolf skin or performing a ritual. A loup-garou usually becomes a wolf at night, especially during the full moon, and hunts for human or animal prey. A loup-garou can be recognized by its red eyes, its large size, and its ability to speak. A loup-garou can also pass on its condition by biting or scratching another person.",
    owner: tom)

    file = File.open(Rails.root.join("db/images/8_WEREWOLF.jpg"))
    werewolf.photo.attach(io: file, filename: "werewolf.jpg", content_type: "image/jpeg")
    werewolf.save!

  zephir = Animal.create!(
    name: 'Zephir',
    price_per_day: 2000,
    localisation: 'Barcelona',
    can_fly: false,
    can_swim: false,
    can_walk: true,
    summary: "Zephir is a mythical animal that resembles a bull with golden horns. The name Zephir comes from the Greek word for “west wind”, and Zephir is said to be the guardian of the western lands. Zephir is a gentle and loyal creature, but also very powerful and fierce when provoked. Zephir can run faster than any horse, and his horns can pierce through any armor. Zephir is also able to control the wind with his breath, and can create storms or calm breezes. Zephir is often depicted as a companion of heroes or gods, and as a symbol of strength and freedom.",
    owner: tom)

    file = File.open(Rails.root.join("db/images/9_ZEPHIR.jpg"))
    zephir.photo.attach(io: file, filename: "zephir.jpg", content_type: "image/jpeg")
    zephir.save!


  duckzilla = Animal.create!(
    name: 'Duckzilla',
    price_per_day: 2000,
    localisation: 'Uzbekistan',
    can_fly: true,
    can_swim: false,
    can_walk: true,
    summary: "Duckzilla is a monstrous animal that looks like a giant duck. The name Duckzilla is a combination of “duck” and “Godzilla”, and Duckzilla is inspired by the famous Japanese movie monster. Duckzilla is a vicious and destructive creature, that terrorizes cities and villages with its huge size and appetite. Duckzilla can breathe fire, spit acid, and fly at supersonic speeds. Duckzilla is also immune to most weapons, and can regenerate from any injury. Duckzilla is often portrayed as an enemy of humanity, and as a result of a scientific experiment gone wrong.",
    owner: tom)

    file = File.open(Rails.root.join("db/images/10_DUCKZILLA.jpg"))
    duckzilla.photo.attach(io: file, filename: "duckzilla.jpg", content_type: "image/jpeg")
    duckzilla.save!

  sandstinger = Animal.create!(
    name: 'Sandstinger',
    price_per_day: 1800,
    localisation: 'Sudan',
    can_fly: false,
    can_swim: false,
    can_walk: true,
    summary: "Sandstinger is a mythical animal that resembles a giant scorpion. The name sandstinger comes from its habitat in the deserts of Sudan, and its ability to sting its prey with its venomous tail. Sandstinger is a cruel and cunning creature, that hunts for humans and animals alike. Sandstinger can burrow under the sand, sense vibrations, and camouflage itself. Sandstinger is also very strong and agile, and can crush bones with its pincers. Sandstinger is often depicted as a menace to the people of Sudan, and as a manifestation of evil.",
    owner: tom)

    file = File.open(Rails.root.join("db/images/11_SANDSTINGER.jpg"))
    sandstinger.photo.attach(io: file, filename: "sandstinger.jpg", content_type: "image/jpeg")
    sandstinger.save!


  karktopus = Animal.create!(
    name: 'Karktopus',
    price_per_day: 2000,
    localisation: 'Indian Ocean',
    can_fly: false,
    can_swim: true,
    can_walk: false,
    summary: "Karktopus is a mythical animal that resembles a giant octopus. The name karktopus comes from the Greek word for “shark” and “octopus”, and karktopus is a hybrid of both creatures. Karktopus is a ferocious and greedy creature, that lurks in the deep waters off the coast of Madagascar. Karktopus can swim fast, change color, and squeeze through small spaces. Karktopus is also very intelligent and cunning, and can use its tentacles to manipulate objects and trap its victims. Karktopus is often depicted as a threat to the sailors and fishermen of Madagascar, and as a legend of the sea.",
    owner: tom)

    file = File.open(Rails.root.join("db/images/12_KARKTOPUS.jpg"))
    karktopus.photo.attach(io: file, filename: "karktopus.jpg", content_type: "image/jpeg")
    karktopus.save!


  sharknado = Animal.create!(
    name: 'Sharknado',
    price_per_day: 2000,
    localisation: 'South Africa',
    can_fly: false,
    can_swim: true,
    can_walk: false,
    summary: "Sharknado is a mythical animal that resembles a giant shark with multiple fins and teeth. The name sharknado comes from the combination of “shark” and “tornado”, and sharknado is a creature that can create powerful whirlwinds with its movements. Sharknado is a ruthless and hungry creature, that roams the ocean near South Africa. Sharknado can swim fast, jump high, and bite through anything. Sharknado is also very aggressive and fearless, and can attack any prey or predator. Sharknado is often depicted as a disaster for the people and animals of South Africa, and as a phenomenon of nature.",
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
  status: nil
)

Booking.create!(
  user: flora, # <= dans le contexte, il s'agit du renter
  animal: gorillax, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 3000,
  status: nil
)

Booking.create!(
  user: ben, # <= dans le contexte, il s'agit du renter
  animal: hippogriff, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 6000,
  status: nil
)

Booking.create!(
  user: peggy, # <= dans le contexte, il s'agit du renter
  animal: griffon, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 6000,
  status: nil
)

Booking.create!(
  user: tom, # <= dans le contexte, il s'agit du renter
  animal: mermaid, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 2550,
  status: nil
)

Booking.create!(
  user: tom, # <= dans le contexte, il s'agit du renter
  animal: occamy, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 2550,
  status: nil
)

Booking.create!(
  user: tom, # <= dans le contexte, il s'agit du renter
  animal: phoenix, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 2550,
  status: nil
)

Booking.create!(
  user: tom, # <= dans le contexte, il s'agit du renter
  animal: werewolf, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 2550,
  status: nil
)

Booking.create!(
  user: tom, # <= dans le contexte, il s'agit du renter
  animal: zephir, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 2550,
  status: nil
)

Booking.create!(
  user: tom, # <= dans le contexte, il s'agit du renter
  animal: duckzilla, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 2550,
  status: nil
)

Booking.create!(
  user: tom, # <= dans le contexte, il s'agit du renter
  animal: sandstinger, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 2550,
  status: nil
)

Booking.create!(
  user: tom, # <= dans le contexte, il s'agit du renter
  animal: karktopus, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 2550,
  status: nil
)

Booking.create!(
  user: tom, # <= dans le contexte, il s'agit du renter
  animal: sharknado, # <= dans le contexte, il s'agit de l'animal que le renter veut louer
  start_date: Date.parse("16-06-2023"),
  end_date: Date.parse("18-06-2023"),
  total_price: 2550,
  status: nil
)
