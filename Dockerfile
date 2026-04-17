FROM node:22-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    python3 \
    python3-setuptools \
    ripgrep \
    sqlite3 \
    zip \
    unzip \
    jq \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g @cloudcli-ai/cloudcli @anthropic-ai/claude-code

RUN useradd -m -u 1000 -s /bin/bash cloudcli

WORKDIR /home/cloudcli

USER cloudcli

EXPOSE 3001

CMD ["cloudcli", "start", "--port", "3001"]
