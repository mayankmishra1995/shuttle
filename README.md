# README

# Shuttle – Badminton League Manager

Shuttle is a simple Ruby on Rails application to manage a badminton league.  
It allows you to manage players, record match results, and view a leaderboard
based on wins and losses.

---

## Features

- Add and remove players
- Record match results between two players
- Automatically track wins and losses
- View leaderboard ranked by number of wins

---

## Tech Stack

- Ruby 4.01
- Rails 8.1.2
- PostgreSQL
- Basic ERB views (no frontend framework)

---

## Setup Instructions

1. Clone the repository
```bash
git clone repo
cd shuttle


2. Install dependencies
bundle install


3. Setup database
rails db:create
rails db:migrate
rails db:seed


4. Start the server
rails server


Visit: http://localhost:3000
