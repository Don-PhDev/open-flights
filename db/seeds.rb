def create_airlines
  Airline.destroy_all

  @airlines = Airline.create([
    {
      name: "Philippine Airlines",
      image_url: "https://open-flights.s3.amazonaws.com/Philippine-Airlines.png",
      slug: "philippine-airilines"
    },
    {
      name: "Cebu Pacific Airlines",
      image_url: "https://open-flights.s3.amazonaws.com/Cebu-Pacific.png",
      slug: "cebu-pacific-airilines"
    },
    {
      name: "Philippines Air Asia",
      image_url: "https://open-flights.s3.amazonaws.com/Philippines-AirAsia.png",
      slug: "philippines-air-asia"
    },
    {
      name: "SkyJet Airlines",
      image_url: "https://open-flights.s3.amazonaws.com/SkyJet-Airlines.png",
      slug: "skyjet-airlines"
    },
    {
      name: "Don Airlines",
      image_url: "https://open-flights.s3.amazonaws.com/Singapore-Airlines.png",
      slug: "don-airlines"
    },
    {
      name: "Delta Airways",
      image_url: "https://open-flights.s3.amazonaws.com/Delta.png",
      slug: "delta-airways"
    },
    {
      name: "Philippinedev Airlines",
      image_url: "https://open-flights.s3.amazonaws.com/United-Airlines.png",
      slug: "philippinedev-airlines"
    },
    {
      name: "PotchiBot Airways",
      image_url: "https://open-flights.s3.amazonaws.com/Lufthansa.png",
      slug: "potchibot-airways"
    }
  ])

  p "Created #{Airline.count} airlines"
end

def create_review
  Review.destroy_all

  reviews = Review.create([
    {
      title: "Nice airline",
      description: "Great experience",
      score: 5,
      airline: @airlines.first
    },
    {
      title: "The support system is so poor",
      description: "They cannot rebook your flight.",
      score: 2,
      airline: @airlines.first
    },
    {
      title: "Flight was well-managed",
      description: "Food was ok and each passenger was given face shield.",
      score: 5,
      airline: @airlines.second
    },
    {
      title: "Bad Airline",
      description: "I had a bad time.",
      score: 1,
      airline: @airlines.second
    },
    {
      title: "Amazing flight",
      description: "Crew was nice, food was great!",
      score: 4,
      airline: @airlines.third
    },
    {
      title: "Memorable experience",
      description: "Customer service is excellent",
      score: 5,
      airline: @airlines.fourth
    },
    {
      title: "No refunds",
      description: "It's been a year since I requested the refund!",
      score: 1,
      airline: @airlines.fourth
    },
    {
      title: "Cozy flight",
      description: "Exceptional crew!",
      score: 5,
      airline: @airlines.fifth
    },
    {
      title: "Joyful Airline",
      description: "Customer service is exceptional",
      score: 5,
      airline: @airlines.fifth
    },
    {
      title: "Professionals",
      description: "Exceptional staff, very professional",
      score: 5,
      airline: @airlines.last
    },
  ])

  p "Created #{Review.count} reviews"
end

create_airlines
create_review
