FactoryBot.define do
  factory(:user) do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end

  factory(:course) do
    title { 'Conquerer Rails' }
    price { 1000 }
    instructor { 'Bob Wasabi' }
  end
end
