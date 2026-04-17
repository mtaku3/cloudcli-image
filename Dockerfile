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

RUN usermod -l cloudcli -d /home/cloudcli -m node && groupmod -n cloudcli node

WORKDIR /home/cloudcli

USER cloudcli

EXPOSE 3001

CMD ["cloudcli", "start", "--port", "3001"]
