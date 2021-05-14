class User < ApplicationRecord
    has_many :comments, :dependent => :destroy
    has_many :blogs, :dependent => :destroy
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }

    def most_likes
        self.blogs.max_by{ |x| x.likes.length}
    end
    
end
