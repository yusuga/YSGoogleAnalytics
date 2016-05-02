# YSGoogleAnalytics

GoogleAnalytics(v3) helper.


## Features

- [Send screen](https://developers.google.com/analytics/devguides/collection/ios/v3/screens)
- [Send event tracking](https://developers.google.com/analytics/devguides/collection/ios/v3/events)

## CocoaPods

	pod 'YSGoogleAnalytics', :git => 'https://github.com/yusuga/YSGoogleAnalytics'

## Setup

You will need to add the `GoogleService-Info.plist` to the project.

[Get a configuration file](https://developers.google.com/analytics/devguides/collection/ios/v3/#get-config)

## Usage

### Send screen.

```
 [YSGoogleAnalytics sendScreen:@"Home"];
```

### Send event tracking
    
```
[YSGoogleAnalytics sendWithCategory:@"UI Action"
                             action:@"Top Button Press"
                              label:nil
                              value:nil];
                                  
[YSGoogleAnalytics sendWithCategory:@"Design"
                             action:@"Font"
                              label:@"Size"
                              value:@(15)];
```

## Links

[Add Analytics to Your iOS App](https://developers.google.com/analytics/devguides/collection/ios/v3/)
