# GAMEVERSE — Professional Single-Page Site

## Included
- `index.html` — complete single-page UI, React via CDN, CSS animations and JavaScript logic.
- `database/jetson-db.json` — sample JSON database payload.
- `database/schema.sql` — SQL schema for games, maps and favorites.
- `src/jetson-adapter.js` — documented Jetson database integration adapter boundary.
- `package.json` — professional React/Vite project metadata.

## About “Jetson”
No clearly identifiable, standard JavaScript database package named “Jetson” was found in current package/web references. Therefore this project uses a **JetsonDB adapter boundary** rather than falsely claiming a third-party package is installed. The SQL/JSON data layer is ready for a real backend/database connection.

## Security
The browser demo uses the Web Crypto API with AES-GCM to encrypt a local payload. This is not a replacement for server-side authentication, authorization, key management, HTTPS, database encryption-at-rest, and secure backend storage.

## Run
For the zero-install demo, open `index.html`.

For the React/Vite development workflow:
1. `npm install`
2. `npm run dev`
3. Open the local URL Vite prints.

The CDN version in `index.html` is intentionally self-contained so the site can be previewed immediately.
