
import { NativeModules,Platform } from 'react-native';

const { RNIosSettingsBundle } = NativeModules;

export default {
    get: (key,callback) =>
    {
          if(Platform == 'android')
            return callback([1,'it works only on ios!']);

        RNIosSettingsBundle.getValByKey(key,callback);
    }
};
