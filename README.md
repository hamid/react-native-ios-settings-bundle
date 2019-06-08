
# react-native-ios-settings-bundle

## Getting started

`$ npm install react-native-ios-settings-bundle --save`

### Mostly automatic installation

`$ react-native link react-native-ios-settings-bundle`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-ios-settings-bundle` and add `RNIosSettingsBundle.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNIosSettingsBundle.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNIosSettingsBundlePackage;` to the imports at the top of the file
  - Add `new RNIosSettingsBundlePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-ios-settings-bundle'
  	project(':react-native-ios-settings-bundle').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-ios-settings-bundle/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-ios-settings-bundle')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNIosSettingsBundle.sln` in `node_modules/react-native-ios-settings-bundle/windows/RNIosSettingsBundle.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Ios.Settings.Bundle.RNIosSettingsBundle;` to the usings at the top of the file
  - Add `new RNIosSettingsBundlePackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNIosSettingsBundle from 'react-native-ios-settings-bundle';

// TODO: What to do with the module?
RNIosSettingsBundle;
```
  # react-native-ios-settings-bundle
