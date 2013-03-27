Product.create!(name: "Nike T90 Futsal", price: 500000, released_at: rand(1..90).days.ago)
Product.create!(name: "Adidas f45 Futsal", price: 600000, released_at: rand(1..90).days.ago)
Product.create!(name: "Nike mercurial", price: 700000, released_at: rand(1..90).days.ago)
Product.create!(name: "League Classico", price: 350000, released_at: rand(1..90).days.ago)
Product.create!(name: "Eagle Diego", price: 250000, released_at: rand(1..90).days.ago)
Product.create!(name: "Spotec S-10 Plus", price: 200000, released_at: rand(1..90).days.ago)
Product.create!(name: "Adidas F5", price: 560000, released_at: rand(1..90).days.ago)
Product.create!(name: "Adidas Predito", price: 450000, released_at: rand(1..90).days.ago)
Product.create!(name: "Puma Tiesto", price: 340000, released_at: rand(1..90).days.ago)
Product.create!(name: "Umbro Diablo", price: 290000, released_at: rand(1..90).days.ago)
Product.create!(name: "Diadora FFV", price: 380000, released_at: rand(1..90).days.ago)
Product.create!(name: "Reebok Slash", price: 490000, released_at: rand(1..90).days.ago)
User.create!(name: "ozan", password_digest: "incognito01", site_url:"http://ozansugar.com", admin: false)
User.create!(name: "hayley", password_digest: "paramore01",site_url:"http://twitter.com/hayley", admin: true)
Order.create!(user_id: 1, total: 900000)
Order.create!(user_id: 1, total: 200000)