owners = 10.times do
  Owner.create(
    [
      {
        name: Faker::Name.first_name,
        surname: Faker::Name.last_name,
        age: Faker::Number.between(from: 18, to: 80)
      }
    ]
  )
end

cars = Owner.all.each do |owner|
  owner.cars.create([
    {
      brand: Car.brands.values.sample,
      engine: Car.engines.values.sample,
      transmission: Car.transmissions[:mechanical]
    },
    {
      brand: Car.brands.values.sample,
      engine: Car.engines.values.sample,
      transmission: Car.transmissions[:automatic]
    }
  ])
end