Like.destroy_all
Comment.destroy_all
Blog.destroy_all
User.destroy_all

puts "🤖 Making Kais"

5.times do 
    User.create(username:Faker::Books::Dune.character, password:"ABC", bio:Faker::Books::Lovecraft.paragraph, img:"https://robohash.org/adfasdf/#{rand(1000) + rand(1000)}")
end

puts "✍🏻 Writing Blogs"

20.times do 
    Blog.create(title: Faker::Books::Dune.title, content: Faker::Books::Lovecraft.paragraph, user_id: User.all.sample.id, img:"https://robohash.org/adfasdf/#{rand(1000) + rand(1000)}" )
end

puts "📝 Making Comments"

25.times do 
Comment.create(content:Faker::Books::Dune.quote, user_id:User.all.sample.id, blog_id:Blog.all.sample.id)
end

puts "🌱🌱🌱 Seeding done 🌱🌱🌱"
puts " VSCODE is Racist 🤷🏾 "
