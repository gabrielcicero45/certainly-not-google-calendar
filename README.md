# Certainly not google calendar


## Requirements

- Ruby 3.3.0
- Rails 7.1
- Docker (opcional)
- PostgreSQL

## Configuration

### 1. Clone the repo

```bash
git clone https://github.com/gabrielcicero45/certainly-not-google-calendar.git
cd certainly-not-google-calendar
```
### 2. Install Dependencies
```bash
bundle install
```
### 3. Configure Database
```bash
rails db:create
rails db:migrate
```
### Or use Docker 
```bash
docker compose build
docker compose up
```

### Testing
```bash
bundle exec rspec
```