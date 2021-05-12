class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content
  attributes :user do |ob|
    "#{ob.user.username}"
  end
end
