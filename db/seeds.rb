    puts "🌱 Seeding spices..."

# Seed your database here
puts "Deleting User/Game/Watchlist data..."
User.destroy_all
Game.destroy_all
Watchlist.destroy_all

puts "Creating users..."
user1 = User.create(username: "awesomeguy")

puts "Creating games..."
game1 = Game.create(title:"Kirby and the Forgotten Land", genre: "Adventure Game", release_date:"March, 25, 2022", summary: "Kirby and the Forgotten Land is an upcoming 2022 platform video game developed by HAL Laboratory and published by Nintendo for the Nintendo Switch. It will be the seventeenth mainline installment in the Kirby series, as well as the first mainline game in the series in full 3D, excluding spin-offs.", image:"https://images.nintendolife.com/1ddb829d9a730/kirby-and-the-forgotten-land-cover.cover_large.jpg", platform:"Nintendo Switch", price:59.99)
game2 = Game.create(title:"Fire Emblem Warriors: Three Hopes", genre: "Hack and Slash", release_date:"June, 24, 2022", summary: "Fire Emblem Warriors: Three Hopes is an upcoming hack and slash action role-playing game developed by Omega Force and Team Ninja, and published by Nintendo for the Nintendo Switch.", image:"https://upload.wikimedia.org/wikipedia/en/thumb/a/ad/Fire_Emblem_Warriors_Three_Hopes.jpg/220px-Fire_Emblem_Warriors_Three_Hopes.jpg", platform:"Nintendo Switch", price:59.99)

puts "✅ Done seeding!"