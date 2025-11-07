FROM ubuntu:20.04

WORKDIR /app

# Ensure apt update first
RUN apt-get update && \
    apt-get install -y fortune-mod cowsay && \
    rm -rf /var/lib/apt/lists/*

COPY . /app

EXPOSE 4499

CMD ["./wisecow.sh"]

