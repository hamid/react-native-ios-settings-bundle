
import { NativeModules } from 'react-native';

const { RNTestLib } = NativeModules;

export default {
    testText: (msg) => {
        console.log("ios settings",RNTestLib,NativeModules)
        RNTestLib.addEvent('Birthday Party', '4 Privet Drive, Surrey',(err,data)=>{
          alert(data);
        });
        // RNTestLib.testText(msg, (res) => {
        //     console.log("in cb")
        //     return res
        // })
    }
};
// export default RNTestLib;
