declare var SettingsBundle: {
    
    get: (key: string, callback: (err: string, value: string) => void) => void;

};

export default SettingsBundle;