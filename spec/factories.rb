# frozen_string_literal: true

FactoryBot.define do
  factory :category do
    title { Faker::Educator.degree }
  end

  factory :task do
    category_id { create(:category).id }
    completed_at { '2021-12-01'.to_date }
    description { Faker::Lorem.paragraph }
    title { Faker::Job.title }
  end
end
