# Secondary Development Checklist

This project has been duplicated and rebranded for Kenny.
Core business functionality is unchanged.

## Current identity

- Project name: `Kenny-Tools`
- NPM package: `kenny-tools`
- Tauri bundle identifier: `com.kennygmail.kennytools`
- Deep-link schemes: `kenny-tools`, `kennytools`
- Rust crates:
  - package: `kenny-tools`
  - lib: `kenny_tools_lib`
- App private data dir: `.kenny_tools`
- Default local ports:
  - websocket: `29528`
  - web report: `28081`

## Placeholders you still need to replace

- GitHub repo URL placeholders:
  - `https://github.com/<your-github-username>/kenny-tools`
- Updater public key:
  - `src-tauri/tauri.conf.json` -> `plugins.updater.pubkey`
- Homebrew cask sha256 after your first release

## Recommended local run

```bash
cd "D:\\Edge Downloads\\cockpit-tools-own"
npm install
npm run typecheck
npm run tauri dev
```

## License reminder

Current upstream license is `CC-BY-NC-SA-4.0`.
You must keep attribution and comply with non-commercial/share-alike terms unless separately authorized.
