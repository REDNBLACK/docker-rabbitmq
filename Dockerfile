FROM rabbitmq:management-alpine
RUN apk add --no-cache bash
COPY docker-healthcheck /usr/local/bin/
HEALTHCHECK CMD ["docker-healthcheck"]
