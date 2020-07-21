class User < ApplicationRecord
    has_many :readinglists
    has_many :ratings
end