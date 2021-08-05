puts "Clearing old data..."
Role.destroy_all
Audition.destroy_all

puts "Seeding roles..."

5.times do
    Role.create(character_name: Faker::Name.name)
end

puts "Seeding auditions..."
a1 = Audition.create(actor: "Jane Smith", location: "New York", phone: 1234567890, hired: true, role_id: Role.ids.sample)
a2 = Audition.create(actor: "John Doe", location: "Chicago", phone: 2344561230, hired: true, role_id: Role.ids.sample)
a3 = Audition.create(actor: "Mark Hamil", location: "Los Angeles", phone: 7659872314, hired: false, role_id: Role.ids.sample)
a4 = Audition.create(actor: "Steve Hill", location: "New York", phone: 5982540779, hired: false, role_id: Role.ids.sample)
a5 = Audition.create(actor: "Strange Person", location: "Unknown", phone: 3329891849, hired: false, role_id: Role.ids.sample)
a6 = Audition.create(actor: "Karen White", location: "Los Angeles", phone: 3759274553, hired: true, role_id: Role.ids.sample)
a7 = Audition.create(actor: "Connie Brown", location: "Miami", phone: 2887352009, hired: false, role_id: Role.ids.sample)