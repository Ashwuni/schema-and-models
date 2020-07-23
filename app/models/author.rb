class Author < ApplicationRecord
    has_many :books

  def most_liked_book
#       Add a method named most_liked_book to the Author model 
#       that returns a Book object for the author’s highest rated book. 
#       If an author has no books rated, return nil.
          average_rating = 0
          liked_book = nil
      #if ratings.count == 0
          #return nil
      #else 
          #return Rating.ratings.maximum
#           max = ratings.maximum("rating")
#           return Book.where(rating: max)
          books.all.each do |b|
              if b.ratings.average("rating") > average_rating
                  liked_book = b
              end
          end
          return liked_book 
      #end
  end
end