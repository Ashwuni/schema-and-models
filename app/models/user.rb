class User < ApplicationRecord
    has_many :readinglists
    has_many :ratings
end

  def favorite_book
#       Add a method named favorite_book to the User model that returns a user’s favorite book based on their ratings. The item returned should be a Book object and not an ActiveRecord::Relation. If a user has no ratings, return nil.
      if ratings.count == 0
          return nil
      else
          max = ratings.maximum
          return Rating.where(ratings: max).select("book_id")
      end
  end
    
  def books_in_common
#       Add a method named books_in_common to the User model that takes as input the id of another user and returns an array of Book objects that both users have given positive ratings to. If the two users have no such books in common, return an empty array.
  end
    