class Book < ApplicationRecord
  belongs_to :author
  has_many :ratings
  has_and_belongs_to_many :readinglists  
end