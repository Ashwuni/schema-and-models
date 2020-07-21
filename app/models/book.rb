class Book < ApplicationRecord
  belongs_to :author
  has_many :ratings
  has_and_belongs_to_many :readinglists
    
  def num_ratings 
#       Add a method named num_ratings to Book model that returns the number of times a book has been rated by users.
      
  end
    
  def average_rating 
#       Add a method named average_rating to the Book model that returns a book’s average rating. If a book has no ratings, return nil.
  end
    
  def num_readinglists 
#       Add a method named num_readinglists to the Book model that returns the number of reading lists the book is found on.
  end
    
  def favorite_book
#       Add a method named favorite_book to the User model that returns a user’s favorite book based on their ratings. The item returned should be a Book object and not an ActiveRecord::Relation. If a user has no ratings, return nil.
  end
    
  def books_in_common
#       Add a method named books_in_common to the User model that takes as input the id of another user and returns an array of Book objects that both users have given positive ratings to. If the two users have no such books in common, return an empty array.
  end
    
  def most_liked_book
#       Add a method named most_liked_book to the Author model that returns a Book object for the author’s highest rated book. If an author has no books rated, return nil.
  end
      
end