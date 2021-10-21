FactoryBot.define do
  factory :review do
    title { Faker::Lorem.unique.word.capitalize }
    description { Faker::Lorem.paragraphs.join }
    score { rand(1..5) }
    airline_id { Airline.pluck(:id).sample }
  end
end
