# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
w1 =
  Warehouse.create(
    name: 'Taro Corp.',
    address_1: '184 Bestboy Way',
    city: 'Ottawa',
    state_province: 'Ontario',
    zip_postal: 'K2J 5V2',
    country: 'CA',
  )
w2 =
  Warehouse.create(
    name: 'Buster Inc.',
    address_1: '808 Jones Street',
    city: 'Mississauga',
    state_province: 'Ontario',
    zip_postal: 'L5C 1E9',
    country: 'CA',
  )
w3 =
  Warehouse.create(
    name: 'Dog World',
    address_1: '123 Woof Street',
    address_2: 'Unit 400',
    city: 'Long Island',
    state_province: 'New York',
    zip_postal: '11106',
    country: 'US',
  )
w4 =
  Warehouse.create(
    name: 'PetRift',
    address_1: '2 Yordles Lane',
    address_2: 'Bottom Unit',
    city: 'Los Angeles',
    state_province: 'California',
    zip_postal: '90064',
    country: 'US',
  )

Product.create(
  name: 'Chicken Kibble for Adult Dogs',
  UPC: '000000000010',
  quantity: 1000,
  description:
    'Made with all-natural and steroid-free, extra lean chicken breast and a blend of organic whole grains.',
  warehouses: [w1, w3],
)

Product.create(
  name: 'Beef Kibble for Puppies',
  UPC: '000000000020',
  quantity: 918,
  description:
    'Made with all organic ingrediens: lean ground beef and a blend of whole grains and veggies for your lil pupper.',
  warehouses: [w1, w2, w3, w4],
)

Product.create(
  name: 'TunaSnax for Cats',
  UPC: '000000000030',
  quantity: 530,
  description:
    'Dehydrated and sustainably-sourced high-grade tuna with no additives.',
  warehouses: [w4],
)
