FactoryBot.define do
  factory :gossip do
    title { "Truc de ouf" }
    content {Faker::Lorem.sentence(3)}
    user {FactoryBot.create(:user)}


  end
end