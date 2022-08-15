echo 'Starting dev containers...' &&
docker compose -f address-book-api-users/docker-compose.yml up --build -d &&
docker compose -f address-book-api-contacts/docker-compose.yml up --build -d &&
docker compose -f address-book-api-gateway/docker-compose.yml up --build -d &&
docker compose -f address-book-api-docs/docker-compose.yml up --build -d &&
echo 'Dev containers started'