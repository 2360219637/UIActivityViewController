//
//  ShareTool.h
//  dsaf
//
//  Created by 陈志超 on 2016/12/7.
//  Copyright © 2016年 huaban. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ShareTool : NSObject
- (void)shareWithTitle:(NSString *)title description:(NSString *)description url:(NSString *)url image:(UIImage *)image completionHandler:(UIActivityViewControllerCompletionHandler)completionHandler;
@end
