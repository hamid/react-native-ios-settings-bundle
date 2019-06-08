
# react-native-ios-settings-bundle
Sometimes you need to set settings outside of app. in iOS, the app settings is best place to change them.


<img width="323" alt="Screen Shot 2019-06-09 at 12 46 17 AM" src="https://user-images.githubusercontent.com/1645233/59152143-79174e80-8a53-11e9-9909-bba742dd43ed.png">


### Getting started

## 1) Creating the Settings.bundle file

![image](https://user-images.githubusercontent.com/1645233/59152170-4457c700-8a54-11e9-85d5-6f06951626ad.png)

On Project navigator, expand the Settings.bundle file to see it's files. The "en.lproj" folder is used for Localized Strings, so you can localize it entirely.

## 2) Create  all the preference items.
The "Root.plist"  contains all the preference items. for more details about fields and inputs :  [here](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/UserDefaults/Preferences/Preferences.html)

![image](https://user-images.githubusercontent.com/1645233/59152233-4ec69080-8a55-11e9-9322-32f5ebd4055f.png)

The preference items is an array of dictionaries of controls. Each item has *identifier*.The identifier is the Userdefaults key that you can use inside the code to do the appropriate changes. Don’t forget to add the default values for Title. It will not appear in the settings otherwise.

> __If your app is not showing these controls in settings page, then try deleting the derived data and reinstall the app. Be patient. If you use simulator, the chances that the app doesn’t show the settings is more. It seems the simulator is still running your last iteration of your app. When you hit stop in Xcode it doesn’t stop the settings app. Click Command-Shift-HH to double-click the home button. Swipe up on the Settings app to kill the process. Start the Settings again, and settings refreshes itself.__


## 3) Install package

`$ npm install react-native-ios-settings-bundle --save`

### Mostly automatic installation

`$ react-native link react-native-ios-settings-bundle`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-ios-settings-bundle` and add `RNIosSettingsBundle.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNIosSettingsBundle.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<


## Usage
The package has one method, `get(key,callback)`.
the _key_ is as item _identifier_ in "Root.plist". After get value, the callback is called with `err` and `value`.
```javascript
import RNIosSettingsBundle from 'react-native-ios-settings-bundle';

RNIosSettingsBundle.get('key',(err,value)=>{
        if(value && !err)
          alert(value)
        else
          console.log(err);
      })
```


### todo list :
1) _set_ method
2) Multiple key retrieval 
3) Callback error with mode details 
