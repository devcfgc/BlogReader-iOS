//
//  DCBlogPost.h
//  BlogReader
//
//  Created by carlos on 12/07/14.
//  Copyright (c) 2014 devcfgc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DCBlogPost : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *author;
@property (nonatomic, strong) NSString *thumbnail;
@property (nonatomic, strong) NSString *date;
@property (nonatomic, strong) NSURL *url;

//Designated Initializer
- (id) initWithTitle:(NSString*)title;
//Convenient Constructor
+ (id) blogPostWithTitle:(NSString *)title;

- (NSURL *) thumbnailURL;
- (NSString *) formattedDate;

@end
