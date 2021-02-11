# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
companies = Company.create([
  { name: "Google", logo_url: "http://pngimg.com/uploads/google/google_PNG19642.png" },
  { name: "Facebook", logo_url: "http://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19764.png" },
  { name: "Amazon", logo_url: "http://pngimg.com/uploads/amazon/amazon_PNG13.png" },
  { name: "Netflix", logo_url: "http://pngimg.com/uploads/netflix/netflix_PNG27.png" },
  { name: "Apple", logo_url: "http://pngimg.com/uploads/apple_logo/apple_logo_PNG19679.png" },
  { name: "Twitter", logo_url: "http://pngimg.com/uploads/twitter/twitter_PNG95259.png" },
  { name: "Microsoft", logo_url: "http://pngimg.com/uploads/microsoft/microsoft_PNG6.png" }
])

reviews = Review.create([
  {
    title: 'Awesome company!',
    description: 'No cons.',
    rank: 5,
    company: companies.first
  },
  {
    title: 'Very bad company!',
    description: 'No career growth, cookies not tasty, coffee is terrible.',
    rank: 2,
    company: companies.first
  },
  {
    title: 'Bad company!',
    description: 'No career growth.',
    rank: 3,
    company: companies.first
  },
  {
    title: 'Good company!',
    description: 'Continuous deadlines, but coffee is tasty)',
    rank: 4,
    company: companies.first
  }
])