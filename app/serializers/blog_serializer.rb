class BlogSerializer
  include FastJsonapi::ObjectSerializer
  has_many :comments
  attributes :title, :content, :img, :created_at
  attributes :user do |obj|
    "#{obj.user.username}"
  end
  attributes :comments do |obj|
    CommentSerializer.new(obj.comments)
  end
end
