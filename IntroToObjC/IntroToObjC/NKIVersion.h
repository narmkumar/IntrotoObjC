//
//  NKIVersion.h
//  IntroToObjC
//
//  Created by Niranjan Kumar on 1/20/20.
//  Copyright © 2020 Nar Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>

// Interface (Class definition)
// Public Interface

@interface NKIVersion : NSObject

// NS = Next Step
@property NSString *name;

// ObjC will generate three things for a property
// 1. Backing variabel (instance variable: _name)

// NSString *_name;

// 2. Getter Method

//- (NSString *)name;

//- (NSString *)name { // Same as above but implicitly built in
//return _name;
//}

// 3. Setter Method

//- (void)setName: (NSString *)name;

// - (void)setName: (NSString *)name { Same as above but implicitly built in
//    _name = name;
//}

@property NSString *releaseDate;

// Initializers
//init(name: String, releaseDate: String)
- (instancetype)initWithName:(NSString *)name releaseDate:(NSString *)releaseDate;

// +/- = class method / instance method // Swift: class or static
// (instancetype) = (return type) instancetype means it's returning a NKIVersion object

@end

