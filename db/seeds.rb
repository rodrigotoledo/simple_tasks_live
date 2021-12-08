# frozen_string_literal: true

10.times do
  Category.create(title: Faker::Job.title)
end
