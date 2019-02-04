FactoryBot.define do
  factory :private_message do
    content {Faker::Lorem.sentence(3)}
    recipient {FactoryBot.create(:user)}
    sender {FactoryBot.create(:user)}


  end
end