# Rust Actix-Web Hello World (Random Fruit)

A simple Actix-web microservice written in Rust that returns random fruits and basic service information.

## API Endpoints

- `GET /`: Returns a "Hello World Random Fruit!" message.
- `GET /fruit`: Returns a random fruit name (e.g., Apple, Banana, Cherry).
- `GET /health`: Returns a 200 OK status code.
- `GET /version`: Returns the current version of the service.

## Docker Support

This project includes a multi-stage `Dockerfile` based on `debian:bookworm-slim` for a small and secure production image.

### Build the Image
```bash
docker build -t rust-fruit-service .
```

### Run the Container
```bash
docker run -p 8080:8080 rust-fruit-service
```

The service will be available at `http://localhost:8080`.

## Development

To run the project locally without Docker:

```bash
cargo run
```
