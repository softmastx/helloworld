//
//  ViewController.h
//  helloworld
//
//  Created by Narong Aunthee on 6/10/12.
//  Copyright (c) 2012 Eurocopter thailand . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@end

@interface UIProgressHUD : NSObject
-(void) show : (BOOL) yesOrno;
-(UIProgressHUD *) initWithWindow:(UIView *) window;
-(void) setText: (NSString *) theText;
@end
