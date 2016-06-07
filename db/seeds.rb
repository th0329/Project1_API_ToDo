require 'random_data'

#Create Users

2.times do
  User.create!(
  name: RandomData.random_word,
  email: RandomData.random_sentence,
  password: "test12"
  )
end


users = User.all

2.times do
  Item.create!(
  body: RandomData.random_sentence
  )
end

items = Item.all

2.times do
  List.create!(
  name: RandomData.random_sentence,
  user: users.sample,
  item: items.sample
  )
end

lists = List.all

puts "Seed Finished"
puts "#{User.count} users created"
puts "#{Item.count} items created."
puts "#{List.count} lists created."
