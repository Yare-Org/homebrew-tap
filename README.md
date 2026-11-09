# Yare Homebrew tap

```sh
brew install yare-org/tap/yare-doctor
yare-doctor --watch 60
```

[yare-doctor](https://github.com/Yare-Org/yare-doctor) is a read-only script that shows what your coding agents are running on your Mac. Read the formula and the script before you install.

## About this tap

The formula installs the script from the GitHub release of the same version and checks its sha256, so what you install is exactly the file attached to the release. `tests.yml` installs it on clean macOS runners (Apple silicon and Intel), runs `brew audit --strict --online`, `brew test` and the script's own `--selftest`, and runs weekly so a broken release shows up.

Homebrew's main repository (homebrew-core) only takes projects with a track record (GitHub stars, forks and watchers well above what a young project has), so this tap is the install path for now.
