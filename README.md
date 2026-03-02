# homebrew-buum

Homebrew tap for [Buum](https://github.com/emreerinc/buum-app) — update Homebrew and Mac App Store apps.

## Install

```bash
brew tap emreerinc/buum
```

### 🖥️ Menu Bar App (GUI)

```bash
brew install --cask buum
```

> **First launch on a new Mac:** macOS may show a security warning because the app is not yet notarized.
> Go to **System Settings → Privacy & Security** → scroll down → click **"Open Anyway"**.
> After that, Buum runs normally without any warning.

### ⌨️ CLI Tool (Terminal)

```bash
brew install emreerinc/buum/buum-cli
```

## Uninstall

```bash
brew uninstall buum-cli          # CLI
brew uninstall --cask buum       # GUI
brew untap emreerinc/buum
```
