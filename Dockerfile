FROM openproject/community:13

ENV OPENPROJECT_SECRET_KEY_BASE=changeme
ENV DATABASE_URL=postgresql://openproject:openproject@db:5432/openproject
ENV REDIS_URL=redis://cache:6379
ENV OPENPROJECT_HTTPS=false
ENV OPENPROJECT_HOST__NAME=localhost
ENV OPENPROJECT_PORT=8080
ENV OPENPROJECT_SMTP__ENABLED=false

EXPOSE 8080

CMD ["/app/docker/prod/start"]