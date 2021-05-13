class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments, :dependent => :destroy
  has_many :likes, as: :likeable, :dependent => :destroy
    validates :title, uniqueness: { scope: :user,
    message: "You already have a blog with that title!" } 
    validates :title, :content,  presence: true
end
