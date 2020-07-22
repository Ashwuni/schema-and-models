class Author < ApplicationRecord
    has_many :books

  def most_liked_book
#       Add a method named most_liked_book to the Author model that returns a Book object for the author’s highest rated book. If an author has no books rated, return nil.
  end

end