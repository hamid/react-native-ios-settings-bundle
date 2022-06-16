
import { NativeModules, Platform } from 'react-native';

const RCTIosSettingsBundle2 = NativeModules;
const { IosSettingsBundle } = NativeModules;

console.log("RCTIosSettingsBundle2 ...", IosSettingsBundle.getValByKey("key",(i)=>{alert(i);}))

export default {
  get: (key, callback) => {
    if (Platform.OS == 'android')
      return callback([1, 'it works only on ios!']);

    IosSettingsBundle.getValByKey(key, callback);
  }
};
