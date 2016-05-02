//
//  TableViewController.m
//  YSGoogleAnalyticsExample
//
//  Created by Yu Sugawara on 7/31/15.
//  Copyright (c) 2015 Yu Sugawara. All rights reserved.
//

#import "TableViewController.h"
#import "YSGoogleAnalytics.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSString *screen, *category, *action, *label;
    NSNumber *value;
    
    switch (indexPath.section) {
        case 0:
            switch (indexPath.row) {
                case 0:
                    screen = @"Home";
                    break;
                case 1:
                    screen = @"Setting";
                    break;
                default:
                    abort();
            }
            break;
        case 1:
            switch (indexPath.row) {
                case 0:
                    category = @"UI Action";
                    action = @"Top Button Press";
                    break;
                case 1:
                    category = @"UI Action";
                    action = @"Bottom Button Press";
                    break;
                default:
                    abort();
            }
            break;
        case 2:
            switch (indexPath.row) {
                case 0:
                    category = @"Design";
                    action = @"Color";
                    label = @"Red";
                    break;
                case 1:
                    category = @"Design";
                    action = @"Color";
                    label = @"Blue";
                    break;
                case 2:
                    category = @"Design";
                    action = @"Size";
                    label = @"Small";
                    break;
                case 3:
                    category = @"Design";
                    action = @"Size";
                    label = @"Normal";
                    break;
                default:
                    abort();
            }
            break;
        case 3:
            switch (indexPath.row) {
                case 0:
                    category = @"Design";
                    action = @"Size";
                    label = @"Custom";
                    value = @(10);
                    break;
                case 1:
                    category = @"Design";
                    action = @"Size";
                    label = @"Custom";
                    value = @(18);
                    break;
                default:
                    abort();
            }
            break;
        default:
            abort();
    }
    
    if (screen) {
        [YSGoogleAnalytics sendScreen:screen];
    } else {
        [YSGoogleAnalytics sendWithCategory:category
                                     action:action
                                      label:label
                                      value:value];
    }    
}

@end
