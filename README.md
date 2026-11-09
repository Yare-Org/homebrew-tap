# Yare Homebrew tap

```sh
brew install yare-org/tap/yare-doctor
yare-doctor --watch 60
```

[yare-doctor](https://github.com/Yare-Org/yare-doctor) is a read-only script that shows what your coding agents are running on your Mac. Read the formula and the script before you install.

## About this tap

The formula installs the script from the GitHub release of the same version and checks its sha256, so what you install is exactly the file attached to the release. `tests.yml` installs it on clean macOS runners (Apple silicon and Intel), runs `brew audit --strict --online`, `brew test` and the script's own `--selftest`, and runs weekly so a broken release shows up.

Homebrew's main repository (homebrew-core) only takes projects with a track record (GitHub stars, forks and watchers well above what a young project has), so this tap is the install path for now.

## Keeping it current

`bump.yml` checks the latest GitHub release of yare-doctor every six hours (and on demand). When the version or checksum changed, it updates `Formula/yare-doctor.rb`, then audits, installs and tests it on a clean macOS runner, and only then commits to `main`. It needs no secret: it runs in this repository with its own token.

## Getting into homebrew-core

Not possible yet, and not for a technical reason. Homebrew's [package acceptance policy](https://docs.brew.sh/Package-Acceptance-Policy) asks for public interest beyond the author: a GitHub repository with at least 30 forks, 30 watchers or 75 stars, and at least 90 forks, 90 watchers or 225 stars when the person submitting is the owner or a committer of the project. yare-doctor has 0 of each today.

When it does, the formula in `Formula/yare-doctor.rb` is already in the shape core wants (a versioned release URL, a sha256, a license, `livecheck`, a real test block). The steps then:

1. `brew audit --new --online --formula yare-org/tap/yare-doctor` must pass.
2. Fork `Homebrew/homebrew-core`, copy the formula to `Formula/y/yare-doctor.rb`, run `brew audit --new --strict --online yare-doctor` and `brew test yare-doctor` against the fork.
3. Open the pull request with `brew create`'s defaults and the notability evidence (stars, forks, watchers, who uses it).

Until then `brew install yare-org/tap/yare-doctor` is the install path.
