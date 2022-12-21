# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

# cleaning db
puts "cleaning db"
Book.destroy_all
Reservation.destroy_all
puts 'cleaning user'
User.destroy_all


# creating seed
puts 'creating user'
user1 = User.create!(
  username: "Ana",
  email: "anne@openbooks77.me",
  password: "1234567",
  city: "Montreuil",
  avatar: "https://avatars.githubusercontent.com/u/109987907?v=4"
)
user2 = User.create!(
  username: "Fabi",
  email: "fabi@openbooks77.me",
  password: "1234567",
  city: "Combs La Ville",
  avatar: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Eva_Mendes_2009.jpg/390px-Eva_Mendes_2009.jpg"
)
users = [user1, user2]

puts 'creating books'

book1 = Book.create(
  title: "4 3 2 1",
  author: "Paul Auster",
  category: "Best Sellers",
  description: "4 3 2 1 suit les quatre Ferguson depuis leur naissance dans une famille juive, le 3 mars 1947, à Newark, dans le New Jersey (Auster lui-même est né dans la même ville, exactement un mois plus tôt).",
  delivery_price: rand(1..10),
  availability: true,
  user: users.sample
)
book1.photo.attach(io: URI.open("https://images2.medimops.eu/product/64c882/M00571324649-large.jpg"), filename: "book1.jpg", content_type: 'image/jpg')
book1.save

book2 = Book.create(
  title: "The big Four",
  author: "Agatha Christie",
  category: "Suspense",
  description: "Poirot enquête avec ses vieux amis Hastings, Japp et Lemon, aidés d'un reporter et d'une petite actrice, mais le quatuor doit bientôt livrer une dangereuse bataille contre les Big Four...",
  delivery_price: rand(1..10),
  availability: true,
  user: users.sample
)
book2.photo.attach(io: URI.open("https://images2.medimops.eu/product/469302/M0000616918X-large.jpg"), filename: "book2.jpg", content_type: 'image/jpg')
book2.save

book3 = Book.create(
  title: "Robot",
  author: "Isaac Asimov",
  category: "SF, Fantasy",
  description: "Un recueil de neuf nouvelles qui imagine le développement de robots 'positroniques' (ressemblant à des humains, avec une forme d'intelligence artificielle) et s'interroge sur les implications morales de cette technologie.",
  delivery_price: rand(1..10),
  availability: true,
  user: users.sample
)
book3.photo.attach(io: URI.open("https://images2.medimops.eu/product/613f99/M00586057242-large.jpg"), filename: "book3.jpg", content_type: 'image/jpg')
book3.save

book4 = Book.create(
  title: "Bel Ami",
  author: "Guy de Maupassant",
  category: "Litterature",
  description: "L'histoire raconte l'ascension corrompue du journaliste Georges Duroy, ancien sous-officier de cavalerie pauvre dans les colonies africaines de la France...",
  delivery_price: rand(1..10),
  availability: true,
  user: users.sample
)
book4.photo.attach(io: URI.open("https://images2.medimops.eu/product/9b2b02/M02290173495-large.jpg"), filename: "book4.jpg", content_type: 'image/jpg')
book4.save

book5 = Book.create(
  title: "Don Quichotte",
  author: "Miguel de Cervantes",
  category: "Best Sellers",
  description: "Don Quichotte est un gentilhomme d'âge mûr originaire de la région de La Mancha, dans le centre de l'Espagne. Obsédé par les idéaux chevaleresques vantés dans les livres qu'il a lus, il ...",
  delivery_price: rand(1..10),
  availability: true,
  user: users.sample
)
book5.photo.attach(io: URI.open("https://images2.medimops.eu/product/b89281/M00140449094-large.jpg"), filename: "book5.jpg", content_type: 'image/jpg')
book5.save

book6 = Book.create(
  title: "Dirt Town",
  author: "Hayley Scrivenor",
  category: "Suspense",
  description: "Le sergent-détective Sarah Michaels commence son enquête sur la disparition d'Esther Bianchi, 12 ans, de son domicile dans la petite ville rurale australienne de Durton...",
  delivery_price: rand(1..10),
  availability: true,
  user: users.sample
)
book6.photo.attach(io: URI.open("https://images2.medimops.eu/product/976355/M01529080274-large.jpg"), filename: "book6.jpg", content_type: 'image/jpg')
book6.save

book7 = Book.create(
  title: "1984",
  author: "George Orwell",
  category: "SF, Fantasy",
  description: "Dans Quatre-vingt-quatre, le monde est divisé en trois superpuissances : l'Océanie, l'Eurasie et l'Eastasie, qui sont en guerre permanente les unes contre les autres. Le roman se déroule en Océanie...",
  delivery_price: rand(1..10),
  availability: true,
  user: users.sample
)
book7.photo.attach(io: URI.open("https://images2.medimops.eu/product/89cd27/M0207036822X-large.jpg"), filename: "book7.jpg", content_type: 'image/jpg')
book7.save

book8 = Book.create(
  title: "Crime and Punishment",
  author: "Fiodor Dostoïevski",
  category: "Litterature",
  description: "Crime et châtiment suit l'angoisse mentale et les dilemmes moraux de Rodion Raskolnikov, un ancien étudiant appauvri de Saint-Pétersbourg qui projette de tuer un prêteur sur gages sans scrupules, une vieille femme qui stocke de l'argent et des objets de valeur dans son appartement.",
  delivery_price: rand(1..10),
  availability: true,
  user: users.sample
)
book8.photo.attach(io: URI.open("https://images2.medimops.eu/product/821e2a/M00140623515-large.jpg"), filename: "book8.jpg", content_type: 'image/jpg')
book8.save

book9 = Book.create(
  title: "Frankenstein",
  author: "Mary Shelley",
  category: "Best Sellers",
  description: "Victor Frankenstein raconte à Walton son histoire : une enfance heureuse, une obsession malsaine pour l'alchimie et ses fiançailles avec sa cousine Elizabeth. Victor s'inscrit à l'université d'Ingolstadt, où il découvre le secret de la vie et construit une créature à partir de cadavres.",
  delivery_price: rand(1..10),
  availability: true,
  user: users.sample
)
book9.photo.attach(io: URI.open("https://images2.medimops.eu/product/2cb08c/M02010120329-large.jpg"), filename: "book9.jpg", content_type: 'image/jpg')
book9.save

book10 = Book.create(
  title: "The dog of Baskerville",
  author: "Arthur Conan Doyle",
  category: "Suspense",
  description: "Sherlock Holmes et le Dr Watson enquêtent sur la légende d'un chien surnaturel, une bête qui pourrait traquer un jeune héritier sur la lande brumeuse qui constitue son domaine.",
  delivery_price: rand(1..10),
  availability: true,
  user: users.sample
)
book10.photo.attach(io: URI.open("https://images2.medimops.eu/product/8ea50a/M0225300314X-large.jpg"), filename: "book10.jpg", content_type: 'image/jpg')
book10.save

puts 'finished !!'
