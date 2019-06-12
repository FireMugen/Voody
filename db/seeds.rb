User.create!(name:  "Max Reeves",
             email: "example@voody.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@voody.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now)
end

# users = User.order(:created_at).take(6)
# 5.times do
# 	ingredients = Faker::Food.ingredient
# 	users.each { |user| user.recipes.create!(ingredients: ingredients) }
# end
