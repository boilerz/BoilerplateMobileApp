fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew install fastlane`

# Available Actions
### bump
```
fastlane bump
```
Update version number and version code

#### Example:

```fastlane bump version:minor```

#### Options

 * **`version`**: The version type. (eg: `patch`, `minor`, `major`)



----

## iOS
### ios create_app
```
fastlane ios create_app
```
Create app (not CI friendly, using 2FA)
### ios certificates
```
fastlane ios certificates
```
Fetch certificates and provisioning profiles
### ios nuke_certificates
```
fastlane ios nuke_certificates
```
Nuke certificates

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
