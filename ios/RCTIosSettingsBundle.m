
#import "RCTIosSettingsBundle.h"
#import <React/RCTLog.h>

@implementation RCTIosSettingsBundle

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(getValByKey:(NSString *)key  callback:(RCTResponseSenderBlock)callback)
{

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];

    if([defaults objectForKey:key] == nil)
        callback(@[ @[ @true ,@"value is empty or the key is not defined"] , [NSNull null]]);
    else
         callback(@[[NSNull null], [defaults objectForKey:key]]);
}

@end
