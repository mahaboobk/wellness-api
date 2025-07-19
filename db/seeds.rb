# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Client.destroy_all

Appointment.destroy_all
Client.destroy_all
# Client.create(name: "Hussain", email: "hussain@example.com", phone: "987987987")
# Client.create(name: "Samina", email: "samina@example.com", phone: "987987987")
# Client.create(name: "Asia", email: "asia@example.com", phone: "987987987")

# Appointment.find(62).client_id == Client.find(62).id


# Create Clients
# Create Clients
clients = Client.create!([
  { name: "Mahaboob", email: "mahaboob@example.com", phone: "9876543210" },
  { name: "Aisha", email: "aisha@example.com", phone: "9123456780" },
  { name: "Farhan", email: "farhan@example.com", phone: "9988776655" }
])

# Create Appointments for each client
clients.each_with_index do |client, index|
  Appointment.create!(
    client: client,
    time: Time.current + (index + 1).days
  )
end

puts "✅ Seeded #{Client.count} clients and #{Appointment.count} appointments!"

puts "Seeded #{Client.count} clients and #{Appointment.count} appointments"