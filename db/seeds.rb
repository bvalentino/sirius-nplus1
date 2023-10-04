# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

countries = Country.create!([
  { name: 'Argentina' },
  { name: 'Brazil' },
  { name: 'Canada' },
  { name: 'Mexico' },
  { name: 'United States' },
])

50.times do |i|
  Author.transaction do
    author = Author.create!(name: Faker::Name.name, country: countries.sample)

    Faker::Number.between(from: 1, to: 5).times do
      author.posts.create!(
        message: Faker::Lorem.paragraph(sentence_count: 2),
        published_at: Faker::Date.between(from: 1.year.ago, to: Date.today)
      )
    end
  end
end
