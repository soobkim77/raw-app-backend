class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments
    validates :title, uniqueness: { scope: :user,
    message: "You already have a blog with that title!" } 
end
