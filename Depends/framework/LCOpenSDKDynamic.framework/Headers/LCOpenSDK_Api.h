//
//  LCOpenSDK_Api.h
//  LCOpenSDK
//
//  Created by chenjian on 16/5/16.
//  Copyright (c) 2016年 lechange. All rights reserved.
//

#ifndef LCOpenSDK_LCOpenSDK_Api_h
#define LCOpenSDK_LCOpenSDK_Api_h
#import <Foundation/Foundation.h>

#pragma mark - 协议类型
typedef NS_ENUM(NSInteger, E_PROTO_TYPE)
{
    HTTP,
    HTTPS
};

@interface LCOpenSDK_Api: NSObject
@property (nonatomic) BOOL isAhEnable;

/**
 *  获取LCOpenSDK_Api单例
 *
 *  @return LCOpenSDK_Api单例指针
 */
+ (LCOpenSDK_Api*) shareMyInstance;

/**
 *  初始化LCOpenSDK_Api
 *
 *  @param addr   域名
 *  @param port   端口
 *  @param caPath CA证书路径
 *
 *  @return LCOpenSDK_Api指针
 */
- (id)initOpenApi:(NSString*)addr port:(NSInteger)port CA_PATH:(NSString*)caPath protoType:(E_PROTO_TYPE)type;

/**
*  设置uri的prefix
*
*  @param uriPrefix uri的前缀，起始字符均为/，如/gateway/media-paas/media/
*/
- (void)setUriPrefix:(NSString *)uriPrefix;

/**
*  设置appId & appSecret
*
*  @param appId   appId
*  @param appSecret   appSecret
*/
- (void)setAppId:(NSString *)appId appSecret:(NSString *)appSecret;

/**
 *  LCOpenSDK_Api请求返回值
 *
 *  @param req     结构化请求体
 *  @param resp    结构化返回体
 *  @param timeout 超时时长
 *
 *  @return      0, 接口调用成功
 *              -1, 接口调用失败
 */
- (NSInteger)request:(void*)req resp:(void*)resp timeout:(NSInteger)timeout;
/**
 *  反初始化LCOpenSDK_Api接口
 */
- (void)uninitOpenApi;

/**
 * 安恒初始化
 */
- (void)initAhService;

@end
#endif
