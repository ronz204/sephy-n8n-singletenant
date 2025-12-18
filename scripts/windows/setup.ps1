# Setup script for n8n single tenant project
Write-Host "Setting up environment files..." -ForegroundColor Cyan

# Copy n8n env file
if (-Not (Test-Path "services\n8n\secrets\.env")) {
  Copy-Item "services\n8n\secrets\.env.example" "services\n8n\secrets\.env"
  Write-Host "✓ Created services\n8n\secrets\.env" -ForegroundColor Green
} else {
  Write-Host "⚠ services\n8n\secrets\.env already exists, skipping..." -ForegroundColor Yellow
}

# Copy postgres env file
if (-Not (Test-Path "services\postgres\secrets\.env")) {
  Copy-Item "services\postgres\secrets\.env.example" "services\postgres\secrets\.env"
  Write-Host "✓ Created services\postgres\secrets\.env" -ForegroundColor Green
} else {
  Write-Host "⚠ services\postgres\secrets\.env already exists, skipping..." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "✓ Setup complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:"
Write-Host "1. Edit services\n8n\secrets\.env and add passwords"
Write-Host "2. Edit services\postgres\secrets\.env and add passwords"
Write-Host "3. Run: docker-compose up -d"
