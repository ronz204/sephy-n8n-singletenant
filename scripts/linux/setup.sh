#!/bin/bash

# Setup script for n8n single tenant project
echo "Setting up environment files..."

# Copy n8n env file
if [ ! -f "services/n8n/secrets/.env" ]; then
  cp services/n8n/secrets/.env.example services/n8n/secrets/.env
  echo "✓ Created services/n8n/secrets/.env"
else
  echo "⚠ services/n8n/secrets/.env already exists, skipping..."
fi

# Copy postgres env file
if [ ! -f "services/postgres/secrets/.env" ]; then
  cp services/postgres/secrets/.env.example services/postgres/secrets/.env
  echo "✓ Created services/postgres/secrets/.env"
else
  echo "⚠ services/postgres/secrets/.env already exists, skipping..."
fi

echo ""
echo "✓ Setup complete!"
echo ""
echo "Next steps:"
echo "1. Edit services/n8n/secrets/.env and add passwords"
echo "2. Edit services/postgres/secrets/.env and add passwords"
echo "3. Run: docker-compose up -d"
