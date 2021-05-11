class BlogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :img, :created_at
  attributes :user do |obj|
    "#{obj.user.username}"
  end
  
end
