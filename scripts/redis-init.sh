#!/bin/bash
# Redis script for initialization

# Check if the key 'FIRST_KEY' exists
if ! redis-cli EXISTS FIRST_KEY; then
    # Insert initial data
    redis-cli SET FIRST_KEY "${REDIS_FIRST_DATA}"

    echo "Data inserted successfully."
else
    echo "Key already exists. Skipping data insertion."
fi
