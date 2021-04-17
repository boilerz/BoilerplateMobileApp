# BoilerplateMobileApp

[![GH CI Action](https://github.com/boilerz/BoilerplateMobileApp/workflows/CI/badge.svg)](https://github.com/boilerz/BoilerplateMobileApp/actions?query=workflow:CI)
[![codecov](https://codecov.io/gh/boilerz/BoilerplateMobileApp/branch/master/graph/badge.svg)](https://codecov.io/gh/boilerz/BoilerplateMobileApp)

> React native Mobile App.

### Customization

- [ ] Renaming project name and bundle identifier (android only):

```shell
npx react-native-rename <newName> -b <bundleIdentifier>
open ios/<newName>.xcworkspace // manually update the ios bundle identifier
open fastlane/.env.default     // manually rename APP_IDENTIFIER accordingly
```

- [ ] Update `secrets.*` var names on `.github/workflows/*` files

- [ ] Create `fastlane/env.secret` with the following custom keys:
  - `IOS_APP_CERTIFICATES_GIT_REPO_URL` _(where certificates and provisioning profiles are stored using `match`)_
  - `MATCH_KEYCHAIN_PASSWORD` _(keychain password, will be prompted if not provided)_
  - `IOS_TEAM_ID` _(used for `match_nuke`)_
  - `IOS_USERNAME` _(required by `produce` for ios app creation. This action cannot be performed using api key)_
  - `SPACESHIP_CONNECT_API_ISSUER_ID`
  - `SPACESHIP_CONNECT_API_KEY_ID`
  - `SPACESHIP_CONNECT_API_KEY`

- [ ] Update this readme badges and docs

_For `SPACESHIP_CONNECT_API_*` see https://appstoreconnect.apple.com/access/api_

### Setup

Install dependencies, ios pods and gems (for `fastlane`):

```shell
yarn install
yarn install:pods
bundle update
```

@see [fastlane install step](./fastlane/README.md#Installation)

Retrieve ios certificates:

```shell
yarn ios:certificates
```

@see [fastlane install step](./fastlane/README.md#ios-certificates)

### Release process

#### Versioning

Bump package, app version and build/version code numbers:

```shell
yarn bump version:[VERSION_TYPE_YARN_COMPATIBLE]
```

or one of the following shortcuts

```shell
yarn bump:[patch|minor|major]
```

@see [fastlane auto generated doc](./fastlane/README.md) for the details behind

### Fastlane shortcuts

Nuke all ios certificates:

```shell
yarn ios:certificates:nuke
```
