# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dog.destroy_all 
d1 = Dog.create(name:'eric')
d2 = Dog.create(name:'maxxx')

Toy.destroy_all
t1 = Toy.create(name:'big bone',color:'yellow', dog_id:d1.id)
t2 = Toy.create(name:'big cat',color:'red',dog_id:d1.id)
t3 = Toy.create(name:'small bone',color:'white',dog_id:d1.id)
