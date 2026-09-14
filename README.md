# Quay for Omarchy

[Quay](https://github.com/lunanoir21/quickshell-quay) packaged as an
Omarchy shell plugin: a vertical, home-screen-style app launcher — pinned
apps, folders and live window previews in one rail that moves one row per
wheel notch.

This repo is a thin wrapper. All of Quay's actual behavior lives in
[`quickshell-quay`](https://github.com/lunanoir21/quickshell-quay); the
`quay/` directory here is a vendored, pinned copy of it (currently
`v1.1.1`), and `Service.qml` is the one line Omarchy's plugin loader needs
to start it.

## Install

```bash
omarchy plugin add https://github.com/lunanoir21/quay-omarchy.git --enable
```

## Configure

Right-click the rail (or run `omarchy-shell shell summon "io.github.lunanoir21.quay"`
if you've wired up a keybind) to open Quay's own settings panel — trigger
edge, reveal mode, icon size, row/column count, and more. Settings are
Quay's own (`~/.config/quickshell/quay/settings.json`), independent of
`~/.config/omarchy/shell.json`.

## Requirements

- Hyprland (window previews and fullscreen suppression use Hyprland's
  toplevel data; the rail itself works on any wlr-layer-shell compositor)
- A Nerd Font, for the rail's interface icons

## Updating the vendored copy

`quay/` is a plain copy, not a git submodule — Omarchy's marketplace clones
a single ref of this repo, and a submodule would need an extra
`--recurse-submodules` step that's outside the plugin loader's control. To
pick up a new quickshell-quay release, copy its QML files and `scripts/`
over `quay/`, bump `version` in `manifest.json`, and commit.

## License

MIT, same as upstream Quay — see [LICENSE](LICENSE).
