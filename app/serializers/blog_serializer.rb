class BlogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :img
  attributes :user do |obj|
    "#{obj.user.username}"
  end
  
end
