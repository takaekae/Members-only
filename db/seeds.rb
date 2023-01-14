# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(email:"Kiyo@gmail.com", password:"kiyo123", password_confirmation:"kiyo123" )

1.times do |post|
    Post.create(title:"Onepice", description:"One Piece is a Japanese manga series written and illustrated by Eiichiro Oda. It has been serialized in Shueisha's Weekly Shōnen Jump magazine since July 22, 1997, and has been collected into 98 tankōbon volumes. The story follows the adventures of Monkey D. Luffy.",
    name:"Kiyo", published_at: Date.today, user_id: User.first.id)
end

