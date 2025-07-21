# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin Ajax requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://13.203.79.111:5173','http://localhost:4173'
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end
end

# This initializer configures CORS for the Rails application.
# It allows requests from "example.com" to access all resources with any headers and methods.
# This is useful for enabling cross-origin requests from a frontend application hosted on a different domain.
# The `Rack::Cors` middleware is used to handle CORS policies in the Rails application.
# You can modify the `origins` value to specify different domains as needed.
# Make sure to restart your Rails server after making changes to this file.