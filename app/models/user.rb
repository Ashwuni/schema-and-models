class User < ApplicationRecord
    has_many :readinglists
    has_many :ratings


  def favorite_book
#       Add a method named favorite_book to the User model that returns a user’s 
#       favorite book based on their ratings. The item returned should be a Book object 
#       and not an ActiveRecord::Relation. If a user has no ratings, return nil.
      
      if ratings.count == 0
          return nil
      else
          max = ratings.maximum("rating")
           x = Book.where(rating: max)
           y = x.to_s.to_i
#            return Book.find_by id:5
          
#           return Book.find_or_initialize_by(ids:x)
# #           
          
#         return Book.find_by_sql("SELECT * FROM books
#   JOIN ratings ON books.id = ratings.book_id WHERE (ratings.rating = 5)")
          
#           Book
#   .select('*')
#   .joins(:ratings)
#   .where('ratings = ?', max).to_a
      end
  end
    
   def books_in_common second_id
# #       Add a method named books_in_common to the User model that takes 
# #       as input the id of another user and returns an array of Book objects 
# #       that both users have given positive ratings to. If the two users have 
# #       no such books in common, return an empty array.

#       common = Array.new
#       for i in 0..ratings.count
#           for j in 0..ratings.where(book_id: id).count
#               if 
          
#        Client.connection.select_all("SELECT first_name, created_at FROM clients WHERE id = '1'").to_a
       
       test = Book.connection.select_all("SELECT * FROM ratings WHERE rating>0 AND Rating.where('book_id = ?', 3)>0").to_a
#        'book_id = ?', id
       if test.length == 0
           return Array.new
       else
           return test
#       temp = ratings.where(ratings>0, ratings.where(book_id: id)>0)
       
       end 
   end
end