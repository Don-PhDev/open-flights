FactoryBot.define do
  factory :airline do
    name { Faker::Company.unique.name + " " + "Airlines" }
    image_url { Faker::LoremFlickr.image(
      size: "50x60",
      search_terms: ['airplanes', 'airlines'],
      match_all: true)
    }
    slug { name.parameterize }
  end
end
