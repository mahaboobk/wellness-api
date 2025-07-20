#!/bin/bash
set -e

# Ensure the database is ready (you can add waiting logic if needed)
echo "Running database migrations..."
bundle exec rails db:migrate

echo "Seeding database..."
bundle exec rails db:seed

echo "Starting Rails server..."
exec bundle exec rails server -b 0.0.0.0

echo "Starting Redis server..."
exec bundle exec redis-server
