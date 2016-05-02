//
//  YSGoogleAnalytics.h
//  YSGoogleAnalyticsExample
//
//  Created by Yu Sugawara on 2014/01/28.
//  Copyright (c) 2014年 Yu Sugawara. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  https://developers.google.com/analytics/devguides/collection/ios/v3/
 */

NS_ASSUME_NONNULL_BEGIN
@interface YSGoogleAnalytics : NSObject

/**
 *  https://developers.google.com/analytics/devguides/collection/ios/v3/screens
 */
+ (void)sendScreen:(NSString *)screen;

/**
 *  https://developers.google.com/analytics/devguides/collection/ios/v3/events
 */
+ (void)sendWithCategory:(NSString *)category
                  action:(NSString *)action
                   label:(nullable NSString *)label
                   value:(nullable NSNumber *)value;

@end
NS_ASSUME_NONNULL_END