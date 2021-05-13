class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :blog_id, :created_at
  attributes :likes do |obj|
    obj.likes.size
  end
  attributes :user do |ob|
    "#{ob.user.username}"
  end
end
