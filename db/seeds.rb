# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'generating user...'
1.times do
  User.create!(
    :email => 'joanliao0525@gmail.com',
    :password => '000000'
  )
end
puts 'done'

# TODO: 因為資料庫關聯已經建立，所以在建立 task 時一定要有 user 才能寫入資料庫，所以暫時先用 seed 產生的第一筆 User
