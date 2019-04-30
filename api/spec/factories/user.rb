FactoryBot.define do
  timestamp = FFaker::Time.between Date.today, Date.yesterday - 30
 
  factory :user do
    uid          { FFaker::Lorem.word }
    email        { FFaker::Internet.email }
    name         { FFaker::Name.name }
    nickname     { FFaker::Internet.user_name }
    password     { FFaker::Lorem.word }
  end
end