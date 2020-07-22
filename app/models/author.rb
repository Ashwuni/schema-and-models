class Author < ApplicationRecord
    has_many :books

  def most_liked_book
#       Add a method named most_liked_book to the Author model 
#       that returns a Book object for the author’s highest rated book. 
#       If an author has no books rated, return nil.
      
      if ratings.count == 0
          return nil
      else 
          return Rating.ratings.maximum
#           max = ratings.maximum("rating")
#           return Book.where(rating: max)
      end
  end
end