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

# Bob, bob@bob.com
# Mary, mary@mary.com
# Sue, sue@sue.com
# Fred, fred@fred.com

i = User.create(name: "Bob" , email: "bob@bob.com")
j = User.create(name: "Mary" , email: "mary@mary.com")
k = User.create(name: "Sue" , email: "sue@sue.com")
l = User.create(name: "Fred" , email: "fred@fred.com")

# Bob rated Ender’s Game a 5
# Bob rated 1984 a -3
# Mary rated Catching Fire a 3
# Mary rated 1984 a 5
# Sue rated The Hunger Games a 5

m = Rating.new( rating: 5)
m.book = e
m.user = i
m.save

n = Rating.new( rating: -3)
n.book = g
n.user = i
n.save

o = Rating.new( rating: 3)
o.book = h
o.user = j
o.save

p = Rating.new( rating: 5)
p.book = g
p.user = j
p.save

q = Rating.new( rating: 5)
q.book = f
q.user = k
q.save

# On Bob’s list named "May the odds be in my favor": The Hunger Games and Catching Fire
# On Sue’s list named "Gotta Read": 1984 and Ender’s Game
# On Fred’s list name "Sue’s Favorite": Hunger Games

r = Readinglist.new( name: "May the odds be in my favor" )
r.user = i
r.books << [f, h]
r.save

s = Readinglist.new( name: "Gotta Read" )
s.user = k
s.books << [e, g]
s.save

t = Readinglist.new( name: "Sue’s Favorite" )
t.user = l
t.books << [f]
t.save

#WRONG SECTION

# u = AddReferencesToBooksReadinglists.new()
# u.readinglist_id = r.id
# u.book_id = f.id
# u.save

# v = AddReferencesToBooksReadinglists.new()
# v.readinglist_id = r.id
# v.book_id = h
# v.save

# w = AddReferencesToBooksReadinglists.new()
# w.readinglist_id = s.id
# w.book_id = e
# w.save

# x = AddReferencesToBooksReadinglists.new()
# x.readinglist_id = s.id
# x.book_id = g
# x.save

# y = AddReferencesToBooksReadinglists.new()
# y.readinglist_id = t.id
# y.book_id = f
# y.save

#WRONG SECTION


# u = AddReferencesToBooksReadinglists.new()
# u.readinglists = r.readinglist_id
# u.books = f.book_id
# u.save

# v = AddReferencesToBooksReadinglists.new()
# v.readinglists = r.id
# v.books = h
# v.save

# w = AddReferencesToBooksReadinglists.new()
# w.readinglists = s.id
# w.books = e
# w.save

# x = AddReferencesToBooksReadinglists.new()
# x.readinglists = s.id
# x.books = g
# x.save

# y = AddReferencesToBooksReadinglists.new()
# y.readinglists = t.id
# y.books = f
# y.save