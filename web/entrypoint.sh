#!/bin/sh

pg_uri="postgresql://postgres:0000@db:5432/diaries"

# make sure pg is ready to accept connections

until pg_isready -h postgres-host -p 5432 -U postgres
do
  echo "Waiting for postgres at: $pg_uri"
  sleep 2;
done

# Now able to connect to postgres