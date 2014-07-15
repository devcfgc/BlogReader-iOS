//
//  DCWebViewController.h
//  BlogReader
//
//  Created by carlos on 14/07/14.
//  Copyright (c) 2014 devcfgc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DCWebViewController : UIViewController

@property (strong, nonatomic) NSURL *blogPostURL;
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end
