# PolarisKit

## How to update the POD

* Add the private Mobilu repository (need to do only once)

`pod repo add mobilu https://github.com/axelline/Specs`

* Update version in `PolarisOfficeSDK.podspec`

`s.version = 'X.X.X.X'`

* Create a tag on GitHub with the same version in the podspec file

`git tag X.X.X.X && git push origin --tags`

* Update the private Mobilu repository

`pod repo push mobilu PolarisOfficeSDK.podspec --allow-warnings --verbose`
