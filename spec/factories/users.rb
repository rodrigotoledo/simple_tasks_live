FactoryBot.define do
  factory :user do
    first_name { Faker::Name.name }
    last_name { Faker::Name.name }
    email { 'faker@aassdd.com'}
    password {'aassdd'}
    password_confirmation {'aassdd'}
  end
end
