# frozen_string_literal: true

FactoryBot.define do
  factory(:category) do
    title { Faker::Job.title }
  end
end
