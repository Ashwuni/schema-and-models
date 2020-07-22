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
#           return Book.find_or_initialize_by(ids:x)
#           
          y = x.to_s
           return Book.find_by id:y
#               find_by_sql("SELECT * FROM books WHERE ('ratings = ?', max)
#   INNER JOIN ratings ON books.id = ratings.book_id")
          
#           Book
#   .select('*')
#   .joins(:ratings)
#   .where('ratings = ?', max)
      end
  end
    
#    def books_in_common id
# # #       Add a method named books_in_common to the User model that takes 
# # #       as input the id of another user and returns an array of Book objects 
# # #       that both users have given positive ratings to. If the two users have 
# # #       no such books in common, return an empty array.

# #       common = Array.new
# #       for i in 0..ratings.count
# #           for j in 0..ratings.where(book_id: id).count
# #               if 
# #               
#       temp = ratings.where(ratings>0, ratings.where(book_id: id)>0)
       
#       for 
#    end
end