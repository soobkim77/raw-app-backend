class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes, as: :likeable
    validates :title, uniqueness: { scope: :user,
    message: "You already have a blog with that title!" } 
    validates :title, :content,  presence: true
end
