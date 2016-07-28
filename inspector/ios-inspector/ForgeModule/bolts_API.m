#import "bolts_API.h"

@implementation bolts_API

+ (void)version:(ForgeTask*)task {
    NSString *version = [[[ForgeApp sharedApp] configForPlugin:@"bolts"] objectForKey:(@"version")];
    [task success:version];
}

@end
