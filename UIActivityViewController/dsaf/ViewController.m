//
//  ViewController.m
//  dsaf
//
//  Created by 陈志超 on 2016/12/7.
//  Copyright © 2016年 huaban. All rights reserved.
//

#import "ViewController.h"
#import <Social/Social.h>
#import "ShareTool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    [self systemShare];
    
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
   [[[ShareTool alloc] init] shareWithTitle:@"分享的title" description:@"描述信息" url:@"http://www.baidu.com" image:[UIImage imageNamed:@"1"] completionHandler:^(UIActivityType  _Nullable activityType, BOOL completed) {
       NSLog(@"%@  %d", activityType, completed);
   }];

}
- (void)systemShare{
    NSMutableArray *items = [[NSMutableArray alloc] init];
    [items addObject:@"分享的title"];
    [items addObject:[UIImage imageNamed:@"1"]];
    [items addObject:@"https://www.baidu.com"];
    
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:items applicationActivities:nil];
    NSMutableArray *excludedActivityTypes =  [NSMutableArray arrayWithArray:@[UIActivityTypeAirDrop, UIActivityTypeCopyToPasteboard, UIActivityTypeAssignToContact, UIActivityTypePrint, UIActivityTypeMail, UIActivityTypePostToTencentWeibo, UIActivityTypeSaveToCameraRoll, UIActivityTypeMessage, UIActivityTypePostToTwitter]];
    activityViewController.excludedActivityTypes = excludedActivityTypes;
    
    [self presentViewController:activityViewController animated:YES completion:nil];
    
    activityViewController.completionWithItemsHandler = ^(UIActivityType __nullable activityType, BOOL completed, NSArray * __nullable returnedItems, NSError * __nullable activityError){
        NSLog(@"%@  ----   %@", activityType, returnedItems);
    };
}
@end
