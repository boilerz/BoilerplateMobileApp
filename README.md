# BoilerplateMobileApp

[![GH CI Action](https://github.com/boilerz/BoilerplateMobileApp/workflows/CI/badge.svg)](https://github.com/boilerz/BoilerplateMobileApp/actions?query=workflow:CI)
[![codecov](https://codecov.io/gh/boilerz/BoilerplateMobileApp/branch/master/graph/badge.svg)](https://codecov.io/gh/boilerz/BoilerplateMobileApp)

> React native Mobile App.

### Customization

- [ ] Renaming project name and bundle identifier (android only):

```shell
npx react-native-rename <newName> -b <bundleIdentifier>
open ios/<newName>.xcworkspace // manually update the ios bundle identifier
```

- [ ] Update `secrets.*` var names on `.github/workflows/*` files

- [ ] Update this readme badges and docs

### Setup

Install dependencies, ios pods and gems (for `fastlane`):

```shell
yarn install
yarn install:pods
bundle update
```

@see [fastlane install step](./fastlane/README.md#Installation)

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
