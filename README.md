# wellness-api

```markdown
# 🗓️ Wellness Appointments API

A scalable, containerized Ruby on Rails API for managing client appointments. Built with PostgreSQL for persistence, Redis for real-time syncing, and designed to pair seamlessly with a React SPA frontend.

## 🚀 Features

- Create, update, and manage appointments via REST API
- Real-time appointment sync between users using Redis Pub/Sub
- PostgreSQL database containerized in Docker
- Environment-based configuration with `.env` support
- Lightweight Rails setup optimized for SPA architecture

## 🛠 Tech Stack

| Component     | Tech                         |
|---------------|------------------------------|
| Backend       | Ruby on Rails (API only)     |
| Database      | PostgreSQL 14 (Dockerized)   |
| Realtime Sync | Action Cables (Websocket)                |
| Frontend      | React (SPA)                  |
| DevOps        | Docker & Docker Compose      |

## 📦 Setup Instructions

1. **Clone the Repository**
   ```bash
   git clone https://github.com/your-username/wellness-api.git
   cd wellness-api
   ```

2. **Create `.env` File**
   ```bash
   cp .env.example .env
   # then edit the credentials and service names as needed
   ```

3. **Build and Start Containers**
   ```bash
   docker-compose up --build
   ```

4. **Run Database Migrations**
   ```bash
   docker-compose exec web bin/rails db:migrate
   ```

5. **Seed Sample Data**
   ```bash
   docker-compose exec web bin/rails db:seed
   ```

## 🔌 API Endpoints

All responses are JSON-based. Example routes:

```http
GET    /appointments
POST   /appointments
PUT    /appointments/:id
DELETE /appointments/:id
```

Use these from your React frontend to interact with the API.

## 🔁 Real-Time Sync

Redis is configured to broadcast appointment events. When a booking is made:
- Rails publishes to the Redis `appointments` channel
- A background subscriber relays the message via ActionCable/WebSockets
- The React app updates the UI for all users instantly

## 🤖 Development Tips

- Keep container names consistent with `.env` and `database.yml`
- Use `rails console` or Postman to test API endpoints
- Customize `db/seeds.rb` to preload demo clients and appointments
