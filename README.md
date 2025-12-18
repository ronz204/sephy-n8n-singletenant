# Sephy N8N Single Tenant

N8N project with PostgreSQL using Docker Compose.

## Launch Guide

1. **Run setup script**
   
   **Linux:**
   ```bash
   chmod +x scripts/linux/setup.sh
   ./scripts/linux/setup.sh
   ```
   
   **Windows:**
   ```powershell
   .\scripts\windows\setup.ps1
   ```

2. **Edit `.env` files and add passwords**
   - `services/n8n/secrets/.env`
   - `services/postgres/secrets/.env`

3. **Start services**
   ```bash
   docker-compose up -d
   ```

4. **Access n8n**
   - URL: http://localhost:5678
   - User: `n8n`
   - Password: configured in `.env`

