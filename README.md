# cloudcli-image

> **Archived.** No further updates.

Docker image for [CloudCLI](https://www.npmjs.com/package/@cloudcli-ai/cloudcli) — a web UI for Claude Code.

Bundles `@cloudcli-ai/cloudcli`, `@anthropic-ai/claude-code`, and `task-master-ai` on top of `node:22-slim`, with build tools, `ripgrep`, `sqlite3`, `jq`, and `git`.

## Usage

```bash
docker run -p 3001:3001 ghcr.io/mtaku3/cloudcli:latest
```

Then open http://localhost:3001.

## Image

`ghcr.io/mtaku3/cloudcli:latest` — built daily from `main` via GitHub Actions.

## License

MIT — see [LICENSE](./LICENSE).
