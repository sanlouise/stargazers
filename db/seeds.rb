CATEGORIES = ['Planets', 'Moons', 'Galaxies', 'Nebulas', 'Star Clusters', 'Constellations', 'Stars']

CATEGORIES.each_with_index do |val, idx|
  Category.create!(name: val)
end

20.times do
  astronomer = Astronomer.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    nationality: Faker::Address.country,
    bio: Faker::Lorem.sentence(3),
    image: 'TODO: image'
  )

  astronomer.posts.create!(
    category_id: rand(1..Category.all.size),
    upload: 'TODO: upload image/video',
    city: Faker::Address.city,
    country: Faker::Address.country,
    lat: Faker::Address.latitude.to_s,
    lon: Faker::Address.longitude.to_s,
    description: Faker::Lorem.sentence(2),
    equipment_used: Faker::Lorem.sentence(2)
  )
end