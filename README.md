# OpenClaw Personal (Railway)

## 1) Set env vars in Railway

- `OPENCLAW_CONFIG_PATH=/app/openclaw-personal/openclaw.json`
- `OPENCLAW_STATE_DIR=/app/openclaw-personal/state`
- `OPENCLAW_WORKSPACE_DIR=/app/openclaw-personal/workspace`

## 2) Edit config

Replace `__TELEGRAM_BOT_TOKEN__` in `openclaw.json` with your new Telegram bot token.

## 3) Deploy

Railway will run the `Procfile` command:

```
openclaw gateway --port $PORT --bind auto --allow-unconfigured
```

If you need webhook mode later, set a public URL and configure Telegram accordingly.

## Notes

- This is fully isolated from your media-buying assistant.
- Separate workspace + state directories.
