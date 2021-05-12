class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :user_id, :blog_id
  attributes :user do |ob|
    "#{ob.user.username}"
  end
end
