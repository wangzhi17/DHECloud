//
//  LCInitManager.m
//  RNMediaPlayer
//
//  Created by jiangChengLong on 2018/4/19.
//
#import "LCInitManager.h"
#import "LCOpenSDKDynamic/LCOpenSDK_Utils.h"
#import "LCOpenSDKDynamic/LCOpenSDK_Api.h"
#import "LCOpenSDKDynamic/LCOpenApiClient.h"

using namespace Dahua::LCOpenApi;
@implementation LCInitManager
static NSInteger sPlayWinCount = 0;

static LCInitManager* _instance = nil;
+ (LCInitManager*)shareInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

+ (void)initOpenApi:(NSString*)addr port:(NSInteger)port key:(NSString*)key
{
    NSString* cerPath = [[NSBundle bundleForClass:[self class]] pathForResource:@"cert" ofType:@"pem"];
    [LCOpenSDK_Api shareMyInstance];
    LCOpenApiClient::getInstance()->set_safe_code([key UTF8String], [@"LCOpenSDK" UTF8String]);
    LCOpenSDK_Api* api = [[LCOpenSDK_Api shareMyInstance] initOpenApi:addr port:port CA_PATH:cerPath protoType:E_PROTO_TYPE::HTTPS];
    api = nil;
}


+ (void)addPlayWinCount {
    sPlayWinCount++;
}

+ (void)delPlayWinCount {
    sPlayWinCount--;
}

+ (void)Uninit {
    if (sPlayWinCount <= 0) {
        [LCOpenSDK_Utils destroyThreadPool];
    }
    [[LCOpenSDK_Api shareMyInstance] uninitOpenApi];
}

- (NSInteger)request:(void*)req resp:(void*)resp timeout:(NSInteger)timeout {
    return [[LCOpenSDK_Api shareMyInstance] request:req resp:resp timeout:timeout];
}
@end
