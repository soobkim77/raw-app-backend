class UserSerializer
  include FastJsonapi::ObjectSerializer
  has_many :blogs 
  has_many :comments 

  attributes :username, :blogs, :comments
end
