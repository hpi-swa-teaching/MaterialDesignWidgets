# Material Design [![Build Status](https://travis-ci.org/hpi-swa-teaching/MaterialDesignWidgets.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/MaterialDesignWidgets) [![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/MaterialDesignWidgets/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/MaterialDesignWidgets?branch=master)

## Installation

1. Get [Squeak 5.0 or later](http://www.squeak.org)
2. Load [Metacello](https://github.com/metacello/metacello)
3. Finally, load the package with the following command:

```Smalltalk
Metacello new
  baseline: 'Material';
  repository: 'github://hpi-swa-teaching/MaterialDesignWidgets/packages';
  load.
```

### Fonts
Copy all `*.ttf` files from [this folder](https://github.com/hpi-swa-teaching/MaterialDesignWidgets/tree/master/build-support/fonts) to `/path/to/Squeak-Image/Contents/Resources/Roboto`.
> The import is only executed multiple times if something went wrong during the import.
> To manually force a new import execute `MDWidget fontsImported: false`

# Contributors
Carolin Goerke, Max Plaga, Jan Westphal, Lasse Steffen, Mats Pörschke
