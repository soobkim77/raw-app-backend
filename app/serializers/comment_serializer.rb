class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :blog_id
  attributes :user do |ob|
    "#{ob.user.username}"
  end
end
