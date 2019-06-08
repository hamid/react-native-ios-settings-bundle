using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Ios.Settings.Bundle.RNIosSettingsBundle
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNIosSettingsBundleModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNIosSettingsBundleModule"/>.
        /// </summary>
        internal RNIosSettingsBundleModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNIosSettingsBundle";
            }
        }
    }
}
