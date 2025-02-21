FROM odoo:18.0

# Set environment variables for PostgreSQL connection
ENV HOST=${PG_HOST}
ENV USER=${PG_USER}
ENV PASSWORD=${PG_PASSWORD}
ENV DATABASE=${PG_DB}
ENV PGPORT=${PG_PORT}
ENV PGSSLMODE=require

# Expose Odoo’s default port
EXPOSE 8069

# Start Odoo
CMD ["odoo", "--db_host=${HOST}", "--db_port=${PGPORT}", "--db_user=${USER}", "--db_password=${PASSWORD}"]

