//
//  NKIVersionController.m
//  IntroToObjC
//
//  Created by Niranjan Kumar on 1/20/20.
//  Copyright © 2020 Nar Kumar. All rights reserved.
//

#import "NKIVersionController.h"
#import "NKIVersion.h"

@implementation NKIVersionController

- (instancetype)init {
    self = [super init]; // super.init()
    if (self) {
        
        _versions = [[NSArray alloc]init]; // empty array
        _versions = [[NSArray alloc] initWithObjects: [[NKIVersion alloc] initWithName:@"Cheetah" releaseDate:@"October 21st, 2001"]
                     ,
                     nil];
        
    }
    return self;
}

@end
