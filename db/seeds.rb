Scientist.destroy_all
Mission.destroy_all
Planet.destroy_all

10.times do
    Scientist.create(name: Faker::Science.scientist, age: rand(30...95), job: Faker::Job.field)
end

20.times do 
    Mission.create(name: Faker::FunnyName.name, date: Faker::Date.in_date_period, plan: Faker::String.random )
end

40.times do
    Planet.create(name: Faker::Movies::StarWars.planet, mission_id: Mission.all.sample.id, scientist_id: Scientist.all.sample.id )
end