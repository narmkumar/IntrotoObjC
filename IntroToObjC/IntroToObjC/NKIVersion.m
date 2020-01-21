//
//  NKIVersion.m
//  IntroToObjC
//
//  Created by Niranjan Kumar on 1/20/20.
//  Copyright © 2020 Nar Kumar. All rights reserved.
//

#import "NKIVersion.h"

// Implementation (Code details)
// Private

@implementation NKIVersion

//init(name: String, releaseDate: String) {
//    self.name = name
//    self.releaseDate = releaseDate
//}

- (instancetype)initWithName:(NSString *)name releaseDate:(NSString *)releaseDate; {
    self = [super init];
    // if self != nil { // Swift
    if (self) {
        // Setup the object
        
        // self.name = name // Side effects in Objective-C (property setter)
        _name = name;
        _releaseDate = releaseDate;
    }
    return self;
}


@end
