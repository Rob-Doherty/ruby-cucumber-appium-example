# ruby-cucumber-appium-example
Example usage of a Ruby + Cucumber + Appium test framework

### Requirements 
```
iOS 13.0+
Xcode 13+
CocoaPods
Carthage 
Xcode command line tools
Android Studio + SDK
Appium Server/Desktop >1.16.0
Ruby 2.6.3
```
Uses [Appium's example apps](https://github.com/appium/appium/tree/master/sample-code/apps) to run. (Download at your own risk!!)

### Installation
```
bundle install
```

### Run
```
cucumber -p ios
cucumber -p android
```

## DONE:
- setup of Cucumber
- setup of Appium
    - iOS
    - Android
- basic examples
    - iOS = `cucumber -p ios`
    - Android = `cucumber -p android`
- example apps supplied by Appium 
    - https://github.com/appium/appium/tree/master/sample-code/apps
- page object pattern examples


## TODO:
- Parallelise
- Screenshots
- Image Comparison
- CircleCI integration
