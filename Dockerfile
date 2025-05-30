FROM golang:1.23 as builder

WORKDIR /app

COPY . .

FROM debian:bookworm-slim

COPY --from=builder /app/app /app/app

EXPOSE 8080

CMD [ "/app/app" ]