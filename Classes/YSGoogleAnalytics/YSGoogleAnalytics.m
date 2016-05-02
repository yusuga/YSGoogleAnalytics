//
//  YSGoogleAnalytics.m
//  YSGoogleAnalyticsExample
//
//  Created by Yu Sugawara on 2014/01/28.
//  Copyright (c) 2014年 Yu Sugawara. All rights reserved.
//

#import "YSGoogleAnalytics.h"
#import <Google/Analytics.h>

@implementation YSGoogleAnalytics

+ (void)sendScreen:(NSString *)screen
{
    [self verifyGoogleServiceInfoPlist];
    
    NSAssert(screen.length, @"screen is required argument.");
    if (!screen.length) return;
    
#if DEBUG
    NSLog(@"DEBUG LOG: %s {\n\tscreen = %@\n}", __func__, screen);
#else
    id <GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker set:kGAIScreenName value:screen];
    [tracker send:[[GAIDictionaryBuilder createScreenView] build]];
#endif
}

+ (void)sendWithCategory:(NSString *)category
                  action:(NSString *)action
                   label:(nullable NSString *)label
                   value:(nullable NSNumber *)value
{
    [self verifyGoogleServiceInfoPlist];
    
    NSAssert(category.length && action.length, @"category and action is required argument.");
    if (!category.length || !action.length) return;
    
#if DEBUG
    NSLog(@"DEBUG LOG: %s {\n\tcategory = %@\n\taction = %@\n\tlabel = %@\n\tvalue = %@\n}", __func__, category, action, label, value);
#else
    [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:category
                                                                                        action:action
                                                                                         label:label
                                                                                         value:value] build]];
#endif
}

+ (void)verifyGoogleServiceInfoPlist
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSError *configureError;
        [[GGLContext sharedInstance] configureWithError:&configureError];
        NSAssert(!configureError, @"Error configuring Google services: %@, See: https://developers.google.com/analytics/devguides/collection/ios/v3/", configureError);
    });
}

@end
