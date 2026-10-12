# marelevn/tap

Homebrew casks for [Soos](https://github.com/marelevn/soos), a notepad-style
calculator.

## Install

```
brew install --cask marelevn/tap/soos
```

This puts Soos in Applications and `soos-cli` on your `PATH`.

Soos isn't signed yet, so macOS would refuse to open it the first time. The
cask clears the quarantine flag after installing -- the same
`xattr` step the Soos README has you run by hand -- so it opens straight away.

## Update

```
brew upgrade --cask soos
```

Your tabs live in `~/Library/Application Support/Soos/`, not in the app, so
updating keeps them.

## Uninstall

```
brew uninstall --cask soos
```

That keeps your tabs. `brew uninstall --cask --zap soos` deletes them too.
