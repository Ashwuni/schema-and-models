class Book < ApplicationRecord
  belongs_to :author
  has_many :ratings
  has_many :reviews
  has_and_belongs_to_many :readinglists
    
  def num_ratings 
#       Add a method named num_ratings to Book model that returns the number of times a book has been rated by users.
      return ratings.count
  end
    
  def average_rating 
#       Add a method named average_rating to the Book model that returns a book’s average rating. If a book has no ratings, return nil.
      if ratings.count == 0
          return nil
      else 
          return ratings.average
      end
  end
    
  def num_readinglists 
#       Add a method named num_readinglists to the Book model that returns the number of reading lists the book is found on.
      return readinglists.count
  end
      
end