# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Orson Scott Card
# Suzanne Collins
# George Orwell
# Mark Twain

a = Author.create(name: "Mark Twain" )
b = Author.create(name: "Suzanne Collins" )
c = Author.create(name: "George Orwell" )
d = Author.create(name: "Orson Scott Card" )

# Ender’s Game, by Orson Scott Card, 1985
# The Hunger Games, by Suzanne Collins, 2008
# 1984, George Orwell, 1949
# Catching Fire, by Suzanne Collins, 2009

e = Book.new( title: "Ender’s Game", year: 1985 )
e.author = d
e.save

f = Book.new( title: "The Hunger Games", year: 2008 )
f.author = b
f.save

g = Book.new( title: "1984", year: 1949 )
g.author = c
g.save

h = Book.new( title: "Catching Fire", year: 2009 )
h.author = b
h.save
