FROM debian:bullseye

WORKDIR /app

RUN apt-get update && \
    apt-get install -y bash fortune cowsay netcat-openbsd && \
    rm -rf /var/lib/apt/lists/*

# ✅ Add /usr/games to PATH (so cowsay & fortune work)
ENV PATH="/usr/games:${PATH}"

COPY . /app
RUN chmod +x /app/wisecow.sh

EXPOSE 4499
ENTRYPOINT ["/app/wisecow.sh"]

