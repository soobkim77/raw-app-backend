Like.destroy_all
Comment.destroy_all
Blog.destroy_all
User.destroy_all
Like.destroy_all
puts "🤖 Making Kais"

5.times do 
    User.create(username:Faker::Books::Dune.character, password:"ABC", bio:Faker::Books::Lovecraft.paragraph, img:"https://robohash.org/adfasdf/#{rand(1000) + rand(1000)}")
end

puts "✍🏻 Writing Blogs"

25.times do 
    Blog.create(title: Faker::Books::Dune.title, content: Faker::Books::Lovecraft.paragraph, user_id: User.all.sample.id, img:"https://picsum.photos/seed/#{rand(1000) + rand(1000)}/600/600" )
end

puts "📝 Making Comments"

50.times do 
Comment.create(content:Faker::Books::Dune.quote, user_id:User.all.sample.id, blog_id:Blog.all.sample.id)
end

puts "👍🏻 Generating Likes"

def c_or_b 
[Blog.all.sample.id, Comment.all.sample.id].sample
end


75.times do 
Like.create(user:User.all.sample, likeable_id:c_or_b, likeable_type: %w(Blog Comment).sample)
end


puts "🌱🌱🌱 Seeding done 🌱🌱🌱"
puts " VSCODE is Racist 🤷🏾 "
