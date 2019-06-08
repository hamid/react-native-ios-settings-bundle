
#import "RNIosSettingsBundle.h"

@implementation RNIosSettingsBundle

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(addEvent:(NSString *)name location:(NSString *)location callback:(RCTResponseSenderBlock)callback)
{

    //NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    //loginName.text = [defaults objectForKey:@"login_name"];
    RCTLogInfo(@"Pretending to create an event %@ at %@", defaults, location);

    if([defaults objectForKey:@"name_preference"] == nil)
        callback(@[[NSNull null], @"noval"]);
    else
         callback(@[[NSNull null], [defaults objectForKey:@"name_preference"]]);
}

@end
