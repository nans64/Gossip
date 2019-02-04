FactoryBot.define do
  factory :user do
    first_name { "Jacques" }
    last_name { "Attali" }
    description{Faker::Lorem.sentence(3)}
    email { Faker::Internet.email }
    city {FactoryBot.create(:city)}


  end
end