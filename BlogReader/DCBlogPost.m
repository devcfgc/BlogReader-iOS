//
//  DCBlogPost.m
//  BlogReader
//
//  Created by carlos on 12/07/14.
//  Copyright (c) 2014 devcfgc. All rights reserved.
//

#import "DCBlogPost.h"

@implementation DCBlogPost

- (id) initWithTitle:(NSString*)title {
    self = [super init];
    
    if ( self ) {
        self.title = title;
        self.author = nil;
        self.thumbnail = nil;
    }
    return self;
}

+ (id) blogPostWithTitle:(NSString *)title {
    return [[self alloc] initWithTitle:title];
}

- (NSURL *) thumbnailURL {
    NSLog(@"%@",[self.thumbnail class]);
    return [NSURL URLWithString:self.thumbnail];
}

- (NSString *) formattedDate {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //[dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZ"];
    //2014-05-12T09:07:56+01:00
    NSLog(@"tempDate: %@",self.date);

    NSDate *tempDate = [dateFormatter dateFromString:self.date];

    [dateFormatter setDateFormat:@"EE MMM,dd"];
    return [dateFormatter stringFromDate:tempDate];
    
}

@end
