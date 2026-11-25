# sercxanto/tap

Homebrew tap for [fritzvcard](https://github.com/sercxanto/fritzvcard), a tool
that converts vCard contacts to FRITZ!Box phonebook XML.

## Install on macOS or Linux

```sh
brew install sercxanto/tap/fritzvcard
fritzvcard version
```

The formula installs a prebuilt release for your platform; Go is not required.
The fully qualified name trusts only this formula. Afterwards,
`brew upgrade fritzvcard` works with the short name. See the
[fritzvcard project](https://github.com/sercxanto/fritzvcard) for usage and
direct downloads.

If you installed from the former `sercxanto/fritzvcard` tap, it keeps receiving
updates.

## Updates

The `Update fritzvcard` workflow checks daily for a new stable fritzvcard
release. It generates `Formula/fritzvcard.rb` from the release's `SHA256SUMS`,
installs and tests it on macOS and Linux (Intel and ARM), and commits it only if
every test passes. Start it by hand from the Actions tab or with:

```sh
gh workflow run update-fritzvcard.yml --repo sercxanto/homebrew-tap
```

Pass `-f tag=vX.Y.Z` to regenerate the formula for a specific release.
