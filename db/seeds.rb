# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Client.create(name: "Samina", email: "samina@example.com", phone: "987987987")
# Appointment.create(client_id: 1, time: Time.now + 3.days)
# Clear old data
# Appointment.destroy_all
# Client.destroy_all

# Create Clients
# client1 = Client.create!(name: "Mahaboob", email: "mahaboob@example.com", phone: "9876543210")
# client2 = Client.create!(name: "Hussain", email: "abdullah@example.com", phone: "8765432109")

# # Create Appointments
# client1.appointments.create!(time: "2025-07-15T10:00:00Z")
# client2.appointments.create!(time: "2025-07-15T10:00:00Z")

puts "Seeded #{Client.count} clients and #{Appointment.count} appointments"