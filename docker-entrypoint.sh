#!/bin/bash
set -e

# Wait for PostgreSQL to be ready
until nc -z -v -w30 $DB_HOST $DB_PORT
do
  echo "Waiting for database connection..."
  sleep 1
done

# Set a dummy secret key base if not provided
export SECRET_KEY_BASE=${SECRET_KEY_BASE:-$(bundle exec rake secret)}

# Create and migrate the PostgreSQL database
bundle exec rails db:create db:migrate

# Execute the container's main process (what's set as CMD in the Dockerfile)
exec "$@"