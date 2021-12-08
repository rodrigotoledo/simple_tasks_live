10.times do
  Category.create(title: Faker::Job.title)
end